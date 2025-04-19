part of '../standard.dart';

class WHOGrowthStandardsBodyMassIndexForAgeData extends BaseData {
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
  @Assert(
    'bodyMassIndexMeasurement.age.ageInTotalDaysByNow >= 0 && bodyMassIndexMeasurement.age.ageInTotalDaysByNow <= 1856',
    'Age must be in range of 0 - 1856 days',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(bodyMassIndexMeasurement.age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory WHOGrowthStandardsBodyMassIndexForAge({
    Date? observationDate,
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

  WHOGrowthStandardsBodyMassIndexForAgeData get _bodyMassIndexData =>
      WHOGrowthStandardsBodyMassIndexForAgeData();

  Map<int, _WHOGrowthStandardsBodyMassIndexForAgeLMS> get _maleData =>
      _bodyMassIndexData._data[Sex.male]!;
  Map<int, _WHOGrowthStandardsBodyMassIndexForAgeLMS> get _femaleData =>
      _bodyMassIndexData._data[Sex.female]!;

  _WHOGrowthStandardsBodyMassIndexForAgeLMS get _ageData => (sex == Sex.male
      ? _maleData
      : _femaleData)[ageAtObservationDate.ageInTotalDaysByNow]!;

  num get _zScore =>
      _ageData.lms.adjustedZScore(bodyMassIndexMeasurement.value);

  @override
  Age get ageAtObservationDate =>
      checkObservationDate(bodyMassIndexMeasurement.age, observationDate);

  @override
  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      oedemaExist ? double.nan : _zScore.precision(precision);

  @override
  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      oedemaExist ? double.nan : (pnorm(_zScore) * 100).precision(precision);

  @override
  _WHOGrowthStandardsBodyMassIndexForAgeLMS get ageData => _ageData;
}

class _WHOGrowthStandardsBodyMassIndexForAgeLMS extends LMSBasedResult {
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
