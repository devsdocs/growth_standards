part of '../standard.dart';

class WHOGrowthStandardsLengthVelocityForAgeData extends VelocityBaseData {
  factory WHOGrowthStandardsLengthVelocityForAgeData() => _singleton;
  WHOGrowthStandardsLengthVelocityForAgeData._(this._data);

  static final _singleton = WHOGrowthStandardsLengthVelocityForAgeData._(
    _parse(),
  );

  static Map<
    Sex,
    Map<
      VelocityIncrement,
      Map<VelocityMonths, WHOGrowthStandardsLengthVelocityForAgeLMS>
    >
  >
  _parse() => _lv.map(
    (k1, v1) => MapEntry(
      k1 == 1 ? Sex.male : Sex.female,
      v1.map(
        (k2, v2) => MapEntry(
          parseIncrement(k2),
          v2.map((k3, v3) {
            final lms = LMS(l: v3['l']!, m: v3['m']!, s: v3['s']!);
            return MapEntry(
              parseVelocityIncrement(k3),
              WHOGrowthStandardsLengthVelocityForAgeLMS(lms: lms),
            );
          }),
        ),
      ),
    ),
  );

  final Map<
    Sex,
    Map<
      VelocityIncrement,
      Map<VelocityMonths, WHOGrowthStandardsLengthVelocityForAgeLMS>
    >
  >
  _data;
  @override
  Map<
    Sex,
    Map<
      VelocityIncrement,
      Map<VelocityMonths, WHOGrowthStandardsLengthVelocityForAgeLMS>
    >
  >
  get data => _data;

  @override
  String toString() => 'Length Velocity For Age Data($_data)';
}

@freezed
sealed class WHOGrowthStandardsLengthVelocityForAge extends VelocityBasedResult
    with _$WHOGrowthStandardsLengthVelocityForAge {
  factory WHOGrowthStandardsLengthVelocityForAge({
    required Sex sex,
    required Age age,
    required List<LengthMeasurementHistory> pastMeasurement,
  }) = _WHOGrowthStandardsLengthVelocityForAge;

  const WHOGrowthStandardsLengthVelocityForAge._();

  factory WHOGrowthStandardsLengthVelocityForAge.fromJson(
    Map<String, dynamic> json,
  ) => _$WHOGrowthStandardsLengthVelocityForAgeFromJson(json);

  WHOGrowthStandardsLengthVelocityForAgeData get contextData =>
      WHOGrowthStandardsLengthVelocityForAgeData();

  Map<VelocityIncrement, Map<({Date dateBefore, Date dateAfter}), num>>
  get _incrementalData => VelocityPastMeasurement(
    pastMeasurement
        .map(
          (e) => e.copyWith(
            measurement: adjustedLengthHeight(
              age: age.ageAtPastDate(e.date),
              measure: e.measurementPosition!,
              type: AdjustedLengthType.who,
              lengthHeight: e.measurement,
            ),
          ),
        )
        .toList(),
    Length$Centimeter(),
  ).incrementalData;

  @override
  Map<VelocityIncrement, Map<VelocityMonths, ZScorePercentile>>
  zScorePercentileMap([Precision precision = Precision.two]) {
    ensureValidWhoVelocityInputs(
      age: age,
      measurementDates: pastMeasurement.map((e) => e.date).toList(),
    );
    final joinMap = contextData._data[sex]!.map((k1, v1) {
      final alt = _incrementalData[k1];
      if (alt == null || alt.isEmpty) return MapEntry(k1, null);

      final alv = alt.map((k2, v2) {
        final VelocityMonths vm = (
          low: age.ageInTotalMonthsAtDate(k2.dateBefore),
          high: age.ageInTotalMonthsAtDate(k2.dateAfter),
        );

        final whoGrowthStandardsLengthVelocityForAgeLMS = v1[vm];

        if (whoGrowthStandardsLengthVelocityForAgeLMS != null) {
          final adjustedZScore = whoGrowthStandardsLengthVelocityForAgeLMS.lms
              .adjustedZScore(v2);
          return MapEntry(vm, (
            zScore: adjustedZScore.precision(precision),
            percentile: (pnorm(adjustedZScore) * 100).precision(precision),
          ));
        }
        return MapEntry(vm, null);
      });
      final rVal = alv.isAllValuesNull ? null : alv.removeAllNull;
      return MapEntry(k1, rVal);
    });
    return joinMap.removeAllNull;
  }
}

class WHOGrowthStandardsLengthVelocityForAgeLMS extends LMSContext {
  WHOGrowthStandardsLengthVelocityForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Length Velocity For Age LMS($lms)';
}
