part of '../standard.dart';

class WHOGrowthStandardsWeightForHeightData extends BaseData {
  factory WHOGrowthStandardsWeightForHeightData() => _singleton;
  WHOGrowthStandardsWeightForHeightData._(this._data);

  static final _singleton = WHOGrowthStandardsWeightForHeightData._(_parse());

  static Map<Sex, Map<num, _WHOGrowthStandardsWeightForHeightLMS>> _parse() =>
      _wfhanthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
            k1 == '1' ? Sex.male : Sex.female,
            (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                num.parse(k2),
                _WHOGrowthStandardsWeightForHeightLMS(
                  lms: lms,
                  lengthOrHeight: v2['lorh'].toString().toLowerCase() == 'l'
                      ? LengthHeightMeasurementPosition.recumbent
                      : LengthHeightMeasurementPosition.standing,
                ),
              );
            })),
      );
  final Map<Sex, Map<num, _WHOGrowthStandardsWeightForHeightLMS>> _data;
  @override
  Map<Sex, Map<num, _WHOGrowthStandardsWeightForHeightLMS>> get data => _data;

  @override
  String toString() => 'Weight For Height Data($_data)';
}

@freezed
sealed class WHOGrowthStandardsWeightForHeight extends LengthBasedResult
    with _$WHOGrowthStandardsWeightForHeight {
  //TODO(devsdocs): Test this!
  @Assert(
    'adjustedLengthHeight(measure: measure,age: age,lengthHeight: height, type: AdjustedLengthType.who,).value >= 65 && adjustedLengthHeight(measure: measure,age: age,lengthHeight: height, type: AdjustedLengthType.who,).value <= 120 && height.toCentimeter.value >= 65 && height.toCentimeter.value <= 120',
    'Please correcting measurement position based on age',
  )
  //TODO(devsdocs): Test this!
  @Assert(
    'adjustedLengthHeight(measure: measure,age: age,lengthHeight: height, type: AdjustedLengthType.who,).value >= 65 && adjustedLengthHeight(measure: measure,age: age,lengthHeight: height, type: AdjustedLengthType.who,).value <= 120',
    'Height must be in range of 65 - 120 cm',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory WHOGrowthStandardsWeightForHeight({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @Default(false) bool oedemaExist,
    required Length height,
    required Mass weight,
    required LengthHeightMeasurementPosition measure,
  }) = _WHOGrowthStandardsWeightForHeight;

  const WHOGrowthStandardsWeightForHeight._();

  factory WHOGrowthStandardsWeightForHeight.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthStandardsWeightForHeightFromJson(json);

  num get _adjustedHeight => adjustedLengthHeight(
        measure: measure,
        age: age,
        lengthHeight: height,
        type: AdjustedLengthType.who,
      ).value;

  WHOGrowthStandardsWeightForHeightData get _weightForHeightData =>
      WHOGrowthStandardsWeightForHeightData();

  Map<num, _WHOGrowthStandardsWeightForHeightLMS> get _maleData =>
      _weightForHeightData._data[Sex.male]!;
  Map<num, _WHOGrowthStandardsWeightForHeightLMS> get _femaleData =>
      _weightForHeightData._data[Sex.female]!;

  _WHOGrowthStandardsWeightForHeightLMS get _ageData => (sex == Sex.male
      ? _maleData
      : _femaleData)[_adjustedHeight.toDouble().toPrecision(1)]!;

  num get _zScore => _ageData.lms.adjustedZScore(weight.toKilogram.value);

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
  _WHOGrowthStandardsWeightForHeightLMS get lengthData => _ageData;
}

class _WHOGrowthStandardsWeightForHeightLMS extends LMSBasedResult {
  _WHOGrowthStandardsWeightForHeightLMS({
    required this.lms,
    required this.lengthOrHeight,
  });
  @override
  final LMS lms;

  final LengthHeightMeasurementPosition lengthOrHeight;

  @override
  String toString() => 'Weight For Height LMS($lms)';
}
