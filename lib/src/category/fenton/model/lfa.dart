part of '../fenton.dart';

class FentonLengthForAgeData extends AgeBasedData {
  factory FentonLengthForAgeData() => _singleton;
  FentonLengthForAgeData._(this._data);
  static final _singleton = FentonLengthForAgeData._(_parse());

  static Map<Sex, Map<int, _FentonLengthForAgeLMS>> _parse() {
    final map = fentonLfA.toJsonObjectAsMap.map((k1, v1) {
      v1 as Map<String, dynamic>;
      final lms = LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
      return MapEntry(int.parse(k1), _FentonLengthForAgeLMS(lms: lms));
    });
    return {Sex.male: map, Sex.female: map};
  }

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
    required Age age,
    required Length lengthHeight,
    required LengthHeightMeasurementPosition measure,
  }) = _FentonLengthForAge;

  const FentonLengthForAge._();

  factory FentonLengthForAge.fromJson(Map<String, dynamic> json) =>
      _$FentonLengthForAgeFromJson(json);

  @override
  FentonLengthForAgeData get contextData => FentonLengthForAgeData();

  _FentonLengthForAgeLMS get _ageData =>
      contextData._data.values.first[ageAtObservationDate.ageInTotalByUnit(
        contextData.unit,
      )]!;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

  @override
  Age get ageAtObservationDate => checkAge(age, contextData: contextData);

  @override
  num zScore([Precision precision = Precision.two]) =>
      _zScore.precision(precision);

  @override
  num percentile([Precision precision = Precision.two]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _FentonLengthForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => lengthHeight.toCentimeter.value;
}

class _FentonLengthForAgeLMS extends LMSContext {
  _FentonLengthForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Fenton Length For Age LMS($lms)';
}
