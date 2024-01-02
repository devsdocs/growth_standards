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
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                num.parse(k2),
                _WHOGrowthStandardsWeightForHeightLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                  lorh: v2['lorh'].toString().toLowerCase() == 'l'
                      ? LengthHeigthMeasurementPosition.recumbent
                      : LengthHeigthMeasurementPosition.standing,
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
class WHOGrowthStandardsWeightForHeight
    with _$WHOGrowthStandardsWeightForHeight {
  //TODO(devsdocs): Test this!
  @Assert(
    'whoAdjustedLengthHeight(measure: measure,age: age,lengthHeight: height,).value! >= 65 && whoAdjustedLengthHeight(measure: measure,age: age,lengthHeight: height,).value! <= 120 && height.toCentimeters.value! >= 65 && height.toCentimeters.value! <= 120',
    'Please correcting measurement position based on age',
  )
  //TODO(devsdocs): Test this!
  @Assert(
    'whoAdjustedLengthHeight(measure: measure,age: age,lengthHeight: height,).value! >= 65 && whoAdjustedLengthHeight(measure: measure,age: age,lengthHeight: height,).value! <= 120',
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
    @LengthConverter() required Length height,
    @MassConverter() required Mass weight,
    required LengthHeigthMeasurementPosition measure,
  }) = _WHOGrowthStandardsWeightForHeight;

  const WHOGrowthStandardsWeightForHeight._();

  factory WHOGrowthStandardsWeightForHeight.fromJson(
          Map<String, dynamic> json,) =>
      _$WHOGrowthStandardsWeightForHeightFromJson(json);

  num get _adjustedHeight => whoAdjustedLengthHeight(
        measure: measure,
        age: age,
        lengthHeight: height,
      ).value!;

  WHOGrowthStandardsWeightForHeightData get _weightForHeightData =>
      WHOGrowthStandardsWeightForHeightData();

  _WHOGrowthStandardsWeightForHeightGender get _maleData =>
      _weightForHeightData._data[Sex.male]!;
  _WHOGrowthStandardsWeightForHeightGender get _femaleData =>
      _weightForHeightData._data[Sex.female]!;

  _WHOGrowthStandardsWeightForHeightLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .heightData[_adjustedHeight.toDouble().toPrecision(1)]!;

  num get _zScore => _ageData.lms.adjustedZScore(weight.toKilograms.value!);

  // Age get _ageAtObservationDate => observationDate == null
  //     ? age
  //     : observationDate == Date.today()
  //         ? age
  //         : age.ageAtAnyPastDate(observationDate!);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);
}

class _WHOGrowthStandardsWeightForHeightGender {
  _WHOGrowthStandardsWeightForHeightGender({required this.heightData});

  final Map<num, _WHOGrowthStandardsWeightForHeightLMS> heightData;
  @override
  String toString() => 'Gender Data($heightData)';
}

class _WHOGrowthStandardsWeightForHeightLMS {
  _WHOGrowthStandardsWeightForHeightLMS({
    required this.lms,
    required this.lorh,
    required this.percentileCutOff,
    required this.standardDeviationCutOff,
  });
  final LMS lms;
  final LengthHeigthMeasurementPosition lorh;
  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Height Data(LMS: $lms, Length/Height Measurement Position: $lorh, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
