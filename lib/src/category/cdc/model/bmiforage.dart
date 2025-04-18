part of '../cdc.dart';

class CDCBodyMassIndexForAgeData extends BaseData {
  factory CDCBodyMassIndexForAgeData() => _singleton;
  const CDCBodyMassIndexForAgeData._(this._data);

  static final _singleton = CDCBodyMassIndexForAgeData._(_parse());

  static Map<Sex, Map<double, _CDCBodyMassIndexForAgeLMS>> _parse() =>
      cdcbmiage2022.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          (v1 as Map<String, dynamic>).map((k2, v2) {
            v2 as Map<String, dynamic>;
            final lms =
                LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
            return MapEntry(
              double.parse(k2),
              _CDCBodyMassIndexForAgeLMS(
                sigma: v2['sigma'] as double,
                lms: lms,
              ),
            );
          }),
        ),
      );

  final Map<Sex, Map<double, _CDCBodyMassIndexForAgeLMS>> _data;
  @override
  Map<Sex, Map<double, _CDCBodyMassIndexForAgeLMS>> get data => _data;

  @override
  String toString() => 'Body Mass Index For Age Data($_data)';
}

@freezed
sealed class CDCBodyMassIndexMeasurement with _$CDCBodyMassIndexMeasurement {
  factory CDCBodyMassIndexMeasurement(num value) =
      _GrowthReferenceBodyMassIndexMeasurement;
  const CDCBodyMassIndexMeasurement._();

  factory CDCBodyMassIndexMeasurement.fromMeasurement(
    BodyMassIndex bodyMassIndex,
  ) =>
      CDCBodyMassIndexMeasurement(bodyMassIndex.value);

  factory CDCBodyMassIndexMeasurement.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CDCBodyMassIndexMeasurementFromJson(json);
}

@freezed
sealed class CDCBodyMassIndexForAge extends AgeBasedResult
    with _$CDCBodyMassIndexForAge {
  @Assert(
    'age.ageInTotalMonthsByNow >= 24 && age.ageInTotalMonthsByNow < 241',
    'Age must be in range of 24 - 240 months',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrAfter(age.dateAtMonthsAfterBirth(24)) ',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory CDCBodyMassIndexForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required CDCBodyMassIndexMeasurement bodyMassIndexMeasurement,
  }) = _GrowthReferenceBodyMassIndexForAge;

  const CDCBodyMassIndexForAge._();

  factory CDCBodyMassIndexForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CDCBodyMassIndexForAgeFromJson(json);

  CDCBodyMassIndexForAgeData get _bodyMassIndexData =>
      CDCBodyMassIndexForAgeData();

  Map<double, _CDCBodyMassIndexForAgeLMS> get _maleData =>
      _bodyMassIndexData._data[Sex.male]!;
  Map<double, _CDCBodyMassIndexForAgeLMS> get _femaleData =>
      _bodyMassIndexData._data[Sex.female]!;
//TODO(devsdocs): Fix CDC age calculation
  _CDCBodyMassIndexForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)[
          ageAtObservationDate.ageInTotalMonthsByNow == 24
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
  Age get ageAtObservationDate => checkObservationDate(age, observationDate);

  @override
  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _finalZScore.precision(precision);

  @override
  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      _finalPercentile.precision(precision);

  @override
  _CDCBodyMassIndexForAgeLMS get ageData => _ageData;

  @override
  num get measurementResultInDefaultUnit => bodyMassIndexMeasurement.value;
}

class _CDCBodyMassIndexForAgeLMS extends LMSBasedResult {
  _CDCBodyMassIndexForAgeLMS({
    required this.lms,
    required this.sigma,
  });
  @override
  final LMS lms;

  final double sigma;

  @override
  String toString() => 'Body Mass Index For Age LMS($lms, $sigma)';
}
