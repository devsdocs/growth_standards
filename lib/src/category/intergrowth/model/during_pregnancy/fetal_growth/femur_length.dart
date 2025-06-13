part of '../../../intergrowth.dart';

class FetalGrowtFemurLengthForAgeData extends AgeBasedData {
  factory FetalGrowtFemurLengthForAgeData() => _singleton;
  FetalGrowtFemurLengthForAgeData._(this._data);

  static final _singleton = FetalGrowtFemurLengthForAgeData._(_parse());

  static Map<Sex, Map<int, _FetalGrowtFemurLengthForAgeLMS>> _parse() {
    final map = _grow_fetal_fl.toJsonObjectAsMap.map(
      (k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _FetalGrowtFemurLengthForAgeLMS(
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

  final Map<Sex, Map<int, _FetalGrowtFemurLengthForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _FetalGrowtFemurLengthForAgeLMS>> get data => _data;

  @override
  String toString() => 'Newborn Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class FetalGrowtFemurLengthForAge extends AgeBasedResult
    with _$FetalGrowtFemurLengthForAge {
  factory FetalGrowtFemurLengthForAge({
    required Age age,
    required Length measurementResult,
  }) = _FetalGrowtFemurLengthForAge;

  const FetalGrowtFemurLengthForAge._();

  factory FetalGrowtFemurLengthForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FetalGrowtFemurLengthForAgeFromJson(json);

  @override
  FetalGrowtFemurLengthForAgeData get contextData =>
      FetalGrowtFemurLengthForAgeData();

  _FetalGrowtFemurLengthForAgeLMS get _ageData => contextData
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
  _FetalGrowtFemurLengthForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toMillimeter.value;
}

class _FetalGrowtFemurLengthForAgeLMS extends LMSContext {
  _FetalGrowtFemurLengthForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
