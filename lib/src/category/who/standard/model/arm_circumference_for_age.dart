part of '../standard.dart';

class WHOGrowthStandardsArmCircumferenceForAgeData extends AgeBasedData {
  factory WHOGrowthStandardsArmCircumferenceForAgeData() => _singleton;
  const WHOGrowthStandardsArmCircumferenceForAgeData._(this._data);

  static final _singleton =
      WHOGrowthStandardsArmCircumferenceForAgeData._(_parse());

  static Map<Sex, Map<num, _WHOGrowthStandardsArmCircumferenceForAgeLMS>>
      _parse() => _acanthro.toJsonObjectAsMap.map(
            (k1, v1) => MapEntry(
              k1 == '1' ? Sex.male : Sex.female,
              (v1 as Map<String, dynamic>).map((k2, v2) {
                v2 as Map<String, dynamic>;
                final lms = LMS(
                    l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
                return MapEntry(
                  int.parse(k2),
                  _WHOGrowthStandardsArmCircumferenceForAgeLMS(
                    lms: lms,
                  ),
                );
              }),
            ),
          );

  final Map<Sex, Map<num, _WHOGrowthStandardsArmCircumferenceForAgeLMS>> _data;

  @override
  Map<Sex, Map<num, _WHOGrowthStandardsArmCircumferenceForAgeLMS>> get data =>
      _data;

  @override
  String toString() => 'Arm Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

@freezed
sealed class WHOGrowthStandardsArmCircumferenceForAge extends AgeBasedResult
    with _$WHOGrowthStandardsArmCircumferenceForAge {
  factory WHOGrowthStandardsArmCircumferenceForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _WHOGrowthStandardsArmCircumferenceForAge;

  const WHOGrowthStandardsArmCircumferenceForAge._();

  factory WHOGrowthStandardsArmCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthStandardsArmCircumferenceForAgeFromJson(json);

  @override
  WHOGrowthStandardsArmCircumferenceForAgeData get contextData =>
      WHOGrowthStandardsArmCircumferenceForAgeData();

  _WHOGrowthStandardsArmCircumferenceForAgeLMS get _ageData => contextData
      ._data[sex]![ageAtObservationDate.ageInTotalByUnit(contextData.unit)]!;

  num get _zScore =>
      _ageData.lms.adjustedZScore(measurementResultInDefaultUnit);

  @override
  Age get ageAtObservationDate => checkAge(
        age,
        contextData: contextData,
      );

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
  _WHOGrowthStandardsArmCircumferenceForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _WHOGrowthStandardsArmCircumferenceForAgeLMS extends LMSContext {
  _WHOGrowthStandardsArmCircumferenceForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Arm Circumference For Age LMS($lms)';
}
