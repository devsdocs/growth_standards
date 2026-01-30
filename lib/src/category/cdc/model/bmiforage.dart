part of '../cdc.dart';

class CDCBodyMassIndexForAgeData extends AgeBasedData {
  factory CDCBodyMassIndexForAgeData() => _singleton;
  const CDCBodyMassIndexForAgeData._(this._data);

  static final _singleton = CDCBodyMassIndexForAgeData._(_parse());

  static Map<Sex, Map<double, _CDCBodyMassIndexForAgeLMS>> _parse() =>
      cdcbmiage2022.map(
        (k1, v1) => MapEntry(
          k1 == 1 ? Sex.male : Sex.female,
          v1.map((k2, v2) {
            final lms = LMS(
              l: v2['l']! as num,
              m: v2['m']! as num,
              s: v2['s']! as num,
            );
            return MapEntry(
              k2.toDouble(),
              _CDCBodyMassIndexForAgeLMS(sigma: v2['sigma']!, lms: lms),
            );
          }),
        ),
      );

  final Map<Sex, Map<double, _CDCBodyMassIndexForAgeLMS>> _data;
  @override
  Map<Sex, Map<double, _CDCBodyMassIndexForAgeLMS>> get data => _data;

  @override
  String toString() => 'Body Mass Index For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.months;
}

@freezed
sealed class CDCBodyMassIndexMeasurement with _$CDCBodyMassIndexMeasurement {
  factory CDCBodyMassIndexMeasurement(num value) =
      _GrowthReferenceBodyMassIndexMeasurement;
  const CDCBodyMassIndexMeasurement._();

  factory CDCBodyMassIndexMeasurement.fromMeasurement(
    BodyMassIndex bodyMassIndex,
  ) => CDCBodyMassIndexMeasurement(bodyMassIndex.value);

  factory CDCBodyMassIndexMeasurement.fromJson(Map<String, dynamic> json) =>
      _$CDCBodyMassIndexMeasurementFromJson(json);
}

@freezed
sealed class CDCBodyMassIndexForAge extends AgeBasedResult
    with _$CDCBodyMassIndexForAge {
  factory CDCBodyMassIndexForAge({
    required Sex sex,
    required Age age,
    required CDCBodyMassIndexMeasurement bodyMassIndexMeasurement,
  }) = _GrowthReferenceBodyMassIndexForAge;

  const CDCBodyMassIndexForAge._();

  factory CDCBodyMassIndexForAge.fromJson(Map<String, dynamic> json) =>
      _$CDCBodyMassIndexForAgeFromJson(json);

  @override
  CDCBodyMassIndexForAgeData get contextData => CDCBodyMassIndexForAgeData();

  //TODO(devsdocs): Fix CDC age calculation
  _CDCBodyMassIndexForAgeLMS get _ageData =>
      contextData._data[sex]![ageAtObservationDate.ageInTotalMonthsByNow == 24
          ? 24
          : ageAtObservationDate.ageInTotalMonthsByNow + 0.5]!;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

  num get _bmiCutAt95Percentile =>
      _ageData.lms.percentileCutOff[PercentileValue.$95]!;

  bool get _isUseSigma =>
      measurementResultInDefaultUnit > _bmiCutAt95Percentile;

  num get _finalZScore => _isUseSigma ? qnorm(_finalPercentile / 100) : _zScore;

  num get _finalPercentile => _isUseSigma
      ? 90 +
            (10 *
                pnorm(
                  (measurementResultInDefaultUnit - _bmiCutAt95Percentile) /
                      _ageData.sigma,
                ))
      : (pnorm(_zScore) * 100);

  @override
  Age get ageAtObservationDate => checkAge(age, contextData: contextData);

  @override
  num zScore([Precision precision = Precision.two]) =>
      _finalZScore.precision(precision);

  @override
  num percentile([Precision precision = Precision.two]) =>
      _finalPercentile.precision(precision);

  @override
  _CDCBodyMassIndexForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => bodyMassIndexMeasurement.value;
}

class _CDCBodyMassIndexForAgeLMS extends LMSContext {
  _CDCBodyMassIndexForAgeLMS({required this.lms, required this.sigma});
  @override
  final LMS lms;

  final double sigma;

  @override
  String toString() => 'Body Mass Index For Age LMS($lms, $sigma)';
}
