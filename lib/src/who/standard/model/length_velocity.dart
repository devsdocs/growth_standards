part of '../standard.dart';

class WHOGrowthStandardsLengthVelocityForAgeData {
  factory WHOGrowthStandardsLengthVelocityForAgeData() => _singleton;
  WHOGrowthStandardsLengthVelocityForAgeData._(this._data);

  static final _singleton =
      WHOGrowthStandardsLengthVelocityForAgeData._(_parse());

  static Map<Sex, WHOGrowthStandardsLengthVelocityForAgeGender> _parse() =>
      _lv.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          WHOGrowthStandardsLengthVelocityForAgeGender(
            incrementData: (v1 as Map<String, dynamic>).map(
              (k2, v2) => MapEntry(
                parseIncrement(k2),
                WHOGrowthStandardsLengthVelocityForAgeIncrement(
                  lmsData: (v2 as Map<String, dynamic>).map((k3, v3) {
                    v3 as Map<String, dynamic>;
                    final lms = LMS(
                      l: v3['l'] as num,
                      m: v3['m'] as num,
                      s: v3['s'] as num,
                    );
                    return MapEntry(
                      parseVelocityIncrement(k3),
                      WHOGrowthStandardsLengthVelocityForAgeLMS(
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

  final Map<Sex, WHOGrowthStandardsLengthVelocityForAgeGender> _data;
  Map<Sex, WHOGrowthStandardsLengthVelocityForAgeGender> get data => _data;

  @override
  String toString() => 'Length Velocity For Age Data($_data)';
}

@freezed
class WHOGrowthStandardsLengthVelocityForAge
    with _$WHOGrowthStandardsLengthVelocityForAge {
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
  factory WHOGrowthStandardsLengthVelocityForAge({
    @DateConverter() Date? observationDate,
    required Sex sex,
    @AgeConverter() required Age age,
    @LengthMeasurementHistoryConverter()
    required List<LengthMeasurementHistory> pastMeasurement,
  }) = _WHOGrowthStandardsLengthVelocityForAge;

  const WHOGrowthStandardsLengthVelocityForAge._();

  factory WHOGrowthStandardsLengthVelocityForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthStandardsLengthVelocityForAgeFromJson(json);

  WHOGrowthStandardsLengthVelocityForAgeData get _headCircumferenceData =>
      WHOGrowthStandardsLengthVelocityForAgeData();

  WHOGrowthStandardsLengthVelocityForAgeGender get _maleData =>
      _headCircumferenceData._data[Sex.male]!;
  WHOGrowthStandardsLengthVelocityForAgeGender get _femaleData =>
      _headCircumferenceData._data[Sex.female]!;

  Map<VelocityIncrement, WHOGrowthStandardsLengthVelocityForAgeIncrement>
      get _incrementData =>
          (sex == Sex.male ? _maleData : _femaleData).incrementData;

  Map<VelocityIncrement, Map<({Date dateBefore, Date dateAfter}), num>>
      get _incrementalData =>
          VelocityPastMeasurement(pastMeasurement, const Length$Centimeter())
              .incrementalData;

  Map<VelocityIncrement, Map<VelocityMonths, ZScorePercentile>>
      zScorePercentileMap([Precision precision = Precision.ten]) {
    final joinMap = _incrementData.map((k1, v1) {
      final alt = _incrementalData[k1];
      if (alt == null || alt.isEmpty) return MapEntry(k1, null);

      final alv = alt.map((k2, v2) {
        final VelocityMonths vm = (
          low: _ageAtObservationDate.ageInTotalMonthsAtDate(
            k2.dateBefore,
          ),
          high: _ageAtObservationDate.ageInTotalMonthsAtDate(k2.dateAfter),
        );

        final whoGrowthStandardsLengthVelocityForAgeLMS = v1.lmsData[vm];

        if (whoGrowthStandardsLengthVelocityForAgeLMS != null) {
          final adjustedZScore =
              whoGrowthStandardsLengthVelocityForAgeLMS.lms.adjustedZScore(v2);
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
      final rVal = alv.isAllValuesNull ? null : alv.removeAllNull;
      return MapEntry(k1, rVal);
    });
    return joinMap.removeAllNull;
  }

  Age get _ageAtObservationDate => checkObservationDate(age, observationDate);
}

class WHOGrowthStandardsLengthVelocityForAgeGender {
  WHOGrowthStandardsLengthVelocityForAgeGender({
    required this.incrementData,
  });

  final Map<VelocityIncrement, WHOGrowthStandardsLengthVelocityForAgeIncrement>
      incrementData;

  @override
  String toString() => 'Gender Data($incrementData)';
}

class WHOGrowthStandardsLengthVelocityForAgeIncrement {
  WHOGrowthStandardsLengthVelocityForAgeIncrement({
    required this.lmsData,
  });
  final Map<VelocityMonths, WHOGrowthStandardsLengthVelocityForAgeLMS> lmsData;

  @override
  String toString() => 'Increment Data($lmsData)';
}

class WHOGrowthStandardsLengthVelocityForAgeLMS {
  WHOGrowthStandardsLengthVelocityForAgeLMS({
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
