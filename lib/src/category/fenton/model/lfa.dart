part of '../fenton.dart';

class FentonLengthForAgeData extends AgeBasedData {
  factory FentonLengthForAgeData() => _singleton;
  FentonLengthForAgeData._(this._data);
  static final _singleton = FentonLengthForAgeData._(_parse());

  static Map<Sex, Map<int, _FentonLengthForAgeLMS>> _parse() => {
    Sex.male: fentonBoysLfA.map(
      (k, v) => MapEntry(
        k,
        _FentonLengthForAgeLMS(
          lms: LMS(l: v['l']! as num, m: v['m']! as num, s: v['s']! as num),
        ),
      ),
    ),
    Sex.female: fentonGirlsLfA.map(
      (k, v) => MapEntry(
        k,
        _FentonLengthForAgeLMS(
          lms: LMS(l: v['l']! as num, m: v['m']! as num, s: v['s']! as num),
        ),
      ),
    ),
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
sealed class FentonLengthForAge extends PostmenstrualAgeBasedResult
    with _$FentonLengthForAge {
  factory FentonLengthForAge({
    required Sex sex,
    required PostmenstrualAge age,
    required Length lengthHeight,
    required LengthHeightMeasurementPosition measure,
  }) = _FentonLengthForAge;

  const FentonLengthForAge._();

  factory FentonLengthForAge.fromJson(Map<String, dynamic> json) =>
      _$FentonLengthForAgeFromJson(json);

  @override
  FentonLengthForAgeData get contextData => FentonLengthForAgeData();

  _FentonLengthForAgeLMS get _ageData =>
      contextData._data[sex]![postmenstrualAgeAtObservation.completedWeeks]!;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

  @override
  PostmenstrualAge get postmenstrualAgeAtObservation =>
      checkPostmenstrualAge(age, contextData: contextData);

  @override
  num zScore([Precision precision = Precision.two]) =>
      _zScore.precision(precision);

  @override
  num percentile([Precision precision = Precision.two]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _FentonLengthForAgeLMS get lmsData => _ageData;

  Length$Centimeter get _adjustedLength => adjustedLengthHeight(
    measure: measure,
    age: Age.byWeeksAgo(postmenstrualAgeAtObservation.completedWeeks),
    lengthHeight: lengthHeight,
    type: AdjustedLengthType.who,
  );

  @override
  num get measurementResultInDefaultUnit => _adjustedLength.value.toDouble();
}

class _FentonLengthForAgeLMS extends LMSContext {
  _FentonLengthForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Fenton Length For Age LMS($lms)';
}
