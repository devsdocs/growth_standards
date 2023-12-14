part of '../standard.dart';

class WeigthForLengthData {
  WeigthForLengthData()
      : _data = (json.decode(_wflanthro) as Map<String, dynamic>).map(
          (u, e) => MapEntry(
            u,
            WeigthForLengthGender(
              lengthData: (e as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  WeigthForLengthLMS(
                    lms: (l: y['l'], m: y['m'], s: y['s']),
                    lorh: y['lorh'].toString().toLowerCase() == 'l'
                        ? LengthHeigthMeasurementPosition.recumbent
                        : LengthHeigthMeasurementPosition.standing,
                  ),
                );
              }),
            ),
          ),
        );

  final Map<String, WeigthForLengthGender> _data;
}

class WeigthForLength {
  WeigthForLength({
    required Sex sex,
    required Length lengthMeasurementResult,
    required Mass massMeasurementResult,
    required Age age,
    required LengthHeigthMeasurementPosition measure,
    required WeigthForLengthData weigthForLengthData,
  })  : _lengthHeight = lengthMeasurementResult,
        _weight = massMeasurementResult,
        _measure = measure,
        _sex = sex,
        _age = age,
        _mapGender = weigthForLengthData._data {
    if (!(_adjustedLength >= 45 && _adjustedLength <= 110)) {
      if (lengthMeasurementResult.toCentimeters.value! >= 45 &&
          lengthMeasurementResult.toCentimeters.value! <= 110) {
        throw Exception('Please correcting measurement position based on age');
      } else {
        throw Exception('Length must be in range of 45 - 110 cm');
      }
    }
  }

  final Sex _sex;
  final Age _age;
  final Length _lengthHeight;
  final Mass _weight;
  final LengthHeigthMeasurementPosition _measure;
  final Map<String, WeigthForLengthGender> _mapGender;

  num get _adjustedLength => adjustedLengthHeight(
        measure: _measure,
        ageInDays: _age.totalDays,
        lengthHeight: _lengthHeight.toCentimeters.value!,
      );

  WeigthForLengthGender get _maleData => _mapGender['1']!;
  WeigthForLengthGender get _femaleData => _mapGender['2']!;

  WeigthForLengthLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .lengthData[_adjustedLength.toDouble().toPrecision(1).toString()]!;

  num get zScore => adjustedZScore(
        y: _weight.toKilograms.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get percentile => zScoreToPercentile(zScore);
}

class WeigthForLengthGender {
  WeigthForLengthGender({required this.lengthData});

  final Map<String, WeigthForLengthLMS> lengthData;
}

class WeigthForLengthLMS {
  WeigthForLengthLMS({
    required this.lms,
    required this.lorh,
  });
  final LMS lms;
  final LengthHeigthMeasurementPosition lorh;
}
