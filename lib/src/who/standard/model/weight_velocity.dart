part of '../standard.dart';

class WHOGrowthStandardsWeightVelocityForAgeData {
  factory WHOGrowthStandardsWeightVelocityForAgeData() => _singleton;
  WHOGrowthStandardsWeightVelocityForAgeData._(this._data);

  static final _singleton =
      WHOGrowthStandardsWeightVelocityForAgeData._(_parse());

  static Map<Sex, WHOGrowthStandardsWeightVelocityForAgeGender> _parse() =>
      _wv.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          WHOGrowthStandardsWeightVelocityForAgeGender(
            incrementData: (v1 as Map<String, dynamic>).map(
              (k2, v2) => MapEntry(
                parseIncrement(k2),
                WHOGrowthStandardsWeightVelocityForAgeIncrement(
                  lmsData: (v2 as Map<String, dynamic>).map((k3, v3) {
                    v3 as Map<String, dynamic>;
                    final lms = LMS(
                      l: v3['l'] as num,
                      m: v3['m'] as num,
                      s: v3['s'] as num,
                    );
                    final delta = v3['delta'] as num;
                    return MapEntry(
                      parseVelocityIncrement(k3),
                      WHOGrowthStandardsWeightVelocityForAgeLMS(
                        lms: lms,
                        delta: delta,
                        percentileCutOff: lms.percentileCutOff
                            .map((k, v) => MapEntry(k, v - delta)),
                        standardDeviationCutOff: lms.stDevCutOff
                            .map((k, v) => MapEntry(k, v - delta)),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ),
      );

  final Map<Sex, WHOGrowthStandardsWeightVelocityForAgeGender> _data;
  Map<Sex, WHOGrowthStandardsWeightVelocityForAgeGender> get data => _data;

  @override
  String toString() => 'Weight Velocity For Age Data($_data)';
}

@freezed
class WHOGrowthStandardsWeightVelocityForAge
    with _$WHOGrowthStandardsWeightVelocityForAge {
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
  factory WHOGrowthStandardsWeightVelocityForAge({
    required Sex sex,
    @AgeConverter() required Age age,
    @MassMeasurementHistoryConverter()
    required List<MassMeasurementHistory> pastMeasurement,
  }) = _WHOGrowthStandardsWeightVelocityForAge;

  const WHOGrowthStandardsWeightVelocityForAge._();

  factory WHOGrowthStandardsWeightVelocityForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthStandardsWeightVelocityForAgeFromJson(json);

  WHOGrowthStandardsWeightVelocityForAgeData get _headCircumferenceData =>
      WHOGrowthStandardsWeightVelocityForAgeData();

  WHOGrowthStandardsWeightVelocityForAgeGender get _maleData =>
      _headCircumferenceData._data[Sex.male]!;
  WHOGrowthStandardsWeightVelocityForAgeGender get _femaleData =>
      _headCircumferenceData._data[Sex.female]!;

  Map<VelocityIncrement, WHOGrowthStandardsWeightVelocityForAgeIncrement>
      get _incrementData =>
          (sex == Sex.male ? _maleData : _femaleData).incrementData;

  Map<VelocityIncrement, Map<({Date dateBefore, Date dateAfter}), num>>
      get _incrementalData =>
          VelocityPastMeasurement(pastMeasurement, const Mass$Gram())
              .incrementalData;

  Map<VelocityIncrement, Map<VelocityMonths, ZScorePercentile>>
      zScorePercentileMap([Precision precision = Precision.ten]) {
    final joinMap = _incrementData.map((k1, v1) {
      final alt = _incrementalData[k1];
      if (alt == null || alt.isEmpty) return MapEntry(k1, null);

      final alv = alt.map((k2, v2) {
        final VelocityMonths vm = (
          low: age.ageInTotalMonthsAtDate(
            k2.dateBefore,
          ),
          high: age.ageInTotalMonthsAtDate(k2.dateAfter),
        );

        final whoGrowthStandardsWeightVelocityForAgeLMS = v1.lmsData[vm];

        if (whoGrowthStandardsWeightVelocityForAgeLMS != null) {
          final adjustedZScore =
              whoGrowthStandardsWeightVelocityForAgeLMS.lms.adjustedZScore(
            v2 + whoGrowthStandardsWeightVelocityForAgeLMS.delta,
          );

          final map = pastMeasurement.where((e) => e.isOedema!);

          final isValid = map.isEmpty ||
              (map.isNotEmpty &&
                  !map
                      .map((e) => e.date)
                      .containsAnyOf([k2.dateAfter, k2.dateBefore]));

          if (isValid) {
            return MapEntry(
              vm,
              (
                zScore: adjustedZScore.precision(precision),
                percentile: (pnorm(adjustedZScore) * 100).precision(precision)
              ),
            );
          }

          return MapEntry(
            vm,
            (
              zScore: double.nan,
              percentile: double.nan,
            ),
          );
        }
        return MapEntry(
          vm,
          null,
        );
      });
      final rVal = alv.isAllValuesNull ? null : alv.removeAllNull;
      return MapEntry(k1, rVal);
    });
    return joinMap.removeAllNull;
  }
}

class WHOGrowthStandardsWeightVelocityForAgeGender {
  WHOGrowthStandardsWeightVelocityForAgeGender({
    required this.incrementData,
  });

  final Map<VelocityIncrement, WHOGrowthStandardsWeightVelocityForAgeIncrement>
      incrementData;

  @override
  String toString() => 'Gender Data($incrementData)';
}

class WHOGrowthStandardsWeightVelocityForAgeIncrement {
  WHOGrowthStandardsWeightVelocityForAgeIncrement({
    required this.lmsData,
  });
  final Map<VelocityMonths, WHOGrowthStandardsWeightVelocityForAgeLMS> lmsData;

  @override
  String toString() => 'Increment Data($lmsData)';
}

class WHOGrowthStandardsWeightVelocityForAgeLMS {
  WHOGrowthStandardsWeightVelocityForAgeLMS({
    required this.lms,
    required this.delta,
    required this.percentileCutOff,
    required this.standardDeviationCutOff,
  });
  final LMS lms;
  final num delta;

  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Age Data(LMS: $lms, Delta: $delta, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
