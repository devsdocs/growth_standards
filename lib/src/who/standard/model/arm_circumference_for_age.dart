part of '../standard.dart';

class ArmCircumferenceForAgeData {
  factory ArmCircumferenceForAgeData() => _singleton;
  const ArmCircumferenceForAgeData._(this._data);

  static final _singleton = ArmCircumferenceForAgeData._(_parse());

  static Map<String, _ArmCircumferenceForAgeGender> _parse() =>
      (json.decode(_acanthro) as Map<String, dynamic>).map(
        (k1, v1) => MapEntry(
          k1,
          _ArmCircumferenceForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              return MapEntry(
                k2,
                _ArmCircumferenceForAgeLMS(
                  lms: (l: v2['l'], m: v2['m'], s: v2['s']),
                ),
              );
            }),
          ),
        ),
      );

  final Map<String, _ArmCircumferenceForAgeGender> _data;
}

@freezed
class ArmCircumferenceForAge with _$ArmCircumferenceForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 91 && age.ageInTotalDaysByNow <= 1856',
    'Age must be in range of 91 - 1856 days',
  )
  @Assert(
    'observationDate == null || observationDate.isBefore(Date.today()) || observationDate.isAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  @Assert(
    'observationDate == null || observationDate.isAfter(age.dateAtDaysAfterBirth(91)) ',
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
      _armCircumferenceData._data['1']!;
  _ArmCircumferenceForAgeGender get _femaleData =>
      _armCircumferenceData._data['2']!;

  _ArmCircumferenceForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[_ageAtObservationDate.ageInTotalDaysByNow.toString()]!;

  num get _zScore => adjustedZScore(
        y: measurementResult.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  Age get _ageAtObservationDate => observationDate == null
      ? age
      : observationDate == Date.today()
          ? age
          : age.ageAtAnyPastDate(observationDate!);

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(_zScore).toDouble().toPrecision(2);
}

class _ArmCircumferenceForAgeGender {
  _ArmCircumferenceForAgeGender({required this.ageData});

  final Map<String, _ArmCircumferenceForAgeLMS> ageData;
}

class _ArmCircumferenceForAgeLMS {
  _ArmCircumferenceForAgeLMS({required this.lms});
  final LMS lms;
}
