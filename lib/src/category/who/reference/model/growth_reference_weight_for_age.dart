part of '../reference.dart';

class WHOGrowthReferenceWeightForAgeData extends AgeBasedData {
  factory WHOGrowthReferenceWeightForAgeData() => _singleton;
  const WHOGrowthReferenceWeightForAgeData._(this._data);

  static final _singleton = WHOGrowthReferenceWeightForAgeData._(_parse());

  static Map<Sex, Map<int, _WHOGrowthReferenceWeightForAgeLMS>> _parse() =>
      _wfa5yo.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          (v1 as Map<String, dynamic>).map((k2, v2) {
            v2 as Map<String, dynamic>;
            final lms = LMS(
              l: v2['l'] as num,
              m: v2['m'] as num,
              s: v2['s'] as num,
            );
            return MapEntry(
              int.parse(k2),
              _WHOGrowthReferenceWeightForAgeLMS(lms: lms),
            );
          }),
        ),
      );
  final Map<Sex, Map<int, _WHOGrowthReferenceWeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _WHOGrowthReferenceWeightForAgeLMS>> get data => _data;

  @override
  String toString() => 'Weight For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.months;
}

@freezed
sealed class WHOGrowthReferenceWeightForAge extends AgeBasedResult
    with _$WHOGrowthReferenceWeightForAge {
  factory WHOGrowthReferenceWeightForAge({
    required Sex sex,
    required Age age,
    required Mass weight,
  }) = _WHOGrowthReferenceWeightForAge;

  const WHOGrowthReferenceWeightForAge._();

  factory WHOGrowthReferenceWeightForAge.fromJson(Map<String, dynamic> json) =>
      _$WHOGrowthReferenceWeightForAgeFromJson(json);

  @override
  WHOGrowthReferenceWeightForAgeData get contextData =>
      WHOGrowthReferenceWeightForAgeData();

  _WHOGrowthReferenceWeightForAgeLMS get _ageData =>
      contextData._data[sex]![ageAtObservationDate.ageInTotalByUnit(
        contextData.unit,
      )]!;

  num get _zScore =>
      _ageData.lms.adjustedZScore(measurementResultInDefaultUnit);

  @override
  Age get ageAtObservationDate => checkAge(age, contextData: contextData);

  @override
  num zScore([Precision precision = Precision.two]) =>
      _zScore.precision(precision);

  @override
  num percentile([Precision precision = Precision.two]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _WHOGrowthReferenceWeightForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => weight.toKilogram.value;
}

class _WHOGrowthReferenceWeightForAgeLMS extends LMSContext {
  _WHOGrowthReferenceWeightForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Weight For Age LMS($lms)';
}
