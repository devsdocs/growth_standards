part of '../../../intergrowth.dart';

class VeryPretermNewbornBirthWeightForLengthRatioForAgeData
    extends AgeBasedData {
  factory VeryPretermNewbornBirthWeightForLengthRatioForAgeData() => _singleton;
  VeryPretermNewbornBirthWeightForLengthRatioForAgeData._(this._data);

  static final _singleton =
      VeryPretermNewbornBirthWeightForLengthRatioForAgeData._(_parse());

  static Map<
      Sex,
      Map<int,
          _VeryPretermNewbornBirthWeightForLengthRatioForAgeLMS>> _parse() => {
        Sex.male: _grow_verypreterm_wlr_boys.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _VeryPretermNewbornBirthWeightForLengthRatioForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
        Sex.female: _grow_verypreterm_wlr_girls.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _VeryPretermNewbornBirthWeightForLengthRatioForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
      };

  final Map<Sex,
      Map<int, _VeryPretermNewbornBirthWeightForLengthRatioForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _VeryPretermNewbornBirthWeightForLengthRatioForAgeLMS>>
      get data => _data;

  @override
  String toString() => 'Infant Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class VeryPretermNewbornBirthWeightForLengthRatioForAge
    extends AgeBasedResult
    with _$VeryPretermNewbornBirthWeightForLengthRatioForAge {
  factory VeryPretermNewbornBirthWeightForLengthRatioForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _VeryPretermNewbornBirthWeightForLengthRatioForAge;

  const VeryPretermNewbornBirthWeightForLengthRatioForAge._();

  factory VeryPretermNewbornBirthWeightForLengthRatioForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$VeryPretermNewbornBirthWeightForLengthRatioForAgeFromJson(json);

  @override
  VeryPretermNewbornBirthWeightForLengthRatioForAgeData get contextData =>
      VeryPretermNewbornBirthWeightForLengthRatioForAgeData();

  _VeryPretermNewbornBirthWeightForLengthRatioForAgeLMS get _ageData =>
      contextData._data.values.first[ageAtObservationDate.ageInTotalDaysByNow]!;

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
  _VeryPretermNewbornBirthWeightForLengthRatioForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _VeryPretermNewbornBirthWeightForLengthRatioForAgeLMS extends LMSContext {
  _VeryPretermNewbornBirthWeightForLengthRatioForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
