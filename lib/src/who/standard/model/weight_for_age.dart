part of '../standard.dart';

class WeightForAgeData {
  factory WeightForAgeData() => _singleton;
  WeightForAgeData._()
      : _data = (json.decode(_weianthro) as Map<String, dynamic>).map(
          (k1, v1) => MapEntry(
            k1,
            WeightForAgeGender(
              ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
                v2 as Map<String, dynamic>;
                return MapEntry(
                  k2,
                  WeightForAgeLMS(lms: (l: v2['l'], m: v2['m'], s: v2['s'])),
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
    if (!(_age.ageInTotalDaysByNow >= 0 && _age.ageInTotalDaysByNow <= 1856)) {
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
      .ageData[_age.ageInTotalDaysByNow.toString()]!;

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
