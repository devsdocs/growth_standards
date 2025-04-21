part of '../standard.dart';

class WHOGrowthStandardsTricepsSkinfoldForAgeData extends AgeBasedData {
  factory WHOGrowthStandardsTricepsSkinfoldForAgeData() => _singleton;
  WHOGrowthStandardsTricepsSkinfoldForAgeData._(this._data);

  static final _singleton =
      WHOGrowthStandardsTricepsSkinfoldForAgeData._(_parse());

  static Map<Sex, Map<int, _WHOGrowthStandardsTricepsSkinfoldForAgeLMS>>
      _parse() => _tsanthro.toJsonObjectAsMap.map(
            (k1, v1) => MapEntry(
                k1 == '1' ? Sex.male : Sex.female,
                (v1 as Map<String, dynamic>).map((k2, v2) {
                  v2 as Map<String, dynamic>;
                  final lms = LMS(
                      l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
                  return MapEntry(
                    int.parse(k2),
                    _WHOGrowthStandardsTricepsSkinfoldForAgeLMS(
                      lms: lms,
                    ),
                  );
                })),
          );
  final Map<Sex, Map<int, _WHOGrowthStandardsTricepsSkinfoldForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _WHOGrowthStandardsTricepsSkinfoldForAgeLMS>> get data =>
      _data;

  @override
  String toString() => 'Triceps Skinfold For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

@freezed
sealed class WHOGrowthStandardsTricepsSkinfoldForAge extends AgeBasedResult
    with _$WHOGrowthStandardsTricepsSkinfoldForAge {
  factory WHOGrowthStandardsTricepsSkinfoldForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _WHOGrowthStandardsTricepsSkinfoldForAge;

  const WHOGrowthStandardsTricepsSkinfoldForAge._();

  factory WHOGrowthStandardsTricepsSkinfoldForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$WHOGrowthStandardsTricepsSkinfoldForAgeFromJson(json);

  @override
  WHOGrowthStandardsTricepsSkinfoldForAgeData get contextData =>
      WHOGrowthStandardsTricepsSkinfoldForAgeData();

  Map<int, _WHOGrowthStandardsTricepsSkinfoldForAgeLMS> get _maleData =>
      contextData._data[Sex.male]!;
  Map<int, _WHOGrowthStandardsTricepsSkinfoldForAgeLMS> get _femaleData =>
      contextData._data[Sex.female]!;

  _WHOGrowthStandardsTricepsSkinfoldForAgeLMS get _ageData => (sex == Sex.male
      ? _maleData
      : _femaleData)[ageAtObservationDate.ageInTotalDaysByNow]!;

  num get _zScore =>
      _ageData.lms.adjustedZScore(measurementResultInDefaultUnit);

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
  _WHOGrowthStandardsTricepsSkinfoldForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toMillimeter.value;
}

class _WHOGrowthStandardsTricepsSkinfoldForAgeLMS extends LMSContext {
  _WHOGrowthStandardsTricepsSkinfoldForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Triceps Skinfold For Age LMS($lms)';
}
