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

@copyWith
@props
class ArmCircumferenceForAge extends Equatable {
  ArmCircumferenceForAge({
    this.observationDate,
    required this.sex,
    required this.age,
    required this.measurementResult,
    @propsExclude required this.armCircumferenceData,
  }) {
    if (!(age.ageInTotalDaysByNow >= minimalAgeInDays &&
        age.ageInTotalDaysByNow <= maximalAgeInDays)) {
      throw Exception(
        'Age must be in range of $minimalAgeInDays - $maximalAgeInDays days',
      );
    }

    if (observationDate != null) {
      if (observationDate!.isAfter(Date.today()) ||
          observationDate!.isBefore(age.dateOfBirth)) {
        throw Exception(
          'Observation date => $observationDate is impossible, because happen after ${Date.today()} or before ${age.dateOfBirth}',
        );
      }
      if (observationDate!
          .isBefore(age.dateAtDaysAfterBirth(minimalAgeInDays))) {
        throw Exception(
          'Observation date => $observationDate is impossible because less than mininum age requirement $minimalAgeInDays at the moment of observation',
        );
      }
    }
  }

  static const minimalAgeInDays = 91;
  static const maximalAgeInDays = 1856;

  final Sex sex;
  final Age age;
  final Date? observationDate;
  final Length measurementResult;
  final ArmCircumferenceForAgeData armCircumferenceData;

  ArmCircumferenceForAgeGender get _maleData =>
      armCircumferenceData._data['1']!;
  ArmCircumferenceForAgeGender get _femaleData =>
      armCircumferenceData._data['2']!;

  ArmCircumferenceForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[ageAtObservationDate.ageInTotalDaysByNow.toString()]!;

  num get _zScore => adjustedZScore(
        y: measurementResult.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  Age get ageAtObservationDate => observationDate == null
      ? age
      : observationDate == Date.today()
          ? age
          : age.ageAtAnyPastDate(observationDate!);

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(_zScore).toDouble().toPrecision(2);

  @override
  List<Object?> get props => _$ArmCircumferenceForAgeProps(this);
}

class ArmCircumferenceForAgeGender {
  ArmCircumferenceForAgeGender({required this.ageData});

  final Map<String, ArmCircumferenceForAgeLMS> ageData;
}

class ArmCircumferenceForAgeLMS {
  ArmCircumferenceForAgeLMS({required this.lms});
  final LMS lms;
}
