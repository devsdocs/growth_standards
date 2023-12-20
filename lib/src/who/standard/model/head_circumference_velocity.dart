part of '../standard.dart';

class HeadCircumferenceVelocityForAgeData {
  factory HeadCircumferenceVelocityForAgeData() => _singleton;
  HeadCircumferenceVelocityForAgeData._(this._data);

  static final _singleton = HeadCircumferenceVelocityForAgeData._(_parse());

  static Map<String, HeadCircumferenceVelocityForAgeGender> _parse() =>
      _hv.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1,
          HeadCircumferenceVelocityForAgeGender(
            incrementData: (v1 as Map<String, dynamic>).map(
              (k2, v2) => MapEntry(
                k2,
                HeadCircumferenceVelocityForAgeIncrement(
                  lmsData: (v2 as Map<String, dynamic>).map((k3, v3) {
                    v3 as Map<String, dynamic>;
                    return MapEntry(
                      k3,
                      HeadCircumferenceVelocityForAgeLMS(
                        lms: (l: v3['l'], m: v3['m'], s: v3['s']),
                      ),
                    );
                  }),
                ),
              ),
            ),
          ),
        ),
      );

  final Map<String, HeadCircumferenceVelocityForAgeGender> _data;
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
      _headCircumferenceData._data['1']!;
  HeadCircumferenceVelocityForAgeGender get _femaleData =>
      _headCircumferenceData._data['2']!;

  Age get ageAtObservationDate => observationDate == null
      ? age
      : observationDate == Date.today()
          ? age
          : age.ageAtAnyPastDate(observationDate!);
}

class HeadCircumferenceVelocityForAgeGender {
  HeadCircumferenceVelocityForAgeGender({required this.incrementData});

  final Map<String, HeadCircumferenceVelocityForAgeIncrement> incrementData;
}

class HeadCircumferenceVelocityForAgeIncrement {
  HeadCircumferenceVelocityForAgeIncrement({required this.lmsData});
  final Map<String, HeadCircumferenceVelocityForAgeLMS> lmsData;
}

class HeadCircumferenceVelocityForAgeLMS {
  HeadCircumferenceVelocityForAgeLMS({
    required this.lms,
  });
  final LMS lms;
}

WeeksMonths parseVelocityIncrement(String source) {
  final clean = source.clean.splitSpace.first;
  final splitC = clean.split('-').map(
        (e) => int.tryParse(e) == null
            ? int.parse(
                e.replaceAll(RegExp('[a-zA-z]'), '').replaceAll(' ', ''),
              )
            : int.parse(e),
      );
  if (splitC.length > 2) {
    throw Exception('More than 2 element');
  }
  if (source.contains('wks')) {
    if (source.contains('mo')) {
      return (
        weeks: null,
        weeksMonths: (low: splitC.first, high: splitC.last),
        months: null,
      );
    }
    return (
      weeks: (low: splitC.first, high: splitC.last),
      weeksMonths: null,
      months: null,
    );
  } else {
    return (
      weeks: null,
      weeksMonths: null,
      months: (low: splitC.first, high: splitC.last)
    );
  }
}
