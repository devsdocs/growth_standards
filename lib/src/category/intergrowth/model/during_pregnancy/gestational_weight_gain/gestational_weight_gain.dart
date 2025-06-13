part of '../../../intergrowth.dart';

class GestationalWeightGainForAgeData extends AgeBasedData {
  factory GestationalWeightGainForAgeData() => _singleton;
  GestationalWeightGainForAgeData._(this._data);

  static final _singleton = GestationalWeightGainForAgeData._(_parse());

  static Map<Sex, Map<int, _GestationalWeightGainForAgeLMS>> _parse() {
    final map = _grow_gwg_nw.toJsonObjectAsMap.map(
      (k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _GestationalWeightGainForAgeLMS(
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

  final Map<Sex, Map<int, _GestationalWeightGainForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _GestationalWeightGainForAgeLMS>> get data => _data;

  @override
  String toString() => 'Newborn Weight For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 33 and 43
@freezed
sealed class GestationalWeightGainForAge extends AgeBasedResult
    with _$GestationalWeightGainForAge {
  factory GestationalWeightGainForAge({
    required Sex sex,
    required Age age,
    required Mass measurementResult,
  }) = _GestationalWeightGainForAge;

  const GestationalWeightGainForAge._();

  factory GestationalWeightGainForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$GestationalWeightGainForAgeFromJson(json);

  @override
  GestationalWeightGainForAgeData get contextData =>
      GestationalWeightGainForAgeData();

  _GestationalWeightGainForAgeLMS get _ageData =>
      contextData._data[sex]![ageAtObservationDate.ageInTotalWeeksByNow]!;

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
  _GestationalWeightGainForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => measurementResult.toKilogram.value;
}

class _GestationalWeightGainForAgeLMS extends LMSContext {
  _GestationalWeightGainForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
