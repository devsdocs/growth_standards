part of '../standard.dart';

class TricepsSkinfoldForAgeData {
  factory TricepsSkinfoldForAgeData() => _singleton;
  TricepsSkinfoldForAgeData._()
      : _data = (json.decode(_tsanthro) as Map<String, dynamic>).map(
          (k1, v1) => MapEntry(
            k1,
            TricepsSkinfoldAgeGender(
              ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
                v2 as Map<String, dynamic>;
                return MapEntry(
                  k2,
                  TricepsSkinfoldForAgeLMS(
                    lms: (l: v2['l'], m: v2['m'], s: v2['s']),
                  ),
                );
              }),
            ),
          ),
        );

  static final _singleton = TricepsSkinfoldForAgeData._();

  final Map<String, TricepsSkinfoldAgeGender> _data;
}

class TricepsSkinfoldForAge {
  TricepsSkinfoldForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
    required TricepsSkinfoldForAgeData tricepsSkinfoldData,
  })  : _measurementResult = measurementResult,
        _sex = sex,
        _age = age,
        _mapGender = tricepsSkinfoldData._data {
    if (!(_age.ageInTotalDaysByNow >= 91 && _age.ageInTotalDaysByNow <= 1856)) {
      throw Exception('Age must be in range of 91 - 1856 days');
    }
  }

  final Sex _sex;
  final Age _age;
  final Length _measurementResult;
  final Map<String, TricepsSkinfoldAgeGender> _mapGender;

  TricepsSkinfoldAgeGender get _maleData => _mapGender['1']!;
  TricepsSkinfoldAgeGender get _femaleData => _mapGender['2']!;

  TricepsSkinfoldForAgeLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .ageData[_age.ageInTotalDaysByNow.toString()]!;

  num get _zScore => adjustedZScore(
        y: _measurementResult.toCentimeters.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(_zScore).toDouble().toPrecision(2);
}

class TricepsSkinfoldAgeGender {
  TricepsSkinfoldAgeGender({required this.ageData});
  final Map<String, TricepsSkinfoldForAgeLMS> ageData;
}

class TricepsSkinfoldForAgeLMS {
  TricepsSkinfoldForAgeLMS({
    required this.lms,
  });
  final LMS lms;
}
