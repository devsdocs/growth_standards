part of '../../../intergrowth.dart';

class SymphysisFundalHeightForAgeData extends AgeBasedData {
  factory SymphysisFundalHeightForAgeData() => _singleton;
  SymphysisFundalHeightForAgeData._(this._data);

  static final _singleton = SymphysisFundalHeightForAgeData._(_parse());

  static Map<Sex, Map<num, _SymphysisFundalHeightForAgeLMS>> _parse() {
    final map = _grow_sfh_new.toJsonObjectAsMap.map(
      (k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _SymphysisFundalHeightForAgeLMS(
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

  final Map<Sex, Map<num, _SymphysisFundalHeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<num, _SymphysisFundalHeightForAgeLMS>> get data => _data;

  @override
  String toString() => 'Early Pregnancy Dating For CRL Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

@freezed
sealed class SymphysisFundalHeightForAge extends AgeBasedResult
    with _$SymphysisFundalHeightForAge {
  factory SymphysisFundalHeightForAge({
    required Age age,
    required Length length,
  }) = _SymphysisFundalHeightForAge;

  const SymphysisFundalHeightForAge._();

  factory SymphysisFundalHeightForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$SymphysisFundalHeightForAgeFromJson(json);

  @override
  SymphysisFundalHeightForAgeData get contextData =>
      SymphysisFundalHeightForAgeData();

  _SymphysisFundalHeightForAgeLMS get _ageData => contextData
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
  _SymphysisFundalHeightForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => length.toCentimeter.value;
}

class _SymphysisFundalHeightForAgeLMS extends LMSContext {
  _SymphysisFundalHeightForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Weight For Height LMS($lms)';
}
