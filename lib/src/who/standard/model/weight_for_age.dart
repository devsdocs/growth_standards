part of '../standard.dart';

class WeightForAgeData {
  factory WeightForAgeData() => _singleton;
  WeightForAgeData._(this._data);

  static final _singleton = WeightForAgeData._(_parse());

  static Map<Sex, _WeightForAgeGender> _parse() =>
      _weianthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _WeightForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _WeightForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _WeightForAgeGender> _data;
  Map<Sex, _WeightForAgeGender> get data => _data;

  @override
  String toString() => 'Weight For Age Data($_data)';
}

@freezed
class WeightForAge with _$WeightForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856',
    'Age must be in range of 0 - 1856 days',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory WeightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @MassConverter() required Mass weight,
  }) = _WeightForAge;

  const WeightForAge._();

  factory WeightForAge.fromJson(Map<String, dynamic> json) =>
      _$WeightForAgeFromJson(json);

  WeightForAgeData get _weightForAgeData => WeightForAgeData();

  _WeightForAgeGender get _maleData => _weightForAgeData._data[Sex.male]!;
  _WeightForAgeGender get _femaleData => _weightForAgeData._data[Sex.female]!;

  _WeightForAgeLMS get _ageData => (sex == Sex.male ? _maleData : _femaleData)
      .ageData[_ageAtObservationDate.ageInTotalDaysByNow]!;

  num get _zScore => _ageData.lms.adjustedZScore(weight.toKilograms.value!);

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

class _WeightForAgeGender {
  _WeightForAgeGender({required this.ageData});

  final Map<int, _WeightForAgeLMS> ageData;
  @override
  String toString() => 'Gender Data($ageData)';
}

class _WeightForAgeLMS {
  _WeightForAgeLMS({
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
