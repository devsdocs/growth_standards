part of '../reference.dart';

class WHOGrowthReferenceBodyMassIndexForAgeData extends AgeBasedData {
  factory WHOGrowthReferenceBodyMassIndexForAgeData() => _singleton;
  const WHOGrowthReferenceBodyMassIndexForAgeData._(this._data);

  static final _singleton =
      WHOGrowthReferenceBodyMassIndexForAgeData._(_parse());

  static Map<Sex, Map<int, _WHOGrowthReferenceBodyMassIndexForAgeLMS>>
      _parse() => _bmi5yo.toJsonObjectAsMap.map(
            (k1, v1) => MapEntry(
              k1 == '1' ? Sex.male : Sex.female,
              (v1 as Map<String, dynamic>).map((k2, v2) {
                v2 as Map<String, dynamic>;
                final lms = LMS(
                    l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
                return MapEntry(
                  int.parse(k2),
                  _WHOGrowthReferenceBodyMassIndexForAgeLMS(
                    lms: lms,
                  ),
                );
              }),
            ),
          );

  final Map<Sex, Map<int, _WHOGrowthReferenceBodyMassIndexForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _WHOGrowthReferenceBodyMassIndexForAgeLMS>> get data =>
      _data;

  @override
  String toString() => 'Body Mass Index For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.months;
}

@freezed
sealed class WHOGrowthReferenceBodyMassIndexMeasurement
    with _$WHOGrowthReferenceBodyMassIndexMeasurement {
  factory WHOGrowthReferenceBodyMassIndexMeasurement(num value) =
      _WHOGrowthReferenceBodyMassIndexMeasurement;
  const WHOGrowthReferenceBodyMassIndexMeasurement._();

  factory WHOGrowthReferenceBodyMassIndexMeasurement.fromMeasurement(
    BodyMassIndex bodyMassIndex,
  ) =>
      WHOGrowthReferenceBodyMassIndexMeasurement(bodyMassIndex.value);

  factory WHOGrowthReferenceBodyMassIndexMeasurement.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthReferenceBodyMassIndexMeasurementFromJson(json);
}

@freezed
sealed class WHOGrowthReferenceBodyMassIndexForAge extends AgeBasedResult
    with _$WHOGrowthReferenceBodyMassIndexForAge {
  factory WHOGrowthReferenceBodyMassIndexForAge({
    required Sex sex,
    required Age age,
    required WHOGrowthReferenceBodyMassIndexMeasurement
        bodyMassIndexMeasurement,
  }) = _WHOGrowthReferenceBodyMassIndexForAge;

  const WHOGrowthReferenceBodyMassIndexForAge._();

  factory WHOGrowthReferenceBodyMassIndexForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthReferenceBodyMassIndexForAgeFromJson(json);

  @override
  WHOGrowthReferenceBodyMassIndexForAgeData get contextData =>
      WHOGrowthReferenceBodyMassIndexForAgeData();

  _WHOGrowthReferenceBodyMassIndexForAgeLMS get _ageData => contextData
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
    Precision precision = Precision.two,
  ]) =>
      _zScore.precision(precision);

  @override
  num percentile([
    Precision precision = Precision.two,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _WHOGrowthReferenceBodyMassIndexForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => bodyMassIndexMeasurement.value;
}

class _WHOGrowthReferenceBodyMassIndexForAgeLMS extends LMSContext {
  _WHOGrowthReferenceBodyMassIndexForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Body Mass Index For Age LMS($lms)';
}
