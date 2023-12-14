part of '../reference.dart';

class GrowthReferenceWeightForAgeData {
  GrowthReferenceWeightForAgeData()
      : _data = (json.decode(_wfa5yo) as Map<String, dynamic>).map(
          (u, e) => MapEntry(
            u,
            GrowthReferenceWeightForAgeGender(
              ageData: (e as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  GrowthReferenceWeightForAgeLMS(
                    lms: (l: y['l'], m: y['m'], s: y['s']),
                  ),
                );
              }),
            ),
          ),
        );

  final Map<String, GrowthReferenceWeightForAgeGender> _data;
}

class GrowthReferenceWeightForAge {
  GrowthReferenceWeightForAge({
    required Sex sex,
    required Age age,
    required Mass weight,
    required GrowthReferenceWeightForAgeData weightForAgeData,
  })  : _measurementResult = weight,
        _sex = sex,
        _age = age,
        _mapGender = weightForAgeData._data {
    if (!(_age.totalMonths >= 61 && _age.totalMonths <= 120)) {
      throw Exception('Age must be in range of 61 - 120 months');
    }
  }

  final Sex _sex;
  final Age _age;
  final Mass _measurementResult;
  final Map<String, GrowthReferenceWeightForAgeGender> _mapGender;

  GrowthReferenceWeightForAgeGender get _maleData => _mapGender['1']!;
  GrowthReferenceWeightForAgeGender get _femaleData => _mapGender['2']!;

  GrowthReferenceWeightForAgeLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .ageData[_age.totalMonths.toString()]!;

  num get _zScore => adjustedZScore(
        y: _measurementResult.toKilograms.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(_zScore).toDouble().toPrecision(2);
}

class GrowthReferenceWeightForAgeGender {
  GrowthReferenceWeightForAgeGender({required this.ageData});

  final Map<String, GrowthReferenceWeightForAgeLMS> ageData;
}

class GrowthReferenceWeightForAgeLMS {
  GrowthReferenceWeightForAgeLMS({required this.lms});
  final LMS lms;
}
