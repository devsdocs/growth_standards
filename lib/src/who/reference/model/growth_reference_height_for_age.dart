part of '../reference.dart';

class GrowthReferenceHeightForAgeData {
  GrowthReferenceHeightForAgeData()
      : _data = (json.decode(_hfa5yo) as Map<String, dynamic>).map(
          (u, e) => MapEntry(
            u,
            GrowthReferenceHeightForAgeGender(
              ageData: (e as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  GrowthReferenceHeightForAgeLMS(
                    lms: (l: y['l'], m: y['m'], s: y['s']),
                  ),
                );
              }),
            ),
          ),
        );

  final Map<String, GrowthReferenceHeightForAgeGender> _data;
}

class GrowthReferenceHeightForAge {
  GrowthReferenceHeightForAge({
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required GrowthReferenceHeightForAgeData lengthForAgeData,
  })  : _lengthHeight = lengthHeight,
        _sex = sex,
        _age = age,
        _mapGender = lengthForAgeData._data {
    if (!(_age.totalMonths >= 61 && _age.totalMonths <= 228)) {
      throw Exception('Age must be in range of 61 - 228 months');
    }
  }

  final Sex _sex;
  final Age _age;
  final Length _lengthHeight;

  final Map<String, GrowthReferenceHeightForAgeGender> _mapGender;

  GrowthReferenceHeightForAgeGender get _maleData => _mapGender['1']!;
  GrowthReferenceHeightForAgeGender get _femaleData => _mapGender['2']!;

  GrowthReferenceHeightForAgeLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .ageData[_age.totalMonths.toString()]!;

  num get _zScore => zscore(
        y: _lengthHeight.toCentimeters.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(_zScore).toDouble().toPrecision(2);
}

class GrowthReferenceHeightForAgeGender {
  GrowthReferenceHeightForAgeGender({required this.ageData});
  final Map<String, GrowthReferenceHeightForAgeLMS> ageData;
}

class GrowthReferenceHeightForAgeLMS {
  GrowthReferenceHeightForAgeLMS({required this.lms});
  final LMS lms;
}
