part of '../standard.dart';

class WHOGrowthStandardsWeigthForLengthData {
  factory WHOGrowthStandardsWeigthForLengthData() => _singleton;
  WHOGrowthStandardsWeigthForLengthData._(this._data);

  static final _singleton = WHOGrowthStandardsWeigthForLengthData._(_parse());

  static Map<Sex, _WHOGrowthStandardsWeigthForLengthGender> _parse() =>
      _wflanthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _WHOGrowthStandardsWeigthForLengthGender(
            lengthData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                num.parse(k2),
                _WHOGrowthStandardsWeigthForLengthLMS(
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
  final Map<Sex, _WHOGrowthStandardsWeigthForLengthGender> _data;
  Map<Sex, _WHOGrowthStandardsWeigthForLengthGender> get data => _data;

  @override
  String toString() => 'Weight For Length Data($_data)';
}

@freezed
class WHOGrowthStandardsWeigthForLength
    with _$WHOGrowthStandardsWeigthForLength {
  //TODO(devsdocs): Test this!
  @Assert(
    'adjustedLengthHeight(measure: measure,age: age,lengthHeight: length, type: AdjustedLengthType.who).value! >= 45 && adjustedLengthHeight(measure: measure,age: age,lengthHeight: length, type: AdjustedLengthType.who).value! <= 110 && length.toCentimeters.value! >= 45 && length.toCentimeters.value! <= 110',
    'Please correcting measurement position based on age',
  )
  //TODO(devsdocs): Test this!
  @Assert(
    'adjustedLengthHeight(measure: measure,age: age,lengthHeight: length, type: AdjustedLengthType.who).value! >= 45 && adjustedLengthHeight(measure: measure,age: age,lengthHeight: length, type: AdjustedLengthType.who).value! <= 110',
    'Length must be in range of 45 - 110 cm',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory WHOGrowthStandardsWeigthForLength({
    @DateConverter() Date? observationDate,
    required Sex sex,
    @AgeConverter() required Age age,
    @LengthConverter() required Length length,
    @MassConverter() required Mass weight,
    required LengthHeigthMeasurementPosition measure,
  }) = _WHOGrowthStandardsWeigthForLength;

  const WHOGrowthStandardsWeigthForLength._();

  factory WHOGrowthStandardsWeigthForLength.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthStandardsWeigthForLengthFromJson(json);

  num get _adjustedLength => adjustedLengthHeight(
        measure: measure,
        age: age,
        lengthHeight: length,
        type: AdjustedLengthType.who,
      ).value!;

  WHOGrowthStandardsWeigthForLengthData get _weigthForLengthData =>
      WHOGrowthStandardsWeigthForLengthData();

  _WHOGrowthStandardsWeigthForLengthGender get _maleData =>
      _weigthForLengthData._data[Sex.male]!;
  _WHOGrowthStandardsWeigthForLengthGender get _femaleData =>
      _weigthForLengthData._data[Sex.female]!;

  _WHOGrowthStandardsWeigthForLengthLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .lengthData[_adjustedLength.toDouble().toPrecision(1)]!;

  num get _zScore => _ageData.lms.adjustedZScore(weight.toKilograms.value!);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);
}

class _WHOGrowthStandardsWeigthForLengthGender {
  _WHOGrowthStandardsWeigthForLengthGender({required this.lengthData});

  final Map<num, _WHOGrowthStandardsWeigthForLengthLMS> lengthData;
  @override
  String toString() => 'Gender Data($lengthData)';
}

class _WHOGrowthStandardsWeigthForLengthLMS {
  _WHOGrowthStandardsWeigthForLengthLMS({
    required this.lms,
    required this.lorh,
    required this.standardDeviationCutOff,
    required this.percentileCutOff,
  });
  final LMS lms;
  final LengthHeigthMeasurementPosition lorh;

  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Length Data(LMS: $lms, Length/Height Measurement Position: $lorh, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
