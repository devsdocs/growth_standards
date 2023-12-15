part of '../standard.dart';

class WeightForHeightData {
  factory WeightForHeightData() => _singleton;
  WeightForHeightData._()
      : _data = (json.decode(_wfhanthro) as Map<String, dynamic>).map(
          (k1, v1) => MapEntry(
            k1,
            WeightForHeightGender(
              heightData: (v1 as Map<String, dynamic>).map((k2, v2) {
                v2 as Map<String, dynamic>;
                return MapEntry(
                  k2,
                  WeightForHeightLMS(
                    lms: (l: v2['l'], m: v2['m'], s: v2['s']),
                    lorh: v2['lorh'].toString().toLowerCase() == 'l'
                        ? LengthHeigthMeasurementPosition.recumbent
                        : LengthHeigthMeasurementPosition.standing,
                  ),
                );
              }),
            ),
          ),
        );

  static final _singleton = WeightForHeightData._();

  final Map<String, WeightForHeightGender> _data;
}

class WeightForHeight {
  WeightForHeight({
    required Sex sex,
    required Age age,
    required Length height,
    required Mass mass,
    required LengthHeigthMeasurementPosition measure,
    required WeightForHeightData weightForHeightData,
  })  : _lengthHeight = height,
        _measure = measure,
        _sex = sex,
        _mass = mass,
        _age = age,
        _mapGender = weightForHeightData._data {
    if (!(_adjustedHeight >= 65 && _adjustedHeight <= 120)) {
      if (height.toCentimeters.value! >= 65 &&
          height.toCentimeters.value! <= 120) {
        throw Exception('Please correcting measurement position based on age');
      } else {
        throw Exception('Height must be in range of 65 - 120 cm');
      }
    }
  }

  final Sex _sex;
  final Age _age;
  final Length _lengthHeight;
  final Mass _mass;
  final LengthHeigthMeasurementPosition _measure;
  final Map<String, WeightForHeightGender> _mapGender;

  num get _adjustedHeight => adjustedLengthHeight(
        measure: _measure,
        ageInDays: _age.ageInTotalDaysByNow,
        lengthHeight: _lengthHeight.toCentimeters.value!,
      );

  WeightForHeightGender get _maleData => _mapGender['1']!;
  WeightForHeightGender get _femaleData => _mapGender['2']!;

  WeightForHeightLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .heightData[_adjustedHeight.toDouble().toPrecision(1).toString()]!;

  num get _zScore => adjustedZScore(
        y: _mass.toKilograms.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(_zScore).toDouble().toPrecision(2);
}

class WeightForHeightGender {
  WeightForHeightGender({required this.heightData});

  final Map<String, WeightForHeightLMS> heightData;
}

class WeightForHeightLMS {
  WeightForHeightLMS({
    required this.lms,
    required this.lorh,
  });
  final LMS lms;
  final LengthHeigthMeasurementPosition lorh;
}
