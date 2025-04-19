part of '../standard.dart';

class WHOGrowthStandardsWeightForHeightData {
  factory WHOGrowthStandardsWeightForHeightData() => _singleton;
  WHOGrowthStandardsWeightForHeightData._(this._data);

  static final _singleton = WHOGrowthStandardsWeightForHeightData._(_parse());

  static Map<Sex, _WHOGrowthStandardsWeightForHeightGender> _parse() =>
      _wfhanthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _WHOGrowthStandardsWeightForHeightGender(
            heightData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                num.parse(k2),
                _WHOGrowthStandardsWeightForHeightLMS(
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
  final Map<Sex, _WHOGrowthStandardsWeightForHeightGender> _data;
  Map<Sex, _WHOGrowthStandardsWeightForHeightGender> get data => _data;

  @override
  String toString() => 'Weight For Height Data($_data)';
}

@freezed
sealed class WHOGrowthStandardsWeightForHeight
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

  _WHOGrowthStandardsWeightForHeightGender get _maleData =>
      _weightForHeightData._data[Sex.male]!;
  _WHOGrowthStandardsWeightForHeightGender get _femaleData =>
      _weightForHeightData._data[Sex.female]!;

  _WHOGrowthStandardsWeightForHeightLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .heightData[_adjustedHeight.toDouble().toPrecision(1)]!;

  num get _zScore => _ageData.lms.adjustedZScore(weight.toKilogram.value);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      oedemaExist ? double.nan : _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      oedemaExist ? double.nan : (pnorm(_zScore) * 100).precision(precision);

  _WHOGrowthStandardsWeightForHeightLMS get heightData => _ageData;
}

class _WHOGrowthStandardsWeightForHeightGender {
  _WHOGrowthStandardsWeightForHeightGender({required this.heightData});

  final Map<num, _WHOGrowthStandardsWeightForHeightLMS> heightData;
  @override
  String toString() => 'Gender Data($heightData)';
}

class _WHOGrowthStandardsWeightForHeightLMS extends LMSBasedResult {
  _WHOGrowthStandardsWeightForHeightLMS({
    required this.lms,
    required this.lengthOrHeight,
    required this.percentileCutOff,
    required this.standardDeviationCutOff,
  });
  @override
  final LMS lms;

  final LengthHeightMeasurementPosition lengthOrHeight;

  @override
  final ZScoreCutOff standardDeviationCutOff;

  @override
  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Height Data(LMS: $lms, Length/Height Measurement Position: $lengthOrHeight, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
