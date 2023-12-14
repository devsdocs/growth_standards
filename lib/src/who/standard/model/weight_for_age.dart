part of '../standard.dart';

class WeightForAgeData {
  factory WeightForAgeData() => _singleton;
  WeightForAgeData._()
      : _data = (json.decode(_weianthro) as Map<String, dynamic>).map(
          (u, e) => MapEntry(
            u,
            WeightForAgeGender(
              ageData: (e as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  WeightForAgeLMS(lms: (l: y['l'], m: y['m'], s: y['s'])),
                );
              }),
            ),
          ),
        );

  static final _singleton = WeightForAgeData._();

  final Map<String, WeightForAgeGender> _data;
}

class WeightForAge {
  WeightForAge({
    required Sex sex,
    required Age age,
    required Mass weight,
    required WeightForAgeData weightForAgeData,
  })  : _measurementResult = weight,
        _sex = sex,
        _age = age,
        _mapGender = weightForAgeData._data {
    if (!(_age.totalDays >= 0 && _age.totalDays <= 1856)) {
      throw Exception('Age must be in range of 0 - 1856 days');
    }
  }

  final Sex _sex;
  final Age _age;
  final Mass _measurementResult;
  final Map<String, WeightForAgeGender> _mapGender;

  WeightForAgeGender get _maleData => _mapGender['1']!;
  WeightForAgeGender get _femaleData => _mapGender['2']!;

  WeightForAgeLMS get _ageData => (_sex == Sex.male ? _maleData : _femaleData)
      .ageData[_age.totalDays.toString()]!;

  num get _zScore => adjustedZScore(
        y: _measurementResult.toKilograms.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(_zScore).toDouble().toPrecision(2);
}

class WeightForAgeGender {
  WeightForAgeGender({required this.ageData});

  final Map<String, WeightForAgeLMS> ageData;
}

class WeightForAgeLMS {
  WeightForAgeLMS({
    required this.lms,
  });
  final LMS lms;
}
