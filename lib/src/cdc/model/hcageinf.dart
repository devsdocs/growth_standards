part of '../cdc.dart';

class CDCHeadCircumferenceForAgeData {
  factory CDCHeadCircumferenceForAgeData() => _singleton;
  CDCHeadCircumferenceForAgeData._(this._data);

  static final _singleton = CDCHeadCircumferenceForAgeData._(_parse());

  static Map<Sex, _CDCHeadCircumferenceForAgeGender> _parse() =>
      cdchcageinf.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _CDCHeadCircumferenceForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                double.parse(k2),
                _CDCHeadCircumferenceForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );

  final Map<Sex, _CDCHeadCircumferenceForAgeGender> _data;
  Map<Sex, _CDCHeadCircumferenceForAgeGender> get data => _data;

  @override
  String toString() => 'Head Circumference For Age Data($_data)';
}

@freezed
class CDCHeadCircumferenceForAge with _$CDCHeadCircumferenceForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalMonthsByNow <= 36',
    'Age must be in range of 0 - 36 months',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory CDCHeadCircumferenceForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @LengthConverter() required Length measurementResult,
  }) = _HeadCircumferenceForAge;

  const CDCHeadCircumferenceForAge._();

  factory CDCHeadCircumferenceForAge.fromJson(Map<String, dynamic> json) =>
      _$CDCHeadCircumferenceForAgeFromJson(json);

  CDCHeadCircumferenceForAgeData get _headCircumferenceData =>
      CDCHeadCircumferenceForAgeData();

  _CDCHeadCircumferenceForAgeGender get _maleData =>
      _headCircumferenceData._data[Sex.male]!;
  _CDCHeadCircumferenceForAgeGender get _femaleData =>
      _headCircumferenceData._data[Sex.female]!;

  _CDCHeadCircumferenceForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData).ageData[
          _ageAtObservationDate.ageInTotalDaysByNow == 0
              ? 0
              : _ageAtObservationDate.ageInTotalMonthsByNow == 36
                  ? 36
                  : _ageAtObservationDate.cdcAge]!;

  num get _zScore =>
      _ageData.lms.zScore(measurementResult.toCentimeters.value!);

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

class _CDCHeadCircumferenceForAgeGender {
  _CDCHeadCircumferenceForAgeGender({required this.ageData});

  final Map<double, _CDCHeadCircumferenceForAgeLMS> ageData;

  @override
  String toString() => 'Gender Data($ageData)';
}

class _CDCHeadCircumferenceForAgeLMS {
  _CDCHeadCircumferenceForAgeLMS({
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
