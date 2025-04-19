part of '../reference.dart';

class WHOGrowthReferenceHeightForAgeData extends BaseData {
  factory WHOGrowthReferenceHeightForAgeData() => _singleton;
  const WHOGrowthReferenceHeightForAgeData._(this._data);

  static final _singleton = WHOGrowthReferenceHeightForAgeData._(_parse());

  static Map<Sex, Map<int, _WHOGrowthReferenceHeightForAgeLMS>> _parse() =>
      _hfa5yo.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          (v1 as Map<String, dynamic>).map((k2, v2) {
            v2 as Map<String, dynamic>;
            final lms =
                LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
            return MapEntry(
              int.parse(k2),
              _WHOGrowthReferenceHeightForAgeLMS(
                lms: lms,
              ),
            );
          }),
        ),
      );
  final Map<Sex, Map<int, _WHOGrowthReferenceHeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _WHOGrowthReferenceHeightForAgeLMS>> get data => _data;

  @override
  String toString() => 'Height For Age Data($_data)';
}

@freezed
sealed class WHOGrowthReferenceHeightForAge extends AgeBasedResult
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

  Map<int, _WHOGrowthReferenceHeightForAgeLMS> get _maleData =>
      _lengthForAgeData._data[Sex.male]!;
  Map<int, _WHOGrowthReferenceHeightForAgeLMS> get _femaleData =>
      _lengthForAgeData._data[Sex.female]!;

  _WHOGrowthReferenceHeightForAgeLMS get _ageData => (sex == Sex.male
      ? _maleData
      : _femaleData)[ageAtObservationDate.ageInTotalMonthsByNow]!;

  num get _zScore => _ageData.lms.zScore(lengthHeight.toCentimeter.value);

  @override
  Age get ageAtObservationDate => checkObservationDate(age, observationDate);

  @override
  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  @override
  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _WHOGrowthReferenceHeightForAgeLMS get ageData => _ageData;
}

class _WHOGrowthReferenceHeightForAgeLMS extends LMSBasedResult {
  _WHOGrowthReferenceHeightForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Height For Age LMS($lms)';
}
