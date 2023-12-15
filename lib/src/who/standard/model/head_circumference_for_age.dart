part of '../standard.dart';

class HeadCircumferenceForAgeData {
  factory HeadCircumferenceForAgeData() => _singleton;
  HeadCircumferenceForAgeData._()
      : _data = (json.decode(_hcanthro) as Map<String, dynamic>).map(
          (k1, v1) => MapEntry(
            k1,
            HeadCircumferenceForAgeGender(
              ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
                v2 as Map<String, dynamic>;
                return MapEntry(
                  k2,
                  HeadCircumferenceForAgeLMS(
                    lms: (l: v2['l'], m: v2['m'], s: v2['s']),
                  ),
                );
              }),
            ),
          ),
        );

  static final _singleton = HeadCircumferenceForAgeData._();

  final Map<String, HeadCircumferenceForAgeGender> _data;
}

class HeadCircumferenceForAge {
  HeadCircumferenceForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
    required HeadCircumferenceForAgeData headCircumferenceData,
  })  : _measurementResult = measurementResult,
        _sex = sex,
        _age = age,
        _mapGender = headCircumferenceData._data {
    if (!(_age.ageInTotalDaysByNow >= 0 && _age.ageInTotalDaysByNow <= 1856)) {
      throw Exception('Age must be in range of 0 - 1856 days');
    }
  }

  final Sex _sex;
  final Age _age;
  final Length _measurementResult;
  final Map<String, HeadCircumferenceForAgeGender> _mapGender;

  HeadCircumferenceForAgeGender get _maleData => _mapGender['1']!;
  HeadCircumferenceForAgeGender get _femaleData => _mapGender['2']!;

  HeadCircumferenceForAgeLMS get _ageData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .ageData[_age.ageInTotalDaysByNow.toString()]!;

  num get _zScore => zscore(
        y: _measurementResult.toCentimeters.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(zScore).toDouble().toPrecision(2);
}

class HeadCircumferenceForAgeGender {
  HeadCircumferenceForAgeGender({required this.ageData});

  final Map<String, HeadCircumferenceForAgeLMS> ageData;
}

class HeadCircumferenceForAgeLMS {
  HeadCircumferenceForAgeLMS({
    required this.lms,
  });
  final LMS lms;
}
