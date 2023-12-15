part of '../standard.dart';

class ArmCircumferenceForAgeData {
  factory ArmCircumferenceForAgeData() => _singleton;
  ArmCircumferenceForAgeData._()
      : _data = (json.decode(_acanthro) as Map<String, dynamic>).map(
          (k1, v1) => MapEntry(
            k1,
            ArmCircumferenceForAgeGender(
              ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
                v2 as Map<String, dynamic>;
                return MapEntry(
                  k2,
                  ArmCircumferenceForAgeLMS(
                    lms: (l: v2['l'], m: v2['m'], s: v2['s']),
                  ),
                );
              }),
            ),
          ),
        );

  static final _singleton = ArmCircumferenceForAgeData._();

  final Map<String, ArmCircumferenceForAgeGender> _data;
}

class ArmCircumferenceForAge {
  ArmCircumferenceForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
    required ArmCircumferenceForAgeData armCircumferenceData,
  })  : _measurementResult = measurementResult,
        _sex = sex,
        _age = age,
        _mapGender = armCircumferenceData._data {
    if (!(_age.totalDays >= 91 && _age.totalDays <= 1856)) {
      throw Exception('Age must be in range of 91 - 1856 days');
    }
  }

  final Sex _sex;
  final Age _age;
  final Length _measurementResult;
  final Map<String, ArmCircumferenceForAgeGender> _mapGender;

  ArmCircumferenceForAgeGender get _maleData => _mapGender['1']!;
  ArmCircumferenceForAgeGender get _femaleData => _mapGender['2']!;

  ArmCircumferenceForAgeLMS get _ageData =>
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

class ArmCircumferenceForAgeGender {
  ArmCircumferenceForAgeGender({required this.ageData});

  final Map<String, ArmCircumferenceForAgeLMS> ageData;
}

class ArmCircumferenceForAgeLMS {
  ArmCircumferenceForAgeLMS({required this.lms});
  final LMS lms;
}
