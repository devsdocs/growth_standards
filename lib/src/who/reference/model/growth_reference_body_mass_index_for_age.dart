part of '../reference.dart';

class WHOGrowthReferenceBodyMassIndexForAgeData {
  factory WHOGrowthReferenceBodyMassIndexForAgeData() => _singleton;
  const WHOGrowthReferenceBodyMassIndexForAgeData._(this._data);

  static final _singleton =
      WHOGrowthReferenceBodyMassIndexForAgeData._(_parse());

  static Map<Sex, _WHOGrowthReferenceBodyMassIndexForAgeGender> _parse() =>
      _bmi5yo.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _WHOGrowthReferenceBodyMassIndexForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _WHOGrowthReferenceBodyMassIndexForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );

  final Map<Sex, _WHOGrowthReferenceBodyMassIndexForAgeGender> _data;
  Map<Sex, _WHOGrowthReferenceBodyMassIndexForAgeGender> get data => _data;

  @override
  String toString() => 'Body Mass Index For Age Data($_data)';
}

@freezed
class WHOGrowthReferenceBodyMassIndexMeasurement
    with _$WHOGrowthReferenceBodyMassIndexMeasurement {
  factory WHOGrowthReferenceBodyMassIndexMeasurement(num value) =
      _WHOGrowthReferenceBodyMassIndexMeasurement;
  const WHOGrowthReferenceBodyMassIndexMeasurement._();

  factory WHOGrowthReferenceBodyMassIndexMeasurement.fromMeasurement(
    BodyMassIndex bodyMassIndex,
  ) =>
      WHOGrowthReferenceBodyMassIndexMeasurement(bodyMassIndex.value);

  factory WHOGrowthReferenceBodyMassIndexMeasurement.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthReferenceBodyMassIndexMeasurementFromJson(json);
}

@freezed
class WHOGrowthReferenceBodyMassIndexForAge
    with _$WHOGrowthReferenceBodyMassIndexForAge {
  @Assert(
    'age.ageInTotalMonthsByNow >= 61 && age.ageInTotalMonthsByNow <= 228',
    'Age must be in range of 61 - 228 months',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrAfter(age.dateAtMonthsAfterBirth(61)) ',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory WHOGrowthReferenceBodyMassIndexForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required WHOGrowthReferenceBodyMassIndexMeasurement
        bodyMassIndexMeasurement,
  }) = _WHOGrowthReferenceBodyMassIndexForAge;

  const WHOGrowthReferenceBodyMassIndexForAge._();

  factory WHOGrowthReferenceBodyMassIndexForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthReferenceBodyMassIndexForAgeFromJson(json);

  WHOGrowthReferenceBodyMassIndexForAgeData get _bodyMassIndexData =>
      WHOGrowthReferenceBodyMassIndexForAgeData();

  _WHOGrowthReferenceBodyMassIndexForAgeGender get _maleData =>
      _bodyMassIndexData._data[Sex.male]!;
  _WHOGrowthReferenceBodyMassIndexForAgeGender get _femaleData =>
      _bodyMassIndexData._data[Sex.female]!;

  _WHOGrowthReferenceBodyMassIndexForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[_ageAtObservationDate.ageInTotalMonthsByNow]!;

  num get _zScore =>
      _ageData.lms.adjustedZScore(bodyMassIndexMeasurement.value);

  Age get _ageAtObservationDate => observationDate == null
      ? age
      : observationDate == Date.today()
          ? age
          : age.ageAtPastDate(observationDate!);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);
}

class _WHOGrowthReferenceBodyMassIndexForAgeGender {
  _WHOGrowthReferenceBodyMassIndexForAgeGender({required this.ageData});
  final Map<int, _WHOGrowthReferenceBodyMassIndexForAgeLMS> ageData;

  @override
  String toString() => 'Gender Data($ageData)';
}

class _WHOGrowthReferenceBodyMassIndexForAgeLMS {
  _WHOGrowthReferenceBodyMassIndexForAgeLMS({
    required this.lms,
    required this.percentileCutOff,
    required this.standardDeviationCutOff,
  });
  final LMS lms;

  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Age Data(LMS: $lms, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
