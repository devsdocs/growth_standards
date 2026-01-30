part of '../standard.dart';

class WHOGrowthStandardsHeadCircumferenceVelocityForAgeData
    extends VelocityBaseData {
  factory WHOGrowthStandardsHeadCircumferenceVelocityForAgeData() => _singleton;
  WHOGrowthStandardsHeadCircumferenceVelocityForAgeData._(this._data);

  static final _singleton =
      WHOGrowthStandardsHeadCircumferenceVelocityForAgeData._(_parse());

  static Map<
    Sex,
    Map<
      VelocityIncrement,
      Map<VelocityMonths, WHOGrowthStandardsHeadCircumferenceVelocityForAgeLMS>
    >
  >
  _parse() => _hv.map(
    (k1, v1) => MapEntry(
      k1 == '1' ? Sex.male : Sex.female,
      (v1).map(
        (k2, v2) => MapEntry(
          parseIncrement(k2),
          (v2).map((k3, v3) {
            v3;
            final lms = LMS(
              l: v3['l'] as num,
              m: v3['m'] as num,
              s: v3['s'] as num,
            );
            return MapEntry(
              parseVelocityIncrement(k3),
              WHOGrowthStandardsHeadCircumferenceVelocityForAgeLMS(lms: lms),
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
      Map<VelocityMonths, WHOGrowthStandardsHeadCircumferenceVelocityForAgeLMS>
    >
  >
  _data;
  @override
  Map<
    Sex,
    Map<
      VelocityIncrement,
      Map<VelocityMonths, WHOGrowthStandardsHeadCircumferenceVelocityForAgeLMS>
    >
  >
  get data => _data;

  @override
  String toString() => 'Head Circumference Velocity For Age Data($_data)';
}

@freezed
sealed class WHOGrowthStandardsHeadCircumferenceVelocityForAge
    extends VelocityBasedResult
    with _$WHOGrowthStandardsHeadCircumferenceVelocityForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalMonthsByNow <= 24',
    'Age must be in range of 0 days - 24 months',
  )
  @Assert(
    'pastMeasurement.isNotEmpty',
    'Calculation can not be done as past measurement is empty',
  )
  @Assert(
    'pastMeasurement.toSet().length > 1',
    'Calculation can not be done as there is only one measurement history',
  )
  @Assert(
    'pastMeasurement.every((element) => element.date.isSameOrBefore(Date.today()))',
    'Calculation can not be done as there is future date in past measurement',
  )
  // @Assert(
  //   'observationDate == null || pastMeasurement.every((element) => element.date.isSameOrBefore(observationDate))',
  //   'Calculation can not be done as there is future date in past measurement',
  // )
  @Assert(
    'pastMeasurement.every((element) => element.date.isSameOrAfter(age.dateOfBirth))',
    'Calculation can not be done as there is date less than Date of Birth in past measurement, if you find this exception is a mistake, try to provide exact \$Age',
  )
  factory WHOGrowthStandardsHeadCircumferenceVelocityForAge({
    required Sex sex,
    required Age age,
    required List<LengthMeasurementHistory> pastMeasurement,
  }) = _WHOGrowthStandardsHeadCircumferenceVelocityForAge;

  const WHOGrowthStandardsHeadCircumferenceVelocityForAge._();

  factory WHOGrowthStandardsHeadCircumferenceVelocityForAge.fromJson(
    Map<String, dynamic> json,
  ) => _$WHOGrowthStandardsHeadCircumferenceVelocityForAgeFromJson(json);

  WHOGrowthStandardsHeadCircumferenceVelocityForAgeData
  get _headCircumferenceData =>
      WHOGrowthStandardsHeadCircumferenceVelocityForAgeData();

  Map<VelocityIncrement, Map<({Date dateBefore, Date dateAfter}), num>>
  get _incrementalData => VelocityPastMeasurement(
    pastMeasurement,
    const Length$Centimeter(),
  ).incrementalData;

  @override
  Map<VelocityIncrement, Map<VelocityMonths, ZScorePercentile>>
  zScorePercentileMap([Precision precision = Precision.two]) {
    final joinMap = _headCircumferenceData._data[sex]!.map((k1, v1) {
      final alt = _incrementalData[k1];
      if (alt == null || alt.isEmpty) return MapEntry(k1, null);

      final alv = alt.map((k2, v2) {
        final VelocityMonths vm = (
          low: age.ageInTotalMonthsAtDate(k2.dateBefore),
          high: age.ageInTotalMonthsAtDate(k2.dateAfter),
        );

        final whoGrowthStandardsHeadCircumferenceVelocityForAgeLMS = v1[vm];

        if (whoGrowthStandardsHeadCircumferenceVelocityForAgeLMS != null) {
          final adjustedZScore =
              whoGrowthStandardsHeadCircumferenceVelocityForAgeLMS.lms
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

class WHOGrowthStandardsHeadCircumferenceVelocityForAgeLMS extends LMSContext {
  WHOGrowthStandardsHeadCircumferenceVelocityForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Head Circumference Velocity For Age LMS($lms)';
}
