part of '../standard.dart';

class WHOGrowthStandardsWeightForAgeData extends AgeBasedData {
  factory WHOGrowthStandardsWeightForAgeData() => _singleton;
  WHOGrowthStandardsWeightForAgeData._(this._data);

  static final _singleton = WHOGrowthStandardsWeightForAgeData._(_parse());

  static Map<Sex, Map<int, _WHOGrowthStandardsWeightForAgeLMS>> _parse() =>
      _weianthro.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          (v1).map((k2, v2) {
            v2;
            final lms = LMS(
              l: v2['l'] as num,
              m: v2['m'] as num,
              s: v2['s'] as num,
            );
            return MapEntry(
              int.parse(k2),
              _WHOGrowthStandardsWeightForAgeLMS(lms: lms),
            );
          }),
        ),
      );
  final Map<Sex, Map<int, _WHOGrowthStandardsWeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _WHOGrowthStandardsWeightForAgeLMS>> get data => _data;

  @override
  String toString() => 'Weight For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

@freezed
sealed class WHOGrowthStandardsWeightForAge extends AgeBasedResult
    with _$WHOGrowthStandardsWeightForAge {
  factory WHOGrowthStandardsWeightForAge({
    required Sex sex,
    @Default(false) bool oedemaExist,
    required Age age,
    required Mass weight,
  }) = _WHOGrowthStandardsWeightForAge;

  const WHOGrowthStandardsWeightForAge._();

  factory WHOGrowthStandardsWeightForAge.fromJson(Map<String, dynamic> json) =>
      _$WHOGrowthStandardsWeightForAgeFromJson(json);

  @override
  WHOGrowthStandardsWeightForAgeData get contextData =>
      WHOGrowthStandardsWeightForAgeData();

  _WHOGrowthStandardsWeightForAgeLMS get _ageData =>
      contextData._data[sex]![ageAtObservationDate.ageInTotalByUnit(
        contextData.unit,
      )]!;

  num get _zScore =>
      _ageData.lms.adjustedZScore(measurementResultInDefaultUnit);

  @override
  Age get ageAtObservationDate => checkAge(age, contextData: contextData);

  @override
  num zScore([Precision precision = Precision.two]) =>
      oedemaExist ? double.nan : _zScore.precision(precision);

  @override
  num percentile([Precision precision = Precision.two]) =>
      oedemaExist ? double.nan : (pnorm(_zScore) * 100).precision(precision);

  @override
  _WHOGrowthStandardsWeightForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => weight.toKilogram.value;
}

class _WHOGrowthStandardsWeightForAgeLMS extends LMSContext {
  _WHOGrowthStandardsWeightForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Weight For Age LMS($lms)';
}
