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
                        final lms = (
                          l: v3['l'] as num,
                          m: v3['m'] as num,
                          s: v3['s'] as num
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
    'Calculation can not be done as past measurment is empty',
  )
  @Assert(
    'pastMeasurement.keys.every((element) => element.isBefore(Date.today()))',
    'Calculation can not be done as there is future date in past measurment',
  )
  @Assert(
    'pastMeasurement.keys.every((element) => element.isSameOrAfter(age.dateOfBirth))',
    'Calculation can not be done as there is date less than Date of Birth in past measurement, if you find this exception is a mistake, try to provide exact \$Age by using \${Age.byDate} or \$Date by using \${Date.fromDateTime} in Past Measurement',
  )
  factory WHOGrowthStandardsHeadCircumferenceVelocityForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required List<LengthMeasurementHistory> pastMeasurement,
  }) = _WHOGrowthStandardsHeadCircumferenceVelocityForAge;

  const WHOGrowthStandardsHeadCircumferenceVelocityForAge._();

  WHOGrowthStandardsHeadCircumferenceVelocityForAgeData
      get _headCircumferenceData =>
          WHOGrowthStandardsHeadCircumferenceVelocityForAgeData();

  WHOGrowthStandardsHeadCircumferenceVelocityForAgeGender get _maleData =>
      _headCircumferenceData._data[Sex.male]!;
  WHOGrowthStandardsHeadCircumferenceVelocityForAgeGender get _femaleData =>
      _headCircumferenceData._data[Sex.female]!;

  ///TODO(devsdocs): need help implement this
  Map<VelocityIncrement,
          WHOGrowthStandardsHeadCircumferenceVelocityForAgeIncrement>
      get _incrementData =>
          (sex == Sex.male ? _maleData : _femaleData).incrementData;

  Age get ageAtObservationDate => observationDate == null
      ? age
      : observationDate == Date.today()
          ? age
          : age.ageAtPastDate(observationDate!);
}

class WHOGrowthStandardsHeadCircumferenceVelocityForAgeGender {
  WHOGrowthStandardsHeadCircumferenceVelocityForAgeGender({
    required this.incrementData,
  });

  final Map<VelocityIncrement,
      WHOGrowthStandardsHeadCircumferenceVelocityForAgeIncrement> incrementData;
}

class WHOGrowthStandardsHeadCircumferenceVelocityForAgeIncrement {
  WHOGrowthStandardsHeadCircumferenceVelocityForAgeIncrement({
    required this.lmsData,
  });
  final Map<VelocityMonths,
      WHOGrowthStandardsHeadCircumferenceVelocityForAgeLMS> lmsData;
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
}
