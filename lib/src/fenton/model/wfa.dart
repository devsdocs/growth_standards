part of '../fenton.dart';

class FentonWeightForAgeData {
  factory FentonWeightForAgeData() => _singleton;
  const FentonWeightForAgeData._(this._data);

  static final _singleton = FentonWeightForAgeData._(_parse());

  static Map<int, _FentonWeightForAgeLMS> _parse() =>
      fentonWfA.toJsonObjectAsMap.map((k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _FentonWeightForAgeLMS(
            lms: lms,
            percentileCutOff: lms.percentileCutOff,
            standardDeviationCutOff: lms.stDevCutOff,
          ),
        );
      });
  final Map<int, _FentonWeightForAgeLMS> _data;
  Map<int, _FentonWeightForAgeLMS> get data => _data;

  @override
  String toString() => 'Infant Weight For Age Data($_data)';
}

@freezed
sealed class FentonWeightForAge with _$FentonWeightForAge {
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
  factory FentonWeightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Mass weight,
  }) = _FentonWeightForAge;

  const FentonWeightForAge._();

  factory FentonWeightForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FentonWeightForAgeFromJson(json);

  FentonWeightForAgeData get _weightForAgeData => FentonWeightForAgeData();

  _FentonWeightForAgeLMS get _ageData =>
      _weightForAgeData._data[ageAtObservationDate.ageInTotalWeeksByNow]!;

  num get _zScore => _ageData.lms.zScore(weight.toKilogram.value);

  Age get ageAtObservationDate => checkObservationDate(age, observationDate);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);

  _FentonWeightForAgeLMS get ageData => _ageData;
}

class _FentonWeightForAgeLMS extends LMSBasedResult {
  _FentonWeightForAgeLMS({
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
