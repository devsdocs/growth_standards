part of '../fenton.dart';

class FentonWeightForAgeData extends AgeBasedData {
  factory FentonWeightForAgeData() => _singleton;
  const FentonWeightForAgeData._(this._data);

  static final _singleton = FentonWeightForAgeData._(_parse());

  static Map<Sex, Map<int, _FentonWeightForAgeLMS>> _parse() => {
        Sex.both: fentonWfA.toJsonObjectAsMap.map((k1, v1) {
          v1 as Map<String, dynamic>;
          final lms =
              LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
          return MapEntry(
            int.parse(k1),
            _FentonWeightForAgeLMS(
              lms: lms,
            ),
          );
        })
      };
  final Map<Sex, Map<int, _FentonWeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _FentonWeightForAgeLMS>> get data => _data;

  @override
  String toString() => 'Infant Weight For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

@freezed
sealed class FentonWeightForAge extends AgeBasedResult
    with _$FentonWeightForAge {
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

  @override
  FentonWeightForAgeData get contextData => FentonWeightForAgeData();

  _FentonWeightForAgeLMS get _ageData => contextData
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
  _FentonWeightForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => weight.toKilogram.value;
}

class _FentonWeightForAgeLMS extends LMSContext {
  _FentonWeightForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Fenton Weight For Age LMS($lms)';
}
