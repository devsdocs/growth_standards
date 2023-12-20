part of '../standard.dart';

class HeadCircumferenceForAgeData {
  factory HeadCircumferenceForAgeData() => _singleton;
  HeadCircumferenceForAgeData._(this._data);

  static final _singleton = HeadCircumferenceForAgeData._(_parse());

  static Map<String, _HeadCircumferenceForAgeGender> _parse() =>
      (json.decode(_hcanthro) as Map<String, dynamic>).map(
        (k1, v1) => MapEntry(
          k1,
          _HeadCircumferenceForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _HeadCircumferenceForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );

  final Map<String, _HeadCircumferenceForAgeGender> _data;
  Map<String, _HeadCircumferenceForAgeGender> get data => _data;

  @override
  String toString() => 'Head Circumference For Age Data($_data)';
}

@freezed
class HeadCircumferenceForAge with _$HeadCircumferenceForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856',
    'Age must be in range of 0 - 1856 days',
  )
  factory HeadCircumferenceForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @LengthConverter() required Length measurementResult,
  }) = _HeadCircumferenceForAge;

  const HeadCircumferenceForAge._();

  factory HeadCircumferenceForAge.fromJson(Map<String, dynamic> json) =>
      _$HeadCircumferenceForAgeFromJson(json);

  HeadCircumferenceForAgeData get _headCircumferenceData =>
      HeadCircumferenceForAgeData();

  _HeadCircumferenceForAgeGender get _maleData =>
      _headCircumferenceData._data['1']!;
  _HeadCircumferenceForAgeGender get _femaleData =>
      _headCircumferenceData._data['2']!;

  _HeadCircumferenceForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[_ageAtObservationDate.ageInTotalDaysByNow]!;

  num get _zScore =>
      _ageData.lms.zScore(measurementResult.toCentimeters.value!);

  Age get _ageAtObservationDate => observationDate == null
      ? age
      : observationDate == Date.today()
          ? age
          : age.ageAtAnyPastDate(observationDate!);

  num zScore([
    Precision precision = Precision.nine,
  ]) =>
      _zScore.toDouble().toPrecision(precision.value);

  num percentile([
    Precision precision = Precision.nine,
  ]) =>
      (pnorm(_zScore) * 100).toDouble().toPrecision(precision.value);
}

class _HeadCircumferenceForAgeGender {
  _HeadCircumferenceForAgeGender({required this.ageData});

  final Map<int, _HeadCircumferenceForAgeLMS> ageData;

  @override
  String toString() => 'Gender Data($ageData)';
}

class _HeadCircumferenceForAgeLMS {
  _HeadCircumferenceForAgeLMS({
    required this.lms,
    required this.percentileCutOff,
    required this.standardDeviationCutOff,
  });
  final LMS lms;

  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Age Data(LMS: $lms, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
