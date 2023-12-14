part of '../standard.dart';

class TricepsSkinfoldForAgeData {
  TricepsSkinfoldForAgeData()
      : _data = (json.decode(_tsanthro) as Map<String, dynamic>).map(
          (u, e) => MapEntry(
            u,
            TricepsSkinfoldAgeGender(
              ageData: (e as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  TricepsSkinfoldForAgeLMS(
                    lms: (l: y['l'], m: y['m'], s: y['s']),
                  ),
                );
              }),
            ),
          ),
        );

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
    if (!(_age.totalDays >= 91 && _age.totalDays <= 1856)) {
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
          .ageData[_age.totalDays.toString()]!;

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
