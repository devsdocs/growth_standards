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
                    final lms = (
                      l: v3['l'] as num,
                      m: v3['m'] as num,
                      s: v3['s'] as num
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
    'Calculation can not be done as past measurment is empty',
  )
  @Assert(
    'pastMeasurement.every((element) => element.date.isSameOrBefore(Date.today()))',
    'Calculation can not be done as there is future date in past measurment',
  )
  @Assert(
    'pastMeasurement.every((element) => element.date.isSameOrAfter(age.dateOfBirth))',
    'Calculation can not be done as there is date less than Date of Birth in past measurement, if you find this exception is a mistake, try to provide exact \$Age',
  )
  factory WHOGrowthStandardsWeightVelocityForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
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

  //TODO(devsdocs): need help implement this
  Map<VelocityIncrement, WHOGrowthStandardsWeightVelocityForAgeIncrement>
      get _incrementData =>
          (sex == Sex.male ? _maleData : _femaleData).incrementData;

  Map<VelocityIncrement,
          Map<({Date dateBefore, Date dateAfter, Duration duration}), num>>
      get _incrementalData =>
          VelocityPastMeasurement(_sanitizePastMeasurement).incrementalData;

  Map<VelocityIncrement, Map<VelocityMonths, ({num zScore, num percentile})>>
      zScorePercentileMap(Precision precision) {
    final joinMap = _incrementData.map((k1, v1) {
      final alt = _incrementalData[k1];
      if (alt == null || alt.isEmpty) return MapEntry(k1, null);

      final alv = alt.map((k2, v2) {
        final VelocityMonths vm = (
          low: ageAtObservationDate.ageInTotalMonthsByNow -
              Age(k2.dateBefore).ageInTotalMonthsByNow,
          high: ageAtObservationDate.ageInTotalMonthsByNow -
              Age(k2.dateAfter).ageInTotalMonthsByNow
        );

        final whoGrowthStandardsWeightVelocityForAgeLMS = v1.lmsData[vm];

        if (whoGrowthStandardsWeightVelocityForAgeLMS != null) {
          final adjustedZScore =
              whoGrowthStandardsWeightVelocityForAgeLMS.lms.adjustedZScore(
            v2 + whoGrowthStandardsWeightVelocityForAgeLMS.delta,
          );
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
          null,
        );
      });
      final rVal = alv.entries.every((e) => e.value == null)
          ? null
          : (alv..removeWhere((_, v) => v == null))
              .map((k3, v3) => MapEntry(k3, v3!));
      return MapEntry(k1, rVal);
    });
    return (joinMap..removeWhere((k4, v4) => v4 == null)).map(
      (k5, v5) => MapEntry(k5, v5!),
    );
  }

  List<MassMeasurementHistory> get _sanitizePastMeasurement => pastMeasurement
      .map(
        (e) => MassMeasurementHistory(e.date, e.unit.toGrams),
      )
      .toList();

  Age get ageAtObservationDate => observationDate == null
      ? age
      : observationDate == Date.today()
          ? age
          : age.ageAtPastDate(observationDate!);
}

class WHOGrowthStandardsWeightVelocityForAgeGender {
  WHOGrowthStandardsWeightVelocityForAgeGender({
    required this.incrementData,
  });

  final Map<VelocityIncrement, WHOGrowthStandardsWeightVelocityForAgeIncrement>
      incrementData;
}

class WHOGrowthStandardsWeightVelocityForAgeIncrement {
  WHOGrowthStandardsWeightVelocityForAgeIncrement({
    required this.lmsData,
  });
  final Map<VelocityMonths, WHOGrowthStandardsWeightVelocityForAgeLMS> lmsData;
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
}
