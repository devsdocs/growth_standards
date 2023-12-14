part of '../standard.dart';

class ArmCircumferenceForAgeData {
  ArmCircumferenceForAgeData()
      : _data = (json.decode(_acanthro) as Map<String, dynamic>).map(
          (k, v) => MapEntry(
            k,
            ArmCircumferenceForAgeGender(
              ageData: (v as Map<String, dynamic>).map((x, y) {
                y as Map<String, dynamic>;
                return MapEntry(
                  x,
                  ArmCircumferenceForAgeLMS(
                    lms: (l: y['l'], m: y['m'], s: y['s']),
                  ),
                );
              }),
            ),
          ),
        );

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

  num get zScore => adjustedZScore(
        y: _measurementResult.toCentimeters.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get percentile => zScoreToPercentile(zScore);
}

class ArmCircumferenceForAgeGender {
  ArmCircumferenceForAgeGender({required this.ageData});

  final Map<String, ArmCircumferenceForAgeLMS> ageData;
}

class ArmCircumferenceForAgeLMS {
  ArmCircumferenceForAgeLMS({required this.lms});
  final LMS lms;
}
