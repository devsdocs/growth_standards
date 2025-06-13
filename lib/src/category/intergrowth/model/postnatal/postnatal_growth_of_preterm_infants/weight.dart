part of '../../../intergrowth.dart';

class PretermInfantsPostnatalGrowthWeightForAgeData extends AgeBasedData {
  factory PretermInfantsPostnatalGrowthWeightForAgeData() => _singleton;
  PretermInfantsPostnatalGrowthWeightForAgeData._(this._data);

  static final _singleton =
      PretermInfantsPostnatalGrowthWeightForAgeData._(_parse());

  static Map<Sex, Map<int, _PretermInfantsPostnatalGrowthWeightForAgeLMS>>
      _parse() => {
            Sex.male: _grow_preterm_boys_bw.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _PretermInfantsPostnatalGrowthWeightForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
            Sex.female: _grow_preterm_girls_bw.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _PretermInfantsPostnatalGrowthWeightForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
          };

  final Map<Sex, Map<int, _PretermInfantsPostnatalGrowthWeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _PretermInfantsPostnatalGrowthWeightForAgeLMS>> get data =>
      _data;

  @override
  String toString() => 'Newborn Weight For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 33 and 43
@freezed
sealed class PretermInfantsPostnatalGrowthWeightForAge extends AgeBasedResult
    with _$PretermInfantsPostnatalGrowthWeightForAge {
  factory PretermInfantsPostnatalGrowthWeightForAge({
    required Sex sex,
    required Age age,
    required Mass measurementResult,
  }) = _PretermInfantsPostnatalGrowthWeightForAge;

  const PretermInfantsPostnatalGrowthWeightForAge._();

  factory PretermInfantsPostnatalGrowthWeightForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PretermInfantsPostnatalGrowthWeightForAgeFromJson(json);

  @override
  PretermInfantsPostnatalGrowthWeightForAgeData get contextData =>
      PretermInfantsPostnatalGrowthWeightForAgeData();

  _PretermInfantsPostnatalGrowthWeightForAgeLMS get _ageData =>
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
  _PretermInfantsPostnatalGrowthWeightForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => measurementResult.toKilogram.value;
}

class _PretermInfantsPostnatalGrowthWeightForAgeLMS extends LMSContext {
  _PretermInfantsPostnatalGrowthWeightForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
