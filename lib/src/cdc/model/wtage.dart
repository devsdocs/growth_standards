part of '../cdc.dart';

class CDCWeightForAgeData {
  factory CDCWeightForAgeData() => _singleton;
  const CDCWeightForAgeData._(this._data);

  static final _singleton = CDCWeightForAgeData._(_parse());

  static Map<Sex, _CDCWeightForAgeGender> _parse() =>
      cdcwtage.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _CDCWeightForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                double.parse(k2),
                _CDCWeightForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _CDCWeightForAgeGender> _data;
  Map<Sex, _CDCWeightForAgeGender> get data => _data;

  @override
  String toString() => 'Weight For Age Data($_data)';
}

@freezed
class CDCWeightForAge with _$CDCWeightForAge {
  @Assert(
    'age.ageInTotalMonthsByNow >= 24 && age.ageInTotalMonthsByNow <= 240',
    'Age must be in range of 24 - 240 months',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrAfter(age.dateAtMonthsAfterBirth(24)) ',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory CDCWeightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @MassConverter() required Mass weight,
  }) = _CDCWeightForAge;

  const CDCWeightForAge._();

  factory CDCWeightForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CDCWeightForAgeFromJson(json);

  CDCWeightForAgeData get _weightForAgeData => CDCWeightForAgeData();

  _CDCWeightForAgeGender get _maleData => _weightForAgeData._data[Sex.male]!;
  _CDCWeightForAgeGender get _femaleData =>
      _weightForAgeData._data[Sex.female]!;

  _CDCWeightForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData).ageData[
          _ageAtObservationDate.ageInTotalMonthsByNow == 24
              ? 24
              : _ageAtObservationDate.ageInTotalMonthsByNow == 240
                  ? 240
                  : _ageAtObservationDate.ageInTotalMonthsByNow + 0.5]!;

  num get _zScore => _ageData.lms.zScore(weight.toKilograms.value!);

  Age get _ageAtObservationDate => checkObservationDate(age, observationDate);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);
}

class _CDCWeightForAgeGender {
  _CDCWeightForAgeGender({required this.ageData});

  final Map<double, _CDCWeightForAgeLMS> ageData;
  @override
  String toString() => 'Gender Data($ageData)';
}

class _CDCWeightForAgeLMS {
  _CDCWeightForAgeLMS({
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
