part of '../standard.dart';

class WHOGrowthStandardsBodyMassIndexForAgeData extends AgeBasedData {
  factory WHOGrowthStandardsBodyMassIndexForAgeData() => _singleton;
  const WHOGrowthStandardsBodyMassIndexForAgeData._(this._data);

  static final _singleton =
      WHOGrowthStandardsBodyMassIndexForAgeData._(_parse());

  static Map<Sex, Map<int, _WHOGrowthStandardsBodyMassIndexForAgeLMS>>
      _parse() => _bmianthro.toJsonObjectAsMap.map(
            (k1, v1) => MapEntry(
              k1 == '1' ? Sex.male : Sex.female,
              (v1 as Map<String, dynamic>).map((k2, v2) {
                v2 as Map<String, dynamic>;
                final lms = LMS(
                    l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
                return MapEntry(
                  int.parse(k2),
                  _WHOGrowthStandardsBodyMassIndexForAgeLMS(
                    lms: lms,
                    loh: v2['loh'].toString().toLowerCase() == 'l'
                        ? LengthHeightMeasurementPosition.recumbent
                        : LengthHeightMeasurementPosition.standing,
                  ),
                );
              }),
            ),
          );

  final Map<Sex, Map<int, _WHOGrowthStandardsBodyMassIndexForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _WHOGrowthStandardsBodyMassIndexForAgeLMS>> get data =>
      _data;

  @override
  String toString() => 'Body Mass Index For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

@freezed
sealed class WHOGrowthStandardsBodyMassIndexMeasurement
    with _$WHOGrowthStandardsBodyMassIndexMeasurement {
  factory WHOGrowthStandardsBodyMassIndexMeasurement(
    num value, {
    required Age age,
  }) = _WHOGrowthStandardsBodyMassIndexMeasurement;
  const WHOGrowthStandardsBodyMassIndexMeasurement._();

  factory WHOGrowthStandardsBodyMassIndexMeasurement.fromMeasurement({
    required Length lengthHeight,
    required Mass weight,
    required LengthHeightMeasurementPosition measure,
    required Age age,
  }) {
    final adjustedLength = adjustedLengthHeight(
      age: age,
      measure: measure,
      lengthHeight: lengthHeight,
      type: AdjustedLengthType.who,
    );

    final bmi = BodyMassIndex(lengthHeight: adjustedLength, weight: weight);

    return WHOGrowthStandardsBodyMassIndexMeasurement(
      bmi.value,
      age: age,
    );
  }

  factory WHOGrowthStandardsBodyMassIndexMeasurement.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthStandardsBodyMassIndexMeasurementFromJson(json);
}

@freezed
sealed class WHOGrowthStandardsBodyMassIndexForAge extends AgeBasedResult
    with _$WHOGrowthStandardsBodyMassIndexForAge {
  factory WHOGrowthStandardsBodyMassIndexForAge({
    required Sex sex,
    @Default(false) bool oedemaExist,
    @WHOGrowthStandardsBodyMassIndexMeasurementConverter()
    required WHOGrowthStandardsBodyMassIndexMeasurement
        bodyMassIndexMeasurement,
  }) = _WHOGrowthStandardsBodyMassIndexForAge;

  const WHOGrowthStandardsBodyMassIndexForAge._();

  factory WHOGrowthStandardsBodyMassIndexForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthStandardsBodyMassIndexForAgeFromJson(json);

  @override
  WHOGrowthStandardsBodyMassIndexForAgeData get contextData =>
      WHOGrowthStandardsBodyMassIndexForAgeData();

  _WHOGrowthStandardsBodyMassIndexForAgeLMS get _ageData => contextData
      ._data[sex]![ageAtObservationDate.ageInTotalByUnit(contextData.unit)]!;

  num get _zScore =>
      _ageData.lms.adjustedZScore(measurementResultInDefaultUnit);

  @override
  Age get ageAtObservationDate => checkAge(
        bodyMassIndexMeasurement.age,
        contextData: contextData,
      );

  @override
  num zScore([
    Precision precision = Precision.two,
  ]) =>
      oedemaExist ? double.nan : _zScore.precision(precision);

  @override
  num percentile([
    Precision precision = Precision.two,
  ]) =>
      oedemaExist ? double.nan : (pnorm(_zScore) * 100).precision(precision);

  @override
  _WHOGrowthStandardsBodyMassIndexForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => bodyMassIndexMeasurement.value;
}

class _WHOGrowthStandardsBodyMassIndexForAgeLMS extends LMSContext {
  _WHOGrowthStandardsBodyMassIndexForAgeLMS({
    required this.lms,
    required this.loh,
  });
  @override
  final LMS lms;
  final LengthHeightMeasurementPosition loh;

  @override
  String toString() => 'Body Mass Index For Age LMS($lms)';
}
