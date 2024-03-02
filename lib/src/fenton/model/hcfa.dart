part of '../fenton.dart';

class FentonHeadCircumferenceForAgeData {
  factory FentonHeadCircumferenceForAgeData() => _singleton;
  FentonHeadCircumferenceForAgeData._(this._data);

  static final _singleton = FentonHeadCircumferenceForAgeData._(_parse());

  static Map<int, _FentonHeadCircumferenceForAgeLMS> _parse() =>
      fentonHCfA.toJsonObjectAsMap.map(
        (k1, v1) {
          v1 as Map<String, dynamic>;
          final lms =
              LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
          return MapEntry(
            int.parse(k1),
            _FentonHeadCircumferenceForAgeLMS(
              lms: lms,
              percentileCutOff: lms.percentileCutOff,
              standardDeviationCutOff: lms.stDevCutOff,
            ),
          );
        },
      );

  final Map<int, _FentonHeadCircumferenceForAgeLMS> _data;
  Map<int, _FentonHeadCircumferenceForAgeLMS> get data => _data;

  @override
  String toString() => 'Infant Head Circumference For Age Data($_data)';
}

@freezed
class FentonHeadCircumferenceForAge with _$FentonHeadCircumferenceForAge {
  @Assert(
    'age.ageInTotalWeeksByNow >= 22 && age.ageInTotalWeeksByNow <= 50',
    'Age must be in range of 22 - 50 weeks',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrAfter(age.dateAtWeeksAfterBirth(22)) ',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory FentonHeadCircumferenceForAge({
    @DateConverter() Date? observationDate,
    required Sex sex,
    @AgeConverter() required Age age,
    @LengthConverter() required Length measurementResult,
  }) = _FentonHeadCircumferenceForAge;

  const FentonHeadCircumferenceForAge._();

  factory FentonHeadCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FentonHeadCircumferenceForAgeFromJson(json);

  FentonHeadCircumferenceForAgeData get _headCircumferenceData =>
      FentonHeadCircumferenceForAgeData();

  _FentonHeadCircumferenceForAgeLMS get _ageData =>
      _headCircumferenceData._data[_ageAtObservationDate.ageInTotalWeeksByNow]!;

  num get _zScore => _ageData.lms.zScore(measurementResult.toCentimeter.value);

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

class _FentonHeadCircumferenceForAgeLMS {
  _FentonHeadCircumferenceForAgeLMS({
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
