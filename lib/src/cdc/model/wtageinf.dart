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
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
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
sealed class CDCInfantWeightForAge extends AgeBasedResult
    with _$CDCInfantWeightForAge {
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
    required Mass weight,
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
//TODO(devsdocs): Fix CDC age calculation
  _CDCInfantWeightForAgeLMS get _ageData {
    final finalAge = ageAtObservationDate.ageInTotalDaysByNow == 0
        ? 0
        : ageAtObservationDate.ageInTotalMonthsByNow == 36
            ? 36
            : ageAtObservationDate.ageInTotalMonthsByNow + 0.5;

    return (sex == Sex.male ? _maleData : _femaleData).ageData[finalAge]!;
  }

  num get _zScore => _ageData.lms.zScore(weight.toKilogram.value);

  @override
  Age get ageAtObservationDate => checkObservationDate(age, observationDate);

  @override
  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  @override
  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _CDCInfantWeightForAgeLMS get ageData => _ageData;
}

class _CDCInfantWeightForAgeGender {
  _CDCInfantWeightForAgeGender({required this.ageData});

  final Map<double, _CDCInfantWeightForAgeLMS> ageData;
  @override
  String toString() => 'Gender Data($ageData)';
}

class _CDCInfantWeightForAgeLMS extends LMSBasedResult {
  _CDCInfantWeightForAgeLMS({
    required this.lms,
    required this.percentileCutOff,
    required this.standardDeviationCutOff,
  });
  @override
  final LMS lms;

  @override
  final ZScoreCutOff standardDeviationCutOff;

  @override
  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Age Data(LMS: $lms, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
