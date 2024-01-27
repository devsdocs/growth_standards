part of '../cdc.dart';

class CDCInfantHeadCircumferenceForAgeData {
  factory CDCInfantHeadCircumferenceForAgeData() => _singleton;
  CDCInfantHeadCircumferenceForAgeData._(this._data);

  static final _singleton = CDCInfantHeadCircumferenceForAgeData._(_parse());

  static Map<Sex, _CDCInfantHeadCircumferenceForAgeGender> _parse() =>
      cdchcageinf.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _CDCInfantHeadCircumferenceForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
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
        ),
      );

  final Map<Sex, _CDCInfantHeadCircumferenceForAgeGender> _data;
  Map<Sex, _CDCInfantHeadCircumferenceForAgeGender> get data => _data;

  @override
  String toString() => 'Infant Head Circumference For Age Data($_data)';
}

@freezed
class CDCInfantHeadCircumferenceForAge with _$CDCInfantHeadCircumferenceForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalMonthsByNow <= 36',
    'Age must be in range of 0 - 36 months',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory CDCInfantHeadCircumferenceForAge({
    @DateConverter() Date? observationDate,
    required Sex sex,
    @AgeConverter() required Age age,
    @LengthConverter() required Length measurementResult,
  }) = _HeadCircumferenceForAge;

  const CDCInfantHeadCircumferenceForAge._();

  factory CDCInfantHeadCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CDCInfantHeadCircumferenceForAgeFromJson(json);

  CDCInfantHeadCircumferenceForAgeData get _headCircumferenceData =>
      CDCInfantHeadCircumferenceForAgeData();

  _CDCInfantHeadCircumferenceForAgeGender get _maleData =>
      _headCircumferenceData._data[Sex.male]!;
  _CDCInfantHeadCircumferenceForAgeGender get _femaleData =>
      _headCircumferenceData._data[Sex.female]!;

  _CDCInfantHeadCircumferenceForAgeLMS get _ageData {
    final finalAge = _ageAtObservationDate.ageInTotalDaysByNow == 0
        ? 0
        : _ageAtObservationDate.ageInTotalMonthsByNow == 36
            ? 36
            : _ageAtObservationDate.ageInTotalMonthsByNow + 0.5;

    return (sex == Sex.male ? _maleData : _femaleData).ageData[finalAge]!;
  }

  num get _zScore =>
      _ageData.lms.zScore(measurementResult.toCentimeters.value);

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

class _CDCInfantHeadCircumferenceForAgeGender {
  _CDCInfantHeadCircumferenceForAgeGender({required this.ageData});

  final Map<double, _CDCInfantHeadCircumferenceForAgeLMS> ageData;

  @override
  String toString() => 'Gender Data($ageData)';
}

class _CDCInfantHeadCircumferenceForAgeLMS {
  _CDCInfantHeadCircumferenceForAgeLMS({
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
