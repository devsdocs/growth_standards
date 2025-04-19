part of '../standard.dart';

class WHOGrowthStandardsTricepsSkinfoldForAgeData {
  factory WHOGrowthStandardsTricepsSkinfoldForAgeData() => _singleton;
  WHOGrowthStandardsTricepsSkinfoldForAgeData._(this._data);

  static final _singleton =
      WHOGrowthStandardsTricepsSkinfoldForAgeData._(_parse());

  static Map<Sex, _TricepsSkinfoldAgeGender> _parse() =>
      _tsanthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _TricepsSkinfoldAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _WHOGrowthStandardsTricepsSkinfoldForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _TricepsSkinfoldAgeGender> _data;
  Map<Sex, _TricepsSkinfoldAgeGender> get data => _data;

  @override
  String toString() => 'Triceps Skinfold For Age Data($_data)';
}

@freezed
sealed class WHOGrowthStandardsTricepsSkinfoldForAge
    with _$WHOGrowthStandardsTricepsSkinfoldForAge {
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
  factory WHOGrowthStandardsTricepsSkinfoldForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _WHOGrowthStandardsTricepsSkinfoldForAge;

  const WHOGrowthStandardsTricepsSkinfoldForAge._();

  factory WHOGrowthStandardsTricepsSkinfoldForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthStandardsTricepsSkinfoldForAgeFromJson(json);

  WHOGrowthStandardsTricepsSkinfoldForAgeData get _tricepsSkinfoldData =>
      WHOGrowthStandardsTricepsSkinfoldForAgeData();

  _TricepsSkinfoldAgeGender get _maleData =>
      _tricepsSkinfoldData._data[Sex.male]!;
  _TricepsSkinfoldAgeGender get _femaleData =>
      _tricepsSkinfoldData._data[Sex.female]!;

  _WHOGrowthStandardsTricepsSkinfoldForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[ageAtObservationDate.ageInTotalDaysByNow]!;

  num get _zScore =>
      _ageData.lms.adjustedZScore(measurementResult.toCentimeter.value);

  Age get ageAtObservationDate => checkObservationDate(age, observationDate);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);

  _WHOGrowthStandardsTricepsSkinfoldForAgeLMS get ageData => _ageData;
}

class _TricepsSkinfoldAgeGender {
  _TricepsSkinfoldAgeGender({required this.ageData});
  final Map<int, _WHOGrowthStandardsTricepsSkinfoldForAgeLMS> ageData;
  @override
  String toString() => 'Gender Data($ageData)';
}

class _WHOGrowthStandardsTricepsSkinfoldForAgeLMS {
  _WHOGrowthStandardsTricepsSkinfoldForAgeLMS({
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
