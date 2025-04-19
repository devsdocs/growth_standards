part of '../fenton.dart';

class FentonHeadCircumferenceForAgeData extends SexAgnosticData {
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
            ),
          );
        },
      );

  final Map<int, _FentonHeadCircumferenceForAgeLMS> _data;
  @override
  Map<int, _FentonHeadCircumferenceForAgeLMS> get data => _data;

  @override
  String toString() => 'Infant Head Circumference For Age Data($_data)';
}

@freezed
sealed class FentonHeadCircumferenceForAge extends AgeBasedResult
    with _$FentonHeadCircumferenceForAge {
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
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _FentonHeadCircumferenceForAge;

  const FentonHeadCircumferenceForAge._();

  factory FentonHeadCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FentonHeadCircumferenceForAgeFromJson(json);

  FentonHeadCircumferenceForAgeData get _headCircumferenceData =>
      FentonHeadCircumferenceForAgeData();

  _FentonHeadCircumferenceForAgeLMS get _ageData =>
      _headCircumferenceData._data[ageAtObservationDate.ageInTotalWeeksByNow]!;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

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
  _FentonHeadCircumferenceForAgeLMS get ageData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _FentonHeadCircumferenceForAgeLMS extends LMSBasedResult {
  _FentonHeadCircumferenceForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Fenton Head Circumference For Age LMS(lms: $lms)';
}
