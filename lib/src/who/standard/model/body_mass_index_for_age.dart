part of '../standard.dart';

class BodyMassIndexForAgeData {
  factory BodyMassIndexForAgeData() => _singleton;
  BodyMassIndexForAgeData._()
      : _data = (json.decode(_bmianthro) as Map<String, dynamic>).map(
          (k1, v1) => MapEntry(
            k1,
            BodyMassIndexForAgeGender(
              ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
                v2 as Map<String, dynamic>;
                return MapEntry(
                  k2,
                  BodyMassIndexForAgeLMS(
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

  final Map<String, BodyMassIndexForAgeGender> _data;
}

class BodyMassIndexMeasurement {
  const BodyMassIndexMeasurement._(this.value, {required Age age}) : _age = age;

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

  final Age _age;
}

class BodyMassIndexForAge {
  BodyMassIndexForAge({
    required Sex sex,
    required BodyMassIndexMeasurement bodyMassIndexMeasurement,
    required BodyMassIndexForAgeData bodyMassIndexData,
  })  : _bodyMassIndexMeasurement = bodyMassIndexMeasurement,
        _sex = sex,
        _age = bodyMassIndexMeasurement._age,
        _mapGender = bodyMassIndexData._data {
    if (!(_age.ageInTotalDaysByNow >= 0 && _age.ageInTotalDaysByNow <= 1856)) {
      throw Exception('Age must be in range of 0 - 1856 days');
    }
  }

  final Sex _sex;
  final Age _age;
  final BodyMassIndexMeasurement _bodyMassIndexMeasurement;

  final Map<String, BodyMassIndexForAgeGender> _mapGender;

  BodyMassIndexForAgeGender get _maleData => _mapGender['1']!;
  BodyMassIndexForAgeGender get _femaleData => _mapGender['2']!;

  BodyMassIndexForAgeLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .ageData[_age.ageInTotalDaysByNow.toString()]!;

  num get _zScore => adjustedZScore(
        y: _bodyMassIndexMeasurement.value,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(_zScore).toDouble().toPrecision(2);
}

class BodyMassIndexForAgeGender {
  BodyMassIndexForAgeGender({required this.ageData});

  final Map<String, BodyMassIndexForAgeLMS> ageData;
}

class BodyMassIndexForAgeLMS {
  BodyMassIndexForAgeLMS({
    required this.lms,
    required this.loh,
  });
  final LMS lms;
  final LengthHeigthMeasurementPosition loh;
}
