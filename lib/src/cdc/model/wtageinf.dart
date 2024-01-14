part of '../cdc.dart';

class CDCInfantWeightForAgeData {
  factory CDCInfantWeightForAgeData() => _singleton;
  const CDCInfantWeightForAgeData._(this._data);

  static final _singleton = CDCInfantWeightForAgeData._(_parse());

  static Map<Sex, _CDCInfantWeightForAgeGender> _parse() =>
      cdcwtageinf.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _CDCInfantWeightForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                double.parse(k2),
                _CDCInfantWeightForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _CDCInfantWeightForAgeGender> _data;
  Map<Sex, _CDCInfantWeightForAgeGender> get data => _data;

  @override
  String toString() => 'Infant Weight For Age Data($_data)';
}

@freezed
class CDCInfantWeightForAge with _$CDCInfantWeightForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalMonthsByNow <= 36',
    'Age must be in range of 0 - 36 months',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory CDCInfantWeightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @MassConverter() required Mass weight,
  }) = _CDCInfantWeightForAge;

  const CDCInfantWeightForAge._();

  factory CDCInfantWeightForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CDCInfantWeightForAgeFromJson(json);

  CDCInfantWeightForAgeData get _weightForAgeData =>
      CDCInfantWeightForAgeData();

  _CDCInfantWeightForAgeGender get _maleData =>
      _weightForAgeData._data[Sex.male]!;
  _CDCInfantWeightForAgeGender get _femaleData =>
      _weightForAgeData._data[Sex.female]!;

  _CDCInfantWeightForAgeLMS get _ageData {
    final finalAge = _ageAtObservationDate.ageInTotalDaysByNow == 0
        ? 0
        : _ageAtObservationDate.ageInTotalMonthsByNow == 36
            ? 36
            : _ageAtObservationDate.ageInTotalMonthsByNow + 0.5;

    return (sex == Sex.male ? _maleData : _femaleData).ageData[finalAge]!;
  }

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

class _CDCInfantWeightForAgeGender {
  _CDCInfantWeightForAgeGender({required this.ageData});

  final Map<double, _CDCInfantWeightForAgeLMS> ageData;
  @override
  String toString() => 'Gender Data($ageData)';
}

class _CDCInfantWeightForAgeLMS {
  _CDCInfantWeightForAgeLMS({
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
