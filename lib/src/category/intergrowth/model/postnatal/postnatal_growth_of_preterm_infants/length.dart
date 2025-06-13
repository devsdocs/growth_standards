part of '../../../intergrowth.dart';

class PretermInfantsPostnatalGrowthLengthForAgeData extends AgeBasedData {
  factory PretermInfantsPostnatalGrowthLengthForAgeData() => _singleton;
  PretermInfantsPostnatalGrowthLengthForAgeData._(this._data);

  static final _singleton =
      PretermInfantsPostnatalGrowthLengthForAgeData._(_parse());

  static Map<Sex, Map<int, _PretermInfantsPostnatalGrowthLengthForAgeLMS>>
      _parse() => {
            Sex.male: _grow_preterm_boys_lt.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _PretermInfantsPostnatalGrowthLengthForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
            Sex.female: _grow_preterm_girls_lt.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _PretermInfantsPostnatalGrowthLengthForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
          };

  final Map<Sex, Map<int, _PretermInfantsPostnatalGrowthLengthForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _PretermInfantsPostnatalGrowthLengthForAgeLMS>> get data =>
      _data;

  @override
  String toString() => 'Newborn Length For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 33 and 43
@freezed
sealed class PretermInfantsPostnatalGrowthLengthForAge extends AgeBasedResult
    with _$PretermInfantsPostnatalGrowthLengthForAge {
  factory PretermInfantsPostnatalGrowthLengthForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _PretermInfantsPostnatalGrowthLengthForAge;

  const PretermInfantsPostnatalGrowthLengthForAge._();

  factory PretermInfantsPostnatalGrowthLengthForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PretermInfantsPostnatalGrowthLengthForAgeFromJson(json);

  @override
  PretermInfantsPostnatalGrowthLengthForAgeData get contextData =>
      PretermInfantsPostnatalGrowthLengthForAgeData();

  _PretermInfantsPostnatalGrowthLengthForAgeLMS get _ageData =>
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
  _PretermInfantsPostnatalGrowthLengthForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _PretermInfantsPostnatalGrowthLengthForAgeLMS extends LMSContext {
  _PretermInfantsPostnatalGrowthLengthForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
