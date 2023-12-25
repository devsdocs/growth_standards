part of '../standard.dart';

class HeadCircumferenceVelocityForAgeData {
  factory HeadCircumferenceVelocityForAgeData() => _singleton;
  HeadCircumferenceVelocityForAgeData._(this._data);

  static final _singleton = HeadCircumferenceVelocityForAgeData._(_parse());

  static Map<Sex, HeadCircumferenceVelocityForAgeGender> _parse() =>
      _hv.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          HeadCircumferenceVelocityForAgeGender(
            incrementData: (v1 as Map<String, dynamic>).map(
              (k2, v2) => MapEntry(
                parseIncrement(k2),
                HeadCircumferenceVelocityForAgeIncrement(
                  lmsData: (v2 as Map<String, dynamic>).map((k3, v3) {
                    v3 as Map<String, dynamic>;
                    final lms = (
                      l: v3['l'] as num,
                      m: v3['m'] as num,
                      s: v3['s'] as num
                    );
                    return MapEntry(
                      parseVelocityIncrement(k3),
                      HeadCircumferenceVelocityForAgeLMS(
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

  final Map<Sex, HeadCircumferenceVelocityForAgeGender> _data;
}

@freezed
class HeadCircumferenceVelocityForAge with _$HeadCircumferenceVelocityForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalMonthsByNow <= 24',
    'Age must be in range of 0 days - 24 months',
  )
  @Assert(
    'pastMeasurement.isNotEmpty',
    'Calculation can not be done as past measurment is empty',
  )
  @Assert(
    'pastMeasurement.keys.every((element) => element.isNotSameAs(Date.today()))',
    'Calculation can not be done as there is todays date in past measurment',
  )
  @Assert(
    'pastMeasurement.keys.every((element) => element.isBefore(Date.today()))',
    'Calculation can not be done as there is future date in past measurment',
  )
  @Assert(
    'pastMeasurement.keys.every((element) => element.isSameOrAfter(age.dateOfBirth))',
    'Calculation can not be done as there is date less than Date of Birth in past measurement, if you find this exception is a mistake, try to provide exact \$Age by using \${Age.byDate} or \$Date by using \${Date.fromDateTime} in Past Measurement',
  )
  factory HeadCircumferenceVelocityForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Map<Date, Length> pastMeasurement,
  }) = _HeadCircumferenceVelocityForAge;

  const HeadCircumferenceVelocityForAge._();

  HeadCircumferenceVelocityForAgeData get _headCircumferenceData =>
      HeadCircumferenceVelocityForAgeData();

  HeadCircumferenceVelocityForAgeGender get _maleData =>
      _headCircumferenceData._data[Sex.male]!;
  HeadCircumferenceVelocityForAgeGender get _femaleData =>
      _headCircumferenceData._data[Sex.female]!;

  Map<VelocityIncrement, HeadCircumferenceVelocityForAgeIncrement>
      get _incrementData => (sex == Sex.male ? _maleData : _femaleData).incrementData;

  Age get ageAtObservationDate => observationDate == null
      ? age
      : observationDate == Date.today()
          ? age
          : age.ageAtAnyPastDate(observationDate!);
}

class HeadCircumferenceVelocityForAgeGender {
  HeadCircumferenceVelocityForAgeGender({required this.incrementData});

  final Map<VelocityIncrement, HeadCircumferenceVelocityForAgeIncrement>
      incrementData;
}

class HeadCircumferenceVelocityForAgeIncrement {
  HeadCircumferenceVelocityForAgeIncrement({required this.lmsData});
  final Map<WeeksMonths, HeadCircumferenceVelocityForAgeLMS> lmsData;
}

class HeadCircumferenceVelocityForAgeLMS {
  HeadCircumferenceVelocityForAgeLMS({
    required this.lms,
    required this.percentileCutOff,
    required this.standardDeviationCutOff,
  });
  final LMS lms;

  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;
}
