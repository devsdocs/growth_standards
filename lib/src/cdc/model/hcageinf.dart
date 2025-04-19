part of '../cdc.dart';

class CDCInfantHeadCircumferenceForAgeData extends BaseData {
  factory CDCInfantHeadCircumferenceForAgeData() => _singleton;
  CDCInfantHeadCircumferenceForAgeData._(this._data);

  static final _singleton = CDCInfantHeadCircumferenceForAgeData._(_parse());

  static Map<Sex, Map<double, _CDCInfantHeadCircumferenceForAgeLMS>> _parse() =>
      cdchcageinf.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          (v1 as Map<String, dynamic>).map((k2, v2) {
            v2 as Map<String, dynamic>;
            final lms =
                LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
            return MapEntry(
              double.parse(k2),
              _CDCInfantHeadCircumferenceForAgeLMS(
                lms: lms,
                percentileCutOff: lms.percentileCutOff,
                standardDeviationCutOff: lms.stDevCutOff,
              ),
            );
          }),
        ),
      );

  final Map<Sex, Map<double, _CDCInfantHeadCircumferenceForAgeLMS>> _data;
  @override
  Map<Sex, Map<double, _CDCInfantHeadCircumferenceForAgeLMS>> get data => _data;

  @override
  String toString() => 'Infant Head Circumference For Age Data($_data)';
}

@freezed
sealed class CDCInfantHeadCircumferenceForAge extends AgeBasedResult
    with _$CDCInfantHeadCircumferenceForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalMonthsByNow <= 36',
    'Age must be in range of 0 - 36 months',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory CDCInfantHeadCircumferenceForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _HeadCircumferenceForAge;

  const CDCInfantHeadCircumferenceForAge._();

  factory CDCInfantHeadCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CDCInfantHeadCircumferenceForAgeFromJson(json);

  CDCInfantHeadCircumferenceForAgeData get _headCircumferenceData =>
      CDCInfantHeadCircumferenceForAgeData();

  Map<double, _CDCInfantHeadCircumferenceForAgeLMS> get _maleData =>
      _headCircumferenceData._data[Sex.male]!;
  Map<double, _CDCInfantHeadCircumferenceForAgeLMS> get _femaleData =>
      _headCircumferenceData._data[Sex.female]!;
//TODO(devsdocs): Fix CDC age calculation
  _CDCInfantHeadCircumferenceForAgeLMS get _ageData {
    final finalAge = ageAtObservationDate.ageInTotalDaysByNow == 0
        ? 0
        : ageAtObservationDate.ageInTotalMonthsByNow == 36
            ? 36
            : ageAtObservationDate.ageInTotalMonthsByNow + 0.5;

    return (sex == Sex.male ? _maleData : _femaleData)[finalAge]!;
  }

  num get _zScore => _ageData.lms.zScore(measurementResult.toCentimeter.value);

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
  _CDCInfantHeadCircumferenceForAgeLMS get ageData => _ageData;
}

class _CDCInfantHeadCircumferenceForAgeLMS extends LMSBasedResult {
  _CDCInfantHeadCircumferenceForAgeLMS({
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
