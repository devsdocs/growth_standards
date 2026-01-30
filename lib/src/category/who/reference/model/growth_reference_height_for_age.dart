part of '../reference.dart';

class WHOGrowthReferenceHeightForAgeData extends AgeBasedData {
  factory WHOGrowthReferenceHeightForAgeData() => _singleton;
  const WHOGrowthReferenceHeightForAgeData._(this._data);

  static final _singleton = WHOGrowthReferenceHeightForAgeData._(_parse());

  static Map<Sex, Map<int, _WHOGrowthReferenceHeightForAgeLMS>> _parse() =>
      _hfa5yo.map(
        (k1, v1) => MapEntry(
          k1 == 1 ? Sex.male : Sex.female,
          v1.map((k2, v2) {
            final lms = LMS(l: v2['l']!, m: v2['m']!, s: v2['s']!);
            return MapEntry(k2, _WHOGrowthReferenceHeightForAgeLMS(lms: lms));
          }),
        ),
      );
  final Map<Sex, Map<int, _WHOGrowthReferenceHeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _WHOGrowthReferenceHeightForAgeLMS>> get data => _data;

  @override
  String toString() => 'Height For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.months;
}

@freezed
sealed class WHOGrowthReferenceHeightForAge extends AgeBasedResult
    with _$WHOGrowthReferenceHeightForAge {
  factory WHOGrowthReferenceHeightForAge({
    required Sex sex,
    required Age age,
    required Length lengthHeight,
  }) = _WHOGrowthReferenceHeightForAge;

  const WHOGrowthReferenceHeightForAge._();
  factory WHOGrowthReferenceHeightForAge.fromJson(Map<String, dynamic> json) =>
      _$WHOGrowthReferenceHeightForAgeFromJson(json);

  @override
  WHOGrowthReferenceHeightForAgeData get contextData =>
      WHOGrowthReferenceHeightForAgeData();

  _WHOGrowthReferenceHeightForAgeLMS get _ageData =>
      contextData._data[sex]![ageAtObservationDate.ageInTotalByUnit(
        contextData.unit,
      )]!;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

  @override
  Age get ageAtObservationDate => checkAge(age, contextData: contextData);

  @override
  num zScore([Precision precision = Precision.two]) =>
      _zScore.precision(precision);

  @override
  num percentile([Precision precision = Precision.two]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _WHOGrowthReferenceHeightForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => lengthHeight.toCentimeter.value;
}

class _WHOGrowthReferenceHeightForAgeLMS extends LMSContext {
  _WHOGrowthReferenceHeightForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Height For Age LMS($lms)';
}
