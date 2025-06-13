part of '../../../intergrowth.dart';

class PretermInfantsPostnatalGrowthHeadCircumferenceForAgeData
    extends AgeBasedData {
  factory PretermInfantsPostnatalGrowthHeadCircumferenceForAgeData() =>
      _singleton;
  PretermInfantsPostnatalGrowthHeadCircumferenceForAgeData._(this._data);

  static final _singleton =
      PretermInfantsPostnatalGrowthHeadCircumferenceForAgeData._(_parse());

  static Map<
      Sex,
      Map<int,
          _PretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS>> _parse() =>
      {
        Sex.male: _grow_preterm_boys_hc.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _PretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
        Sex.female: _grow_preterm_girls_hc.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _PretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
      };

  final Map<Sex,
      Map<int, _PretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _PretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS>>
      get data => _data;

  @override
  String toString() => 'Newborn Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class PretermInfantsPostnatalGrowthHeadCircumferenceForAge
    extends AgeBasedResult
    with _$PretermInfantsPostnatalGrowthHeadCircumferenceForAge {
  factory PretermInfantsPostnatalGrowthHeadCircumferenceForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _PretermInfantsPostnatalGrowthHeadCircumferenceForAge;

  const PretermInfantsPostnatalGrowthHeadCircumferenceForAge._();

  factory PretermInfantsPostnatalGrowthHeadCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$PretermInfantsPostnatalGrowthHeadCircumferenceForAgeFromJson(json);

  @override
  PretermInfantsPostnatalGrowthHeadCircumferenceForAgeData get contextData =>
      PretermInfantsPostnatalGrowthHeadCircumferenceForAgeData();

  _PretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS get _ageData =>
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
  _PretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS get lmsData =>
      _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _PretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS
    extends LMSContext {
  _PretermInfantsPostnatalGrowthHeadCircumferenceForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
