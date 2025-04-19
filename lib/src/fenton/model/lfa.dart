part of '../fenton.dart';

class FentonLengthForAgeData extends SexAgnosticData {
  factory FentonLengthForAgeData() => _singleton;
  FentonLengthForAgeData._(this._data);
  static final _singleton = FentonLengthForAgeData._(_parse());

  static Map<int, _FentonLengthForAgeLMS> _parse() =>
      fentonLfA.toJsonObjectAsMap.map((k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _FentonLengthForAgeLMS(
            lms: lms,
            percentileCutOff: lms.percentileCutOff,
            standardDeviationCutOff: lms.stDevCutOff,
          ),
        );
      });
  final Map<int, _FentonLengthForAgeLMS> _data;
  @override
  Map<int, _FentonLengthForAgeLMS> get data => _data;

  @override
  String toString() => 'Infant Length For Age Data($_data)';
}

@freezed
sealed class FentonLengthForAge extends AgeBasedResult
    with _$FentonLengthForAge {
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
  factory FentonLengthForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeightMeasurementPosition measure,
  }) = _FentonLengthForAge;

  const FentonLengthForAge._();

  factory FentonLengthForAge.fromJson(Map<String, dynamic> json) =>
      _$FentonLengthForAgeFromJson(json);

  FentonLengthForAgeData get _lengthForAgeData => FentonLengthForAgeData();

  _FentonLengthForAgeLMS get _ageData =>
      _lengthForAgeData._data[ageAtObservationDate.ageInTotalWeeksByNow]!;

  num get _zScore => _ageData.lms.zScore(lengthHeight.toCentimeter.value);

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
  _FentonLengthForAgeLMS get ageData => _ageData;
}

class _FentonLengthForAgeLMS extends LMSBasedResult {
  _FentonLengthForAgeLMS({
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
