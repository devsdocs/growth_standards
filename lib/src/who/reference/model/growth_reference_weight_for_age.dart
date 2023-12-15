part of '../reference.dart';

class GrowthReferenceWeightForAgeData {
  factory GrowthReferenceWeightForAgeData() => _singleton;
  GrowthReferenceWeightForAgeData._()
      : _data = (json.decode(_wfa5yo) as Map<String, dynamic>).map(
          (k1, v1) => MapEntry(
            k1,
            GrowthReferenceWeightForAgeGender(
              ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
                v2 as Map<String, dynamic>;
                return MapEntry(
                  k2,
                  GrowthReferenceWeightForAgeLMS(
                    lms: (l: v2['l'], m: v2['m'], s: v2['s']),
                  ),
                );
              }),
            ),
          ),
        );

  static final _singleton = GrowthReferenceWeightForAgeData._();

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
    if (!(_age.ageInTotalMonthsByNow >= 61 &&
        _age.ageInTotalMonthsByNow <= 120)) {
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
          .ageData[_age.ageInTotalMonthsByNow.toString()]!;

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
