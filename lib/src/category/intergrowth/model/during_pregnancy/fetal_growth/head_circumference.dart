part of '../../../intergrowth.dart';

class FetalGrowtHeadCircumferenceForAgeData extends AgeBasedData {
  factory FetalGrowtHeadCircumferenceForAgeData() => _singleton;
  FetalGrowtHeadCircumferenceForAgeData._(this._data);

  static final _singleton = FetalGrowtHeadCircumferenceForAgeData._(_parse());

  static Map<Sex, Map<int, _FetalGrowtHeadCircumferenceForAgeLMS>> _parse() {
    final map = _grow_fetal_hc.toJsonObjectAsMap.map(
      (k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _FetalGrowtHeadCircumferenceForAgeLMS(
            lms: lms,
          ),
        );
      },
    );
    return {
      Sex.male: map,
      Sex.female: map,
    };
  }

  final Map<Sex, Map<int, _FetalGrowtHeadCircumferenceForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _FetalGrowtHeadCircumferenceForAgeLMS>> get data => _data;

  @override
  String toString() => 'Newborn Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class FetalGrowtHeadCircumferenceForAge extends AgeBasedResult
    with _$FetalGrowtHeadCircumferenceForAge {
  factory FetalGrowtHeadCircumferenceForAge({
    required Age age,
    required Length measurementResult,
  }) = _FetalGrowtHeadCircumferenceForAge;

  const FetalGrowtHeadCircumferenceForAge._();

  factory FetalGrowtHeadCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FetalGrowtHeadCircumferenceForAgeFromJson(json);

  @override
  FetalGrowtHeadCircumferenceForAgeData get contextData =>
      FetalGrowtHeadCircumferenceForAgeData();

  _FetalGrowtHeadCircumferenceForAgeLMS get _ageData => contextData
      ._data.values.first[ageAtObservationDate.ageInTotalWeeksByNow]!;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

  @override
  Age get ageAtObservationDate => checkAge(
        age,
        contextData: contextData,
      );

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
  _FetalGrowtHeadCircumferenceForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toMillimeter.value;
}

class _FetalGrowtHeadCircumferenceForAgeLMS extends LMSContext {
  _FetalGrowtHeadCircumferenceForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
