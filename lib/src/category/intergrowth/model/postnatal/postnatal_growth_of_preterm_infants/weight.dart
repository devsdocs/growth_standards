part of '../../../intergrowth.dart';

class IntergrowthPretermInfantsPostnatalGrowthWeightForAgeData
    extends AgeBasedData {
  factory IntergrowthPretermInfantsPostnatalGrowthWeightForAgeData() =>
      _singleton;
  IntergrowthPretermInfantsPostnatalGrowthWeightForAgeData._(this._data);

  static final _singleton =
      IntergrowthPretermInfantsPostnatalGrowthWeightForAgeData._(_parse());

  static Map<
      Sex,
      Map<int,
          _IntergrowthPretermInfantsPostnatalGrowthWeightForAgeLMS>> _parse() =>
      {
        Sex.male: _grow_preterm_boys_bw.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _IntergrowthPretermInfantsPostnatalGrowthWeightForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
        Sex.female: _grow_preterm_girls_bw.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _IntergrowthPretermInfantsPostnatalGrowthWeightForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
      };

  final Map<Sex,
      Map<int, _IntergrowthPretermInfantsPostnatalGrowthWeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _IntergrowthPretermInfantsPostnatalGrowthWeightForAgeLMS>>
      get data => _data;

  @override
  String toString() => 'Newborn Weight For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 33 and 43
@freezed
sealed class IntergrowthPretermInfantsPostnatalGrowthWeightForAge
    extends AgeBasedResult
    with _$IntergrowthPretermInfantsPostnatalGrowthWeightForAge {
  factory IntergrowthPretermInfantsPostnatalGrowthWeightForAge({
    required Sex sex,
    required Age age,
    required Mass measurementResult,
  }) = _IntergrowthPretermInfantsPostnatalGrowthWeightForAge;

  const IntergrowthPretermInfantsPostnatalGrowthWeightForAge._();

  factory IntergrowthPretermInfantsPostnatalGrowthWeightForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthPretermInfantsPostnatalGrowthWeightForAgeFromJson(json);

  @override
  IntergrowthPretermInfantsPostnatalGrowthWeightForAgeData get contextData =>
      IntergrowthPretermInfantsPostnatalGrowthWeightForAgeData();

  _IntergrowthPretermInfantsPostnatalGrowthWeightForAgeLMS get _ageData =>
      contextData._data[sex]![
          ageAtObservationDate.ageInTotalByUnit(contextData.unit)]!;

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
  _IntergrowthPretermInfantsPostnatalGrowthWeightForAgeLMS get lmsData =>
      _ageData;

  @override
  num get measurementResultInDefaultUnit => measurementResult.toKilogram.value;
}

class _IntergrowthPretermInfantsPostnatalGrowthWeightForAgeLMS
    extends LMSContext {
  _IntergrowthPretermInfantsPostnatalGrowthWeightForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
