part of '../fenton.dart';

class FentonLengthForAgeData extends AgeBasedData {
  factory FentonLengthForAgeData() => _singleton;
  FentonLengthForAgeData._(this._data);
  static final _singleton = FentonLengthForAgeData._(_parse());

  static Map<Sex, Map<int, _FentonLengthForAgeLMS>> _parse() => {
        Sex.both: fentonLfA.toJsonObjectAsMap.map((k1, v1) {
          v1 as Map<String, dynamic>;
          final lms =
              LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
          return MapEntry(
            int.parse(k1),
            _FentonLengthForAgeLMS(
              lms: lms,
            ),
          );
        })
      };
  final Map<Sex, Map<int, _FentonLengthForAgeLMS>> _data;

  @override
  Map<Sex, Map<int, _FentonLengthForAgeLMS>> get data => _data;

  @override
  String toString() => 'Infant Length For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

@freezed
sealed class FentonLengthForAge extends AgeBasedResult
    with _$FentonLengthForAge {
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

  @override
  FentonLengthForAgeData get contextData => FentonLengthForAgeData();

  _FentonLengthForAgeLMS get _ageData => contextData
      ._data.values.first[ageAtObservationDate.ageInTotalWeeksByNow]!;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

  @override
  Age get ageAtObservationDate => checkAge(
        age,
        observationDate: observationDate,
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
  _FentonLengthForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => lengthHeight.toCentimeter.value;
}

class _FentonLengthForAgeLMS extends LMSContext {
  _FentonLengthForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Fenton Length For Age LMS($lms)';
}
