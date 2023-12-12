import 'dart:convert';

import 'package:who_growth_standards/src/math.dart';
import 'package:who_growth_standards/src/model/common.dart';
import 'package:who_growth_standards/src/typedef.dart';
import 'package:who_growth_standards/src/types.dart';

part '../data/acanthro.dart';

class ArmCircumferenceData {
  ArmCircumferenceData()
      : data = (json.decode(_acanthro) as List<dynamic>).map((e) {
          e as Map<String, dynamic>;
          return ArmCircumferenceGender(
            sex: e['sex'] as int == 1 ? Sex.male : Sex.female,
            genderData: (e['data'] as List<dynamic>).map((x) {
              x as Map<String, dynamic>;
              return ArmCircumferenceAge(
                ageInDays: AgeInDays(x['age'] as num),
                lms: (l: x['l'], m: x['m'], s: x['s']),
              );
            }).toList(),
          );
        }).toList();

  List<ArmCircumferenceGender> data;
}

class ArmCircumference {
  ArmCircumference({
    required Sex sex,
    required DateOfBirth dateOfBirth,
    required MeasurementResult measurementResult,
    required ArmCircumferenceData armCircumferenceData,
  })  : _measurementResult = measurementResult,
        _sex = sex,
        _age = Age(dateOfBirth),
        _mapGender = armCircumferenceData.data;

  final Sex _sex;
  final Age _age;
  final MeasurementResult _measurementResult;
  final List<ArmCircumferenceGender> _mapGender;

  ArmCircumferenceGender get _maleData =>
      _mapGender.singleWhere((element) => element.sex == Sex.male);
  ArmCircumferenceGender get _femaleData =>
      _mapGender.singleWhere((element) => element.sex == Sex.female);

  ArmCircumferenceAge get _genderData =>
      (_sex == Sex.male ? _maleData : _femaleData)
          .genderData
          .singleWhere((element) => element.ageInDays.value == _age.totalDays);

  num get zScore => adjustedZScore(
        y: _measurementResult.value,
        l: _genderData.lms.l,
        m: _genderData.lms.m,
        s: _genderData.lms.s,
      );
}

class ArmCircumferenceGender {
  ArmCircumferenceGender({required this.sex, required this.genderData});

  final Sex sex;
  final List<ArmCircumferenceAge> genderData;
}

class ArmCircumferenceAge {
  ArmCircumferenceAge({required this.ageInDays, required this.lms});
  final LMS lms;
  final AgeInDays ageInDays;
}
