part of '../../../intergrowth.dart';

class CrownRumpLengthForAgeData extends AgeBasedData {
  factory CrownRumpLengthForAgeData() => _singleton;
  CrownRumpLengthForAgeData._(this._data);

  static final _singleton = CrownRumpLengthForAgeData._(_parse());

  static Map<Sex, Map<num, _CrownRumpLengthForAgeLMS>> _parse() {
    final map = _grow_early_preg_charts_size.toJsonObjectAsMap.map(
      (k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _CrownRumpLengthForAgeLMS(
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

  final Map<Sex, Map<num, _CrownRumpLengthForAgeLMS>> _data;
  @override
  Map<Sex, Map<num, _CrownRumpLengthForAgeLMS>> get data => _data;

  @override
  String toString() => 'Early Pregnancy Dating For CRL Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

@freezed
sealed class CrownRumpLengthForAge extends AgeBasedResult
    with _$CrownRumpLengthForAge {
  factory CrownRumpLengthForAge({
    required Age age,
    required Length length,
  }) = _CrownRumpLengthForAge;

  const CrownRumpLengthForAge._();

  factory CrownRumpLengthForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CrownRumpLengthForAgeFromJson(json);

  @override
  CrownRumpLengthForAgeData get contextData => CrownRumpLengthForAgeData();

  _CrownRumpLengthForAgeLMS get _ageData => contextData
      ._data.values.first[ageAtObservationDate.ageInTotalWeeksByNow]!;

  num get _zScore =>
      _ageData.lms.adjustedZScore(measurementResultInDefaultUnit);

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
  _CrownRumpLengthForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => length.toMillimeter.value;
}

class _CrownRumpLengthForAgeLMS extends LMSContext {
  _CrownRumpLengthForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Weight For Height LMS($lms)';
}
