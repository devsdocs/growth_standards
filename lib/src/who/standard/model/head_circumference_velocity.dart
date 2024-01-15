part of '../standard.dart';

class WHOGrowthStandardsHeadCircumferenceVelocityForAgeData {
  factory WHOGrowthStandardsHeadCircumferenceVelocityForAgeData() => _singleton;
  WHOGrowthStandardsHeadCircumferenceVelocityForAgeData._(this._data);

  static final _singleton =
      WHOGrowthStandardsHeadCircumferenceVelocityForAgeData._(_parse());

  static Map<Sex, WHOGrowthStandardsHeadCircumferenceVelocityForAgeGender>
      _parse() => _hv.toJsonObjectAsMap.map(
            (k1, v1) => MapEntry(
              k1 == '1' ? Sex.male : Sex.female,
              WHOGrowthStandardsHeadCircumferenceVelocityForAgeGender(
                incrementData: (v1 as Map<String, dynamic>).map(
                  (k2, v2) => MapEntry(
                    parseIncrement(k2),
                    WHOGrowthStandardsHeadCircumferenceVelocityForAgeIncrement(
                      lmsData: (v2 as Map<String, dynamic>).map((k3, v3) {
                        v3 as Map<String, dynamic>;
                        final lms = LMS(
                          l: v3['l'] as num,
                          m: v3['m'] as num,
                          s: v3['s'] as num,
                        );
                        return MapEntry(
                          parseVelocityIncrement(k3),
                          WHOGrowthStandardsHeadCircumferenceVelocityForAgeLMS(
                            lms: lms,
                            percentileCutOff: lms.percentileCutOff,
                            standardDeviationCutOff: lms.stDevCutOff,
                          ),
                        );
                      }),
                    ),
                  ),
                ),
              ),
            ),
          );

  final Map<Sex, WHOGrowthStandardsHeadCircumferenceVelocityForAgeGender> _data;
  Map<Sex, WHOGrowthStandardsHeadCircumferenceVelocityForAgeGender> get data =>
      _data;

  @override
  String toString() => 'Head Circumference Velocity For Age Data($_data)';
}

@freezed
class WHOGrowthStandardsHeadCircumferenceVelocityForAge
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
  @Assert(
    'observationDate == null || pastMeasurement.every((element) => element.date.isSameOrBefore(observationDate))',
    'Calculation can not be done as there is future date in past measurement',
  )
  @Assert(
    'pastMeasurement.every((element) => element.date.isSameOrAfter(age.dateOfBirth))',
    'Calculation can not be done as there is date less than Date of Birth in past measurement, if you find this exception is a mistake, try to provide exact \$Age',
  )
  factory WHOGrowthStandardsHeadCircumferenceVelocityForAge({
    @DateConverter() Date? observationDate,
    required Sex sex,
    @AgeConverter() required Age age,
    @LengthMeasurementHistoryConverter()
    required List<LengthMeasurementHistory> pastMeasurement,
  }) = _WHOGrowthStandardsHeadCircumferenceVelocityForAge;

  const WHOGrowthStandardsHeadCircumferenceVelocityForAge._();

  factory WHOGrowthStandardsHeadCircumferenceVelocityForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthStandardsHeadCircumferenceVelocityForAgeFromJson(json);

  WHOGrowthStandardsHeadCircumferenceVelocityForAgeData
      get _headCircumferenceData =>
          WHOGrowthStandardsHeadCircumferenceVelocityForAgeData();

  WHOGrowthStandardsHeadCircumferenceVelocityForAgeGender get _maleData =>
      _headCircumferenceData._data[Sex.male]!;
  WHOGrowthStandardsHeadCircumferenceVelocityForAgeGender get _femaleData =>
      _headCircumferenceData._data[Sex.female]!;

  Map<VelocityIncrement,
          WHOGrowthStandardsHeadCircumferenceVelocityForAgeIncrement>
      get _incrementData =>
          (sex == Sex.male ? _maleData : _femaleData).incrementData;

  Map<VelocityIncrement, Map<({Date dateBefore, Date dateAfter}), num>>
      get _incrementalData =>
          VelocityPastMeasurement(_sanitizePastMeasurement).incrementalData;

  Map<VelocityIncrement, Map<VelocityMonths, ({num zScore, num percentile})>>
      zScorePercentileMap([Precision precision = Precision.ten]) {
    final joinMap = _incrementData.map((k1, v1) {
      final alt = _incrementalData[k1];
      if (alt == null || alt.isEmpty) return MapEntry(k1, null);

      final alv = alt.map((k2, v2) {
        final VelocityMonths vm = (
          low: _ageAtObservationDate.ageInTotalMonthsByNow -
              Age(k2.dateBefore).ageInTotalMonthsByNow,
          high: _ageAtObservationDate.ageInTotalMonthsByNow -
              Age(k2.dateAfter).ageInTotalMonthsByNow
        );

        final whoGrowthStandardsHeadCircumferenceVelocityForAgeLMS =
            v1.lmsData[vm];

        if (whoGrowthStandardsHeadCircumferenceVelocityForAgeLMS != null) {
          final adjustedZScore =
              whoGrowthStandardsHeadCircumferenceVelocityForAgeLMS.lms
                  .adjustedZScore(v2);
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

  List<LengthMeasurementHistory> get _sanitizePastMeasurement => pastMeasurement
      .map(
        (e) => LengthMeasurementHistory(e.date, e.unit.toCentimeters),
      )
      .toList();

  Age get _ageAtObservationDate => checkObservationDate(age, observationDate);
}

class WHOGrowthStandardsHeadCircumferenceVelocityForAgeGender {
  WHOGrowthStandardsHeadCircumferenceVelocityForAgeGender({
    required this.incrementData,
  });

  final Map<VelocityIncrement,
      WHOGrowthStandardsHeadCircumferenceVelocityForAgeIncrement> incrementData;

  @override
  String toString() => 'Gender Data($incrementData)';
}

class WHOGrowthStandardsHeadCircumferenceVelocityForAgeIncrement {
  WHOGrowthStandardsHeadCircumferenceVelocityForAgeIncrement({
    required this.lmsData,
  });
  final Map<VelocityMonths,
      WHOGrowthStandardsHeadCircumferenceVelocityForAgeLMS> lmsData;

  @override
  String toString() => 'Increment Data($lmsData)';
}

class WHOGrowthStandardsHeadCircumferenceVelocityForAgeLMS {
  WHOGrowthStandardsHeadCircumferenceVelocityForAgeLMS({
    required this.lms,
    required this.percentileCutOff,
    required this.standardDeviationCutOff,
  });
  final LMS lms;

  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Age Data(LMS: $lms, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
