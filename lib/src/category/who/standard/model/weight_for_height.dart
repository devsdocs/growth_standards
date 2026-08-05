part of '../standard.dart';

class WHOGrowthStandardsWeightForHeightData extends LengthBasedData {
  factory WHOGrowthStandardsWeightForHeightData() => _singleton;
  WHOGrowthStandardsWeightForHeightData._(this._data);

  static final _singleton = WHOGrowthStandardsWeightForHeightData._(_parse());

  static Map<Sex, Map<num, _WHOGrowthStandardsWeightForHeightLMS>> _parse() =>
      _wfhanthro.map(
        (k1, v1) => MapEntry(
          k1 == 1 ? Sex.male : Sex.female,
          v1.map((k2, v2) {
            final lms = LMS(
              l: v2['l']! as num,
              m: v2['m']! as num,
              s: v2['s']! as num,
            );
            return MapEntry(
              k2,
              _WHOGrowthStandardsWeightForHeightLMS(
                lms: lms,
                lengthOrHeight: v2['lorh'].toString().toLowerCase() == 'l'
                    ? LengthHeightMeasurementPosition.recumbent
                    : LengthHeightMeasurementPosition.standing,
              ),
            );
          }),
        ),
      );
  final Map<Sex, Map<num, _WHOGrowthStandardsWeightForHeightLMS>> _data;
  @override
  Map<Sex, Map<num, _WHOGrowthStandardsWeightForHeightLMS>> get data => _data;

  @override
  String toString() => 'Weight For Height Data($_data)';

  @override
  Length get unit => Length.centimeter;
}

@freezed
sealed class WHOGrowthStandardsWeightForHeight extends LengthBasedResult
    with _$WHOGrowthStandardsWeightForHeight {
  factory WHOGrowthStandardsWeightForHeight({
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
  ) => _$WHOGrowthStandardsWeightForHeightFromJson(json);

  Length$Centimeter get _adjustedHeight => adjustedLengthHeight(
    measure: measure,
    age: age,
    lengthHeight: height,
    type: AdjustedLengthType.who,
  );

  @override
  WHOGrowthStandardsWeightForHeightData get contextData =>
      WHOGrowthStandardsWeightForHeightData();

  _WHOGrowthStandardsWeightForHeightLMS get _ageData {
    final data = contextData._data[sex]?[_length];
    if (data == null) {
      throw ArgumentError(
        'No WHO weight-for-height data found for sex=$sex, height=$_length '
        '(expected range: ${contextData.lowerBound} to ${contextData.upperBound} ${contextData.unit.symbol})',
      );
    }
    return data;
  }

  void _ensureAgeAppropriateForHeightChart() {
    final days = age.ageInTotalDaysByNow;
    if (days <= 730) {
      throw ArgumentError(
        'Weight-for-height is for ages >24 months (>730 days); '
        'got $days days. Use weight-for-length for younger children.',
      );
    }
  }

  @override
  Length get lengthAtObservationDate =>
      checkLength(_adjustedHeight, contextData: contextData);

  num get _length => lengthAtObservationDate.value.toDouble().toPrecision(1);

  num get _zScore {
    _ensureAgeAppropriateForHeightChart();
    return _ageData.lms.adjustedZScore(measurementResultInDefaultUnit);
  }

  @override
  num zScore([Precision precision = Precision.two]) =>
      oedemaExist ? double.nan : _zScore.precision(precision);

  @override
  num percentile([Precision precision = Precision.two]) =>
      oedemaExist ? double.nan : (pnorm(_zScore) * 100).precision(precision);

  @override
  _WHOGrowthStandardsWeightForHeightLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => weight.toKilogram.value.toDouble();
}

class _WHOGrowthStandardsWeightForHeightLMS extends LMSContext {
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
