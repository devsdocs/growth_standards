import 'dart:convert';

import 'package:who_growth_chart/src/math.dart';
import 'package:who_growth_chart/src/model/common.dart';
import 'package:who_growth_chart/src/typedef.dart';
import 'package:who_growth_chart/src/types.dart';

part '../data/bmianthro.dart';

class BodyMassIndexData {
  BodyMassIndexData()
      : data = (json.decode(_bmianthro) as List<dynamic>).map((e) {
          e as Map<String, dynamic>;
          return BodyMassIndexGender(
            sex: e['sex'] as int == 1 ? Sex.male : Sex.female,
            genderData: (e['data'] as List<dynamic>).map((x) {
              x as Map<String, dynamic>;
              return BodyMassIndexAge(
                ageInDays: AgeInDays(x['age'] as num),
                lms: (l: x['l'], m: x['m'], s: x['s']),
                loh: x['loh'] as String,
              );
            }).toList(),
          );
        }).toList();

  final List<BodyMassIndexGender> data;
}

class BodyMassIndex {
  BodyMassIndex({
    required Sex sex,
    required DateOfBirth dateOfBirth,
    required MeasurementResult measurementResult,
    required BodyMassIndexData bodyMassIndexData,
  })  : _measurementResult = measurementResult,
        _sex = sex,
        _age = Age(dateOfBirth),
        _mapGender = bodyMassIndexData.data;

  final Sex _sex;
  final Age _age;
  final MeasurementResult _measurementResult;

  final List<BodyMassIndexGender> _mapGender;

  BodyMassIndexGender get _maleData =>
      _mapGender.singleWhere((element) => element.sex == Sex.male);
  BodyMassIndexGender get _femaleData =>
      _mapGender.singleWhere((element) => element.sex == Sex.female);

  BodyMassIndexAge get _genderData =>
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

class BodyMassIndexGender {
  BodyMassIndexGender({required this.sex, required this.genderData});

  final Sex sex;
  final List<BodyMassIndexAge> genderData;
}

class BodyMassIndexAge {
  BodyMassIndexAge({
    required this.ageInDays,
    required this.lms,
    required this.loh,
  });
  final LMS lms;
  final AgeInDays ageInDays;
  final String loh;
}
