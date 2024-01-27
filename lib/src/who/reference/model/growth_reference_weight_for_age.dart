part of '../reference.dart';

class WHOGrowthReferenceWeightForAgeData {
  factory WHOGrowthReferenceWeightForAgeData() => _singleton;
  const WHOGrowthReferenceWeightForAgeData._(this._data);

  static final _singleton = WHOGrowthReferenceWeightForAgeData._(_parse());

  static Map<Sex, _WHOGrowthReferenceWeightForAgeGender> _parse() =>
      _wfa5yo.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _WHOGrowthReferenceWeightForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _WHOGrowthReferenceWeightForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _WHOGrowthReferenceWeightForAgeGender> _data;
  Map<Sex, _WHOGrowthReferenceWeightForAgeGender> get data => _data;

  @override
  String toString() => 'Weight For Age Data($_data)';
}

@freezed
class WHOGrowthReferenceWeightForAge with _$WHOGrowthReferenceWeightForAge {
  @Assert(
    'age.ageInTotalMonthsByNow >= 61 && age.ageInTotalMonthsByNow <= 120',
    'Age must be in range of 61 - 120 months',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrAfter(age.dateAtMonthsAfterBirth(61)) ',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory WHOGrowthReferenceWeightForAge({
    @DateConverter() Date? observationDate,
    required Sex sex,
    @AgeConverter() required Age age,
    @MassConverter() required Mass weight,
  }) = _WHOGrowthReferenceWeightForAge;

  const WHOGrowthReferenceWeightForAge._();

  factory WHOGrowthReferenceWeightForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthReferenceWeightForAgeFromJson(json);

  WHOGrowthReferenceWeightForAgeData get _weightForAgeData =>
      WHOGrowthReferenceWeightForAgeData();

  _WHOGrowthReferenceWeightForAgeGender get _maleData =>
      _weightForAgeData._data[Sex.male]!;
  _WHOGrowthReferenceWeightForAgeGender get _femaleData =>
      _weightForAgeData._data[Sex.female]!;

  _WHOGrowthReferenceWeightForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[_ageAtObservationDate.ageInTotalMonthsByNow]!;

  num get _zScore => _ageData.lms.adjustedZScore(weight.toKilograms.value);

  Age get _ageAtObservationDate => checkObservationDate(age, observationDate);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);
}

class _WHOGrowthReferenceWeightForAgeGender {
  _WHOGrowthReferenceWeightForAgeGender({required this.ageData});

  final Map<int, _WHOGrowthReferenceWeightForAgeLMS> ageData;
  @override
  String toString() => 'Gender Data($ageData)';
}

class _WHOGrowthReferenceWeightForAgeLMS {
  _WHOGrowthReferenceWeightForAgeLMS({
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
