part of '../../../intergrowth.dart';

class IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeData
    extends AgeBasedData {
  factory IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeData() =>
      _singleton;
  IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeData._(
      this._data);

  static final _singleton =
      IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeData._(
          _parse());

  static Map<
          Sex,
          Map<int,
              _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS>>
      _parse() => {
            Sex.male: _grow_preterm_boys_hc.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
            Sex.female: _grow_preterm_girls_hc.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
          };

  final Map<
          Sex,
          Map<int,
              _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS>>
      _data;
  @override
  Map<
          Sex,
          Map<int,
              _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS>>
      get data => _data;

  @override
  String toString() => 'Newborn Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge
    extends AgeBasedResult
    with _$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge {
  factory IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge;

  const IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge._();

  factory IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeFromJson(
          json);

  @override
  IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeData
      get contextData =>
          IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeData();

  _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS
      get _ageData => contextData._data[sex]![
          ageAtObservationDate.ageInTotalByUnit(contextData.unit)]!;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

  @override
  Age get ageAtObservationDate => checkAge(
        age,
        contextData: contextData,
      );

  @override
  num zScore([
    Precision precision = Precision.two,
  ]) =>
      _zScore.precision(precision);

  @override
  num percentile([
    Precision precision = Precision.two,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS
      get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS
    extends LMSContext {
  _IntergrowthPretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
