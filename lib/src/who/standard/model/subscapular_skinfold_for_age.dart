part of '../standard.dart';

class SubscapularSkinfoldForAgeData {
  factory SubscapularSkinfoldForAgeData() => _singleton;
  SubscapularSkinfoldForAgeData._()
      : _data = (json.decode(_ssanthro) as Map<String, dynamic>).map(
          (k1, v1) => MapEntry(
            k1,
            SubscapularSkinfoldAgeGender(
              ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
                v2 as Map<String, dynamic>;
                return MapEntry(
                  k2,
                  SubscapularSkinfoldForAgeLMS(
                    lms: (l: v2['l'], m: v2['m'], s: v2['s']),
                  ),
                );
              }),
            ),
          ),
        );

  static final _singleton = SubscapularSkinfoldForAgeData._();

  final Map<String, SubscapularSkinfoldAgeGender> _data;
}

class SubscapularSkinfoldForAge {
  SubscapularSkinfoldForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
    required SubscapularSkinfoldForAgeData subscapularSkinfoldData,
  })  : _measurementResult = measurementResult,
        _sex = sex,
        _age = age,
        _mapGender = subscapularSkinfoldData._data {
    if (!(_age.ageInTotalDaysByNow >= 91 && _age.ageInTotalDaysByNow <= 1856)) {
      throw Exception('Age must be in range of 91 - 1856 days');
    }
  }

  final Sex _sex;
  final Age _age;
  final Length _measurementResult;
  final Map<String, SubscapularSkinfoldAgeGender> _mapGender;

  SubscapularSkinfoldAgeGender get _maleData => _mapGender['1']!;
  SubscapularSkinfoldAgeGender get _femaleData => _mapGender['2']!;

  SubscapularSkinfoldForAgeLMS get _ageData =>
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

class SubscapularSkinfoldAgeGender {
  SubscapularSkinfoldAgeGender({required this.ageData});
  final Map<String, SubscapularSkinfoldForAgeLMS> ageData;
}

class SubscapularSkinfoldForAgeLMS {
  SubscapularSkinfoldForAgeLMS({
    required this.lms,
  });
  final LMS lms;
}
