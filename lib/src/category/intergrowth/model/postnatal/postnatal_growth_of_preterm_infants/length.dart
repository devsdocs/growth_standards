part of '../../../intergrowth.dart';

class IntergrowthPretermInfantsPostnatalGrowthLengthForAgeData
    extends AgeBasedData {
  factory IntergrowthPretermInfantsPostnatalGrowthLengthForAgeData() =>
      _singleton;
  IntergrowthPretermInfantsPostnatalGrowthLengthForAgeData._(this._data);

  static final _singleton =
      IntergrowthPretermInfantsPostnatalGrowthLengthForAgeData._(_parse());

  static Map<
      Sex,
      Map<int,
          _IntergrowthPretermInfantsPostnatalGrowthLengthForAgeLMS>> _parse() =>
      {
        Sex.male: _grow_preterm_boys_lt.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _IntergrowthPretermInfantsPostnatalGrowthLengthForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
        Sex.female: _grow_preterm_girls_lt.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _IntergrowthPretermInfantsPostnatalGrowthLengthForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
      };

  final Map<Sex,
      Map<int, _IntergrowthPretermInfantsPostnatalGrowthLengthForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _IntergrowthPretermInfantsPostnatalGrowthLengthForAgeLMS>>
      get data => _data;

  @override
  String toString() => 'Newborn Length For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 33 and 43
@freezed
sealed class IntergrowthPretermInfantsPostnatalGrowthLengthForAge
    extends AgeBasedResult
    with _$IntergrowthPretermInfantsPostnatalGrowthLengthForAge {
  factory IntergrowthPretermInfantsPostnatalGrowthLengthForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _IntergrowthPretermInfantsPostnatalGrowthLengthForAge;

  const IntergrowthPretermInfantsPostnatalGrowthLengthForAge._();

  factory IntergrowthPretermInfantsPostnatalGrowthLengthForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthPretermInfantsPostnatalGrowthLengthForAgeFromJson(json);

  @override
  IntergrowthPretermInfantsPostnatalGrowthLengthForAgeData get contextData =>
      IntergrowthPretermInfantsPostnatalGrowthLengthForAgeData();

  _IntergrowthPretermInfantsPostnatalGrowthLengthForAgeLMS get _ageData =>
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
  _IntergrowthPretermInfantsPostnatalGrowthLengthForAgeLMS get lmsData =>
      _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _IntergrowthPretermInfantsPostnatalGrowthLengthForAgeLMS
    extends LMSContext {
  _IntergrowthPretermInfantsPostnatalGrowthLengthForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
