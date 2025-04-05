part of '../standard.dart';

class WHOGrowthStandardsWeightForLengthData {
  factory WHOGrowthStandardsWeightForLengthData() => _singleton;
  WHOGrowthStandardsWeightForLengthData._(this._data);

  static final _singleton = WHOGrowthStandardsWeightForLengthData._(_parse());

  static Map<Sex, _WHOGrowthStandardsWeightForLengthGender> _parse() =>
      _wflanthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _WHOGrowthStandardsWeightForLengthGender(
            lengthData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                num.parse(k2),
                _WHOGrowthStandardsWeightForLengthLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                  lengthOrHeight: v2['lorh'].toString().toLowerCase() == 'l'
                      ? LengthHeightMeasurementPosition.recumbent
                      : LengthHeightMeasurementPosition.standing,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _WHOGrowthStandardsWeightForLengthGender> _data;
  Map<Sex, _WHOGrowthStandardsWeightForLengthGender> get data => _data;

  @override
  String toString() => 'Weight For Length Data($_data)';
}

@freezed
sealed class WHOGrowthStandardsWeightForLength
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

  _WHOGrowthStandardsWeightForLengthGender get _maleData =>
      _weightForLengthData._data[Sex.male]!;
  _WHOGrowthStandardsWeightForLengthGender get _femaleData =>
      _weightForLengthData._data[Sex.female]!;

  _WHOGrowthStandardsWeightForLengthLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .lengthData[_adjustedLength.toDouble().toPrecision(1)]!;

  num get _zScore => _ageData.lms.adjustedZScore(weight.toKilogram.value);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      oedemaExist ? double.nan : _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      oedemaExist ? double.nan : (pnorm(_zScore) * 100).precision(precision);

  _WHOGrowthStandardsWeightForLengthLMS get lengthData => _ageData;
}

class _WHOGrowthStandardsWeightForLengthGender {
  _WHOGrowthStandardsWeightForLengthGender({required this.lengthData});

  final Map<num, _WHOGrowthStandardsWeightForLengthLMS> lengthData;
  @override
  String toString() => 'Gender Data($lengthData)';
}

class _WHOGrowthStandardsWeightForLengthLMS {
  _WHOGrowthStandardsWeightForLengthLMS({
    required this.lms,
    required this.lengthOrHeight,
    required this.standardDeviationCutOff,
    required this.percentileCutOff,
  });
  final LMS lms;
  final LengthHeightMeasurementPosition lengthOrHeight;

  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Length Data(LMS: $lms, Length/Height Measurement Position: $lengthOrHeight, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
