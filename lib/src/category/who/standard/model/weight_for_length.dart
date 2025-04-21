part of '../standard.dart';

class WHOGrowthStandardsWeightForLengthData extends BaseData {
  factory WHOGrowthStandardsWeightForLengthData() => _singleton;
  WHOGrowthStandardsWeightForLengthData._(this._data);

  static final _singleton = WHOGrowthStandardsWeightForLengthData._(_parse());

  static Map<Sex, Map<num, _WHOGrowthStandardsWeightForLengthLMS>> _parse() =>
      _wflanthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
            k1 == '1' ? Sex.male : Sex.female,
            (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                num.parse(k2),
                _WHOGrowthStandardsWeightForLengthLMS(
                  lms: lms,
                  lengthOrHeight: v2['lorh'].toString().toLowerCase() == 'l'
                      ? LengthHeightMeasurementPosition.recumbent
                      : LengthHeightMeasurementPosition.standing,
                ),
              );
            })),
      );
  final Map<Sex, Map<num, _WHOGrowthStandardsWeightForLengthLMS>> _data;
  @override
  Map<Sex, Map<num, _WHOGrowthStandardsWeightForLengthLMS>> get data => _data;

  @override
  String toString() => 'Weight For Length Data($_data)';
}

@freezed
sealed class WHOGrowthStandardsWeightForLength extends LengthBasedResult
    with _$WHOGrowthStandardsWeightForLength {
  //TODO(devsdocs): Test this!
  @Assert(
    'adjustedLengthHeight(measure: measure,age: age,lengthHeight: length, type: AdjustedLengthType.who).value >= 45 && adjustedLengthHeight(measure: measure,age: age,lengthHeight: length, type: AdjustedLengthType.who).value <= 110 && length.toCentimeter.value >= 45 && length.toCentimeter.value <= 110',
    'Please correcting measurement position based on age',
  )
  //TODO(devsdocs): Test this!
  @Assert(
    'adjustedLengthHeight(measure: measure,age: age,lengthHeight: length, type: AdjustedLengthType.who).value >= 45 && adjustedLengthHeight(measure: measure,age: age,lengthHeight: length, type: AdjustedLengthType.who).value <= 110',
    'Length must be in range of 45 - 110 cm',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory WHOGrowthStandardsWeightForLength({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @Default(false) bool oedemaExist,
    required Length length,
    required Mass weight,
    required LengthHeightMeasurementPosition measure,
  }) = _WHOGrowthStandardsWeightForLength;

  const WHOGrowthStandardsWeightForLength._();

  factory WHOGrowthStandardsWeightForLength.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthStandardsWeightForLengthFromJson(json);

  num get _adjustedLength => adjustedLengthHeight(
        measure: measure,
        age: age,
        lengthHeight: length,
        type: AdjustedLengthType.who,
      ).value;

  WHOGrowthStandardsWeightForLengthData get _weightForLengthData =>
      WHOGrowthStandardsWeightForLengthData();

  Map<num, _WHOGrowthStandardsWeightForLengthLMS> get _maleData =>
      _weightForLengthData._data[Sex.male]!;
  Map<num, _WHOGrowthStandardsWeightForLengthLMS> get _femaleData =>
      _weightForLengthData._data[Sex.female]!;

  _WHOGrowthStandardsWeightForLengthLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)[_length]!;

  @override
  Length get lengthAtObservationDate => Length$Centimeter(_length);

  num get _length => _adjustedLength.toDouble().toPrecision(1);

  num get _zScore =>
      _ageData.lms.adjustedZScore(measurementResultInDefaultUnit);

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
  _WHOGrowthStandardsWeightForLengthLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => weight.toKilogram.value;
}

class _WHOGrowthStandardsWeightForLengthLMS extends LMSBasedResult {
  _WHOGrowthStandardsWeightForLengthLMS({
    required this.lms,
    required this.lengthOrHeight,
  });
  @override
  final LMS lms;

  final LengthHeightMeasurementPosition lengthOrHeight;

  @override
  String toString() => 'Weight For Length LMS($lms)';
}
