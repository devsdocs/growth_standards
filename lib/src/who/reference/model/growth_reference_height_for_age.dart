part of '../reference.dart';

class WHOGrowthReferenceHeightForAgeData {
  factory WHOGrowthReferenceHeightForAgeData() => _singleton;
  const WHOGrowthReferenceHeightForAgeData._(this._data);

  static final _singleton = WHOGrowthReferenceHeightForAgeData._(_parse());

  static Map<Sex, _WHOGrowthReferenceHeightForAgeGender> _parse() =>
      _hfa5yo.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _WHOGrowthReferenceHeightForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _WHOGrowthReferenceHeightForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _WHOGrowthReferenceHeightForAgeGender> _data;
  Map<Sex, _WHOGrowthReferenceHeightForAgeGender> get data => _data;

  @override
  String toString() => 'Height For Age Data($_data)';
}

@freezed
sealed class WHOGrowthReferenceHeightForAge
    with _$WHOGrowthReferenceHeightForAge {
  @Assert(
    'age.ageInTotalMonthsByNow >= 61 && age.ageInTotalMonthsByNow <= 228',
    'Age must be in range of 61 - 228 months',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrAfter(age.dateAtMonthsAfterBirth(61)) ',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory WHOGrowthReferenceHeightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length lengthHeight,
  }) = _WHOGrowthReferenceHeightForAge;

  const WHOGrowthReferenceHeightForAge._();
  factory WHOGrowthReferenceHeightForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthReferenceHeightForAgeFromJson(json);

  WHOGrowthReferenceHeightForAgeData get _lengthForAgeData =>
      WHOGrowthReferenceHeightForAgeData();

  _WHOGrowthReferenceHeightForAgeGender get _maleData =>
      _lengthForAgeData._data[Sex.male]!;
  _WHOGrowthReferenceHeightForAgeGender get _femaleData =>
      _lengthForAgeData._data[Sex.female]!;

  _WHOGrowthReferenceHeightForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[ageAtObservationDate.ageInTotalMonthsByNow]!;

  num get _zScore => _ageData.lms.zScore(lengthHeight.toCentimeter.value);

  Age get ageAtObservationDate => checkObservationDate(age, observationDate);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);

  _WHOGrowthReferenceHeightForAgeLMS get ageData => _ageData;
}

class _WHOGrowthReferenceHeightForAgeGender {
  _WHOGrowthReferenceHeightForAgeGender({required this.ageData});
  final Map<int, _WHOGrowthReferenceHeightForAgeLMS> ageData;

  @override
  String toString() => 'Gender Data($ageData)';
}

class _WHOGrowthReferenceHeightForAgeLMS extends LMSBasedResult {
  _WHOGrowthReferenceHeightForAgeLMS({
    required this.lms,
    required this.percentileCutOff,
    required this.standardDeviationCutOff,
  });
  @override
  final LMS lms;

  @override
  final ZScoreCutOff standardDeviationCutOff;

  @override
  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Age Data(LMS: $lms, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
