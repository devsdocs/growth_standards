part of '../standard.dart';

class BodyMassIndexForAgeData {
  factory BodyMassIndexForAgeData() => _singleton;
  BodyMassIndexForAgeData._()
      : _data = (json.decode(_bmianthro) as Map<String, dynamic>).map(
          (k1, v1) => MapEntry(
            k1,
            _BodyMassIndexForAgeGender(
              ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
                v2 as Map<String, dynamic>;
                return MapEntry(
                  k2,
                  _BodyMassIndexForAgeLMS(
                    lms: (l: v2['l'], m: v2['m'], s: v2['s']),
                    loh: v2['loh'].toString().toLowerCase() == 'l'
                        ? LengthHeigthMeasurementPosition.recumbent
                        : LengthHeigthMeasurementPosition.standing,
                  ),
                );
              }),
            ),
          ),
        );

  static final _singleton = BodyMassIndexForAgeData._();

  final Map<String, _BodyMassIndexForAgeGender> _data;
}

class BodyMassIndexMeasurement {
  const BodyMassIndexMeasurement._(this.value, {required this.age});

  factory BodyMassIndexMeasurement.fromMeasurement({
    required Length lengthHeight,
    required Mass weight,
    required LengthHeigthMeasurementPosition measure,
    required Age age,
  }) {
    final toMeterSquare = pow(
      Centimeters(
        adjustedLengthHeight(
          ageInDays: age.ageInTotalDaysByNow,
          measure: measure,
          lengthHeight: lengthHeight.toCentimeters.value!,
        ),
      ).toMeters.value!,
      2,
    );
    final toKg = weight.toKilograms.value!;

    return BodyMassIndexMeasurement._(toKg / toMeterSquare, age: age);
  }

  factory BodyMassIndexMeasurement.fromValue(num value, {required Age age}) =>
      BodyMassIndexMeasurement._(value, age: age);

  final num value;

  final Age age;
}

@freezed
class BodyMassIndexForAge with _$BodyMassIndexForAge {
  @Assert(
    'bodyMassIndexMeasurement.age.ageInTotalDaysByNow >= 0 && bodyMassIndexMeasurement.age.ageInTotalDaysByNow <= 1856',
    'Age must be in range of 0 - 1856 days',
  )
  factory BodyMassIndexForAge({
    Date? observationDate,
    required Sex sex,
    required BodyMassIndexMeasurement bodyMassIndexMeasurement,
    required BodyMassIndexForAgeData bodyMassIndexData,
  }) = _BodyMassIndexForAge;

  const BodyMassIndexForAge._();

  _BodyMassIndexForAgeGender get _maleData => bodyMassIndexData._data['1']!;
  _BodyMassIndexForAgeGender get _femaleData => bodyMassIndexData._data['2']!;

  _BodyMassIndexForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[_ageAtObservationDate.ageInTotalDaysByNow.toString()]!;

  num get _zScore => adjustedZScore(
        y: bodyMassIndexMeasurement.value,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  Age get _ageAtObservationDate => observationDate == null
      ? bodyMassIndexMeasurement.age
      : observationDate == Date.today()
          ? bodyMassIndexMeasurement.age
          : bodyMassIndexMeasurement.age.ageAtAnyPastDate(observationDate!);

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(_zScore).toDouble().toPrecision(2);
}

class _BodyMassIndexForAgeGender {
  _BodyMassIndexForAgeGender({required this.ageData});

  final Map<String, _BodyMassIndexForAgeLMS> ageData;
}

class _BodyMassIndexForAgeLMS {
  _BodyMassIndexForAgeLMS({
    required this.lms,
    required this.loh,
  });
  final LMS lms;
  final LengthHeigthMeasurementPosition loh;
}
