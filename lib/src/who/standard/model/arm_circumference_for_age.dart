part of '../standard.dart';

class ArmCircumferenceForAgeData {
  factory ArmCircumferenceForAgeData() => _singleton;
  const ArmCircumferenceForAgeData._(this._data);

  static final _singleton = ArmCircumferenceForAgeData._(_parse());

  static Map<Sex, _ArmCircumferenceForAgeGender> _parse() =>
      _acanthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _ArmCircumferenceForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _ArmCircumferenceForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );

  final Map<Sex, _ArmCircumferenceForAgeGender> _data;

  Map<Sex, _ArmCircumferenceForAgeGender> get data => _data;

  @override
  String toString() => 'Arm Circumference For Age Data($_data)';
}

@freezed
class ArmCircumferenceForAge with _$ArmCircumferenceForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 91 && age.ageInTotalDaysByNow <= 1856',
    'Age must be in range of 91 - 1856 days',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrAfter(age.dateAtDaysAfterBirth(91)) ',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory ArmCircumferenceForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @LengthConverter() required Length measurementResult,
  }) = _ArmCircumferenceForAge;

  const ArmCircumferenceForAge._();

  factory ArmCircumferenceForAge.fromJson(Map<String, dynamic> json) =>
      _$ArmCircumferenceForAgeFromJson(json);

  ArmCircumferenceForAgeData get _armCircumferenceData =>
      ArmCircumferenceForAgeData();

  _ArmCircumferenceForAgeGender get _maleData =>
      _armCircumferenceData._data[Sex.male]!;
  _ArmCircumferenceForAgeGender get _femaleData =>
      _armCircumferenceData._data[Sex.female]!;

  _ArmCircumferenceForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[_ageAtObservationDate.ageInTotalDaysByNow]!;

  num get _zScore => _ageData.lms.adjustedZScore(measurementResult.value!);

  Age get _ageAtObservationDate => observationDate == null
      ? age
      : observationDate == Date.today()
          ? age
          : age.ageAtPastDate(observationDate!);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);
}

class _ArmCircumferenceForAgeGender {
  _ArmCircumferenceForAgeGender({required this.ageData});

  final Map<int, _ArmCircumferenceForAgeLMS> ageData;

  @override
  String toString() => 'Gender Data($ageData)';
}

class _ArmCircumferenceForAgeLMS {
  _ArmCircumferenceForAgeLMS({
    required this.lms,
    required this.standardDeviationCutOff,
    required this.percentileCutOff,
  });
  final LMS lms;

  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Age Data(LMS: $lms, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
