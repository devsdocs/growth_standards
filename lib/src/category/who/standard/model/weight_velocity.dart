part of '../standard.dart';

class WHOGrowthStandardsWeightVelocityForAgeData extends VelocityBaseData {
  factory WHOGrowthStandardsWeightVelocityForAgeData() => _singleton;
  WHOGrowthStandardsWeightVelocityForAgeData._(this._data);

  static final _singleton = WHOGrowthStandardsWeightVelocityForAgeData._(
    _parse(),
  );

  static Map<
    Sex,
    Map<
      VelocityIncrement,
      Map<VelocityMonths, WHOGrowthStandardsWeightVelocityForAgeLMS>
    >
  >
  _parse() => _wv.map(
    (k1, v1) => MapEntry(
      k1 == 1 ? Sex.male : Sex.female,
      v1.map(
        (k2, v2) => MapEntry(
          parseIncrement(k2),
          v2.map((k3, v3) {
            final delta = v3['delta']!;
            final lms = LMS(
              l: v3['l']!,
              m: v3['m']!,
              s: v3['s']!,
              percentileOverride: (percentile) =>
                  percentile.map((k, v) => MapEntry(k, v - delta)),
              zScoreOverride: (zScore) =>
                  zScore.map((k, v) => MapEntry(k, v - delta)),
            );
            return MapEntry(
              parseVelocityIncrement(k3),
              WHOGrowthStandardsWeightVelocityForAgeLMS(lms: lms, delta: delta),
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
      Map<VelocityMonths, WHOGrowthStandardsWeightVelocityForAgeLMS>
    >
  >
  _data;
  @override
  Map<
    Sex,
    Map<
      VelocityIncrement,
      Map<VelocityMonths, WHOGrowthStandardsWeightVelocityForAgeLMS>
    >
  >
  get data => _data;

  @override
  String toString() => 'Weight Velocity For Age Data($_data)';
}

@freezed
sealed class WHOGrowthStandardsWeightVelocityForAge extends VelocityBasedResult
    with _$WHOGrowthStandardsWeightVelocityForAge {
  factory WHOGrowthStandardsWeightVelocityForAge({
    required Sex sex,
    required Age age,
    required List<MassMeasurementHistory> pastMeasurement,
  }) = _WHOGrowthStandardsWeightVelocityForAge;

  const WHOGrowthStandardsWeightVelocityForAge._();

  factory WHOGrowthStandardsWeightVelocityForAge.fromJson(
    Map<String, dynamic> json,
  ) => _$WHOGrowthStandardsWeightVelocityForAgeFromJson(json);

  WHOGrowthStandardsWeightVelocityForAgeData get contextData =>
      WHOGrowthStandardsWeightVelocityForAgeData();

  Map<VelocityIncrement, Map<({Date dateBefore, Date dateAfter}), num>>
  get _incrementalData =>
      VelocityPastMeasurement(pastMeasurement, Mass$Gram()).incrementalData;

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

        final whoGrowthStandardsWeightVelocityForAgeLMS = v1[vm];

        if (whoGrowthStandardsWeightVelocityForAgeLMS != null) {
          final adjustedZScore = whoGrowthStandardsWeightVelocityForAgeLMS.lms
              .adjustedZScore(
                v2 + whoGrowthStandardsWeightVelocityForAgeLMS.delta,
              );

          final pastMeasurementWithOedema = pastMeasurement.where(
            (e) => e.isOedema == true,
          );

          final isValid =
              pastMeasurementWithOedema.isEmpty ||
              (pastMeasurementWithOedema.isNotEmpty &&
                  !pastMeasurementWithOedema.map((e) => e.date).containsAnyOf([
                    k2.dateAfter,
                    k2.dateBefore,
                  ]));

          if (isValid) {
            return MapEntry(vm, (
              zScore: adjustedZScore.precision(precision),
              percentile: (pnorm(adjustedZScore) * 100).precision(precision),
            ));
          }

          return MapEntry(vm, (zScore: double.nan, percentile: double.nan));
        }
        return MapEntry(vm, null);
      });
      final rVal = alv.isAllValuesNull ? null : alv.removeAllNull;
      return MapEntry(k1, rVal);
    });
    return joinMap.removeAllNull;
  }
}

class WHOGrowthStandardsWeightVelocityForAgeLMS extends LMSContext {
  WHOGrowthStandardsWeightVelocityForAgeLMS({
    required this.lms,
    required this.delta,
  });
  @override
  final LMS lms;

  final num delta;
}
