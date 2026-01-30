part of '../standard.dart';

class WHOGrowthStandardsWeightForLengthData extends LengthBasedData {
  factory WHOGrowthStandardsWeightForLengthData() => _singleton;
  WHOGrowthStandardsWeightForLengthData._(this._data);

  static final _singleton = WHOGrowthStandardsWeightForLengthData._(_parse());

  static Map<Sex, Map<num, _WHOGrowthStandardsWeightForLengthLMS>> _parse() =>
      _wflanthro.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          (v1 as Map<String, dynamic>).map((k2, v2) {
            v2 as Map<String, dynamic>;
            final lms = LMS(
              l: v2['l'] as num,
              m: v2['m'] as num,
              s: v2['s'] as num,
            );
            return MapEntry(
              num.parse(k2),
              _WHOGrowthStandardsWeightForLengthLMS(
                lms: lms,
                lengthOrHeight: v2['lorh'].toString().toLowerCase() == 'l'
                    ? LengthHeightMeasurementPosition.recumbent
                    : LengthHeightMeasurementPosition.standing,
              ),
            );
          }),
        ),
      );
  final Map<Sex, Map<num, _WHOGrowthStandardsWeightForLengthLMS>> _data;
  @override
  Map<Sex, Map<num, _WHOGrowthStandardsWeightForLengthLMS>> get data => _data;

  @override
  String toString() => 'Weight For Length Data($_data)';

  @override
  Length get unit => Length.centimeter;
}

@freezed
sealed class WHOGrowthStandardsWeightForLength extends LengthBasedResult
    with _$WHOGrowthStandardsWeightForLength {
  factory WHOGrowthStandardsWeightForLength({
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
  ) => _$WHOGrowthStandardsWeightForLengthFromJson(json);

  Length$Centimeter get _adjustedLength => adjustedLengthHeight(
    measure: measure,
    age: age,
    lengthHeight: length,
    type: AdjustedLengthType.who,
  );

  @override
  WHOGrowthStandardsWeightForLengthData get contextData =>
      WHOGrowthStandardsWeightForLengthData();

  _WHOGrowthStandardsWeightForLengthLMS get _ageData =>
      contextData._data[sex]![_length]!;

  @override
  Length get lengthAtObservationDate =>
      checkLength(_adjustedLength, contextData: contextData);

  num get _length => lengthAtObservationDate.value.toDouble().toPrecision(1);

  num get _zScore =>
      _ageData.lms.adjustedZScore(measurementResultInDefaultUnit);

  @override
  num zScore([Precision precision = Precision.two]) =>
      oedemaExist ? double.nan : _zScore.precision(precision);

  @override
  num percentile([Precision precision = Precision.two]) =>
      oedemaExist ? double.nan : (pnorm(_zScore) * 100).precision(precision);

  @override
  _WHOGrowthStandardsWeightForLengthLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => weight.toKilogram.value;
}

class _WHOGrowthStandardsWeightForLengthLMS extends LMSContext {
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
