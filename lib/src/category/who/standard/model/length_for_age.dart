part of '../standard.dart';

class WHOGrowthStandardsLengthForAgeData extends AgeBasedData {
  factory WHOGrowthStandardsLengthForAgeData() => _singleton;
  WHOGrowthStandardsLengthForAgeData._(this._data);
  static final _singleton = WHOGrowthStandardsLengthForAgeData._(_parse());

  static Map<Sex, Map<int, _WHOGrowthStandardsLengthForAgeLMS>> _parse() =>
      _lenanthro.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          (v1).map((k2, v2) {
            v2;
            final lms = LMS(
              l: v2['l'] as num,
              m: v2['m'] as num,
              s: v2['s'] as num,
            );
            return MapEntry(
              int.parse(k2),
              _WHOGrowthStandardsLengthForAgeLMS(
                lms: lms,
                loh: v2['loh'].toString().toLowerCase() == 'l'
                    ? LengthHeightMeasurementPosition.recumbent
                    : LengthHeightMeasurementPosition.standing,
              ),
            );
          }),
        ),
      );
  final Map<Sex, Map<int, _WHOGrowthStandardsLengthForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _WHOGrowthStandardsLengthForAgeLMS>> get data => _data;

  @override
  String toString() => 'Length For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

@freezed
sealed class WHOGrowthStandardsLengthForAge extends AgeBasedResult
    with _$WHOGrowthStandardsLengthForAge {
  factory WHOGrowthStandardsLengthForAge({
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeightMeasurementPosition measure,
  }) = _WHOGrowthStandardsLengthForAge;

  const WHOGrowthStandardsLengthForAge._();

  factory WHOGrowthStandardsLengthForAge.fromJson(Map<String, dynamic> json) =>
      _$WHOGrowthStandardsLengthForAgeFromJson(json);

  @override
  WHOGrowthStandardsLengthForAgeData get contextData =>
      WHOGrowthStandardsLengthForAgeData();

  _WHOGrowthStandardsLengthForAgeLMS get _ageData =>
      contextData._data[sex]![ageAtObservationDate.ageInTotalByUnit(
        contextData.unit,
      )]!;

  Length$Centimeter get _adjustedLength => adjustedLengthHeight(
    measure: measure,
    age: age,
    lengthHeight: lengthHeight,
    type: AdjustedLengthType.who,
  );

  num get _zScore => _ageData.lms.zScore(_adjustedLength.value);

  @override
  Age get ageAtObservationDate => checkAge(age, contextData: contextData);

  @override
  num zScore([Precision precision = Precision.two]) =>
      _zScore.precision(precision);

  @override
  num percentile([Precision precision = Precision.two]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _WHOGrowthStandardsLengthForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => _adjustedLength.value;
}

class _WHOGrowthStandardsLengthForAgeLMS extends LMSContext {
  _WHOGrowthStandardsLengthForAgeLMS({required this.lms, required this.loh});
  @override
  final LMS lms;

  final LengthHeightMeasurementPosition loh;

  @override
  String toString() => 'Length For Age LMS($lms, $loh)';
}
