part of '../../../intergrowth.dart';

class IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeData
    extends AgeBasedData {
  factory IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeData() =>
      _singleton;
  IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeData._(
      this._data);

  static final _singleton =
      IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeData._(
          _parse());

  static Map<
          Sex,
          Map<int,
              _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeLMS>>
      _parse() => {
            Sex.male: _grow_verypreterm_wlr_boys.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
            Sex.female: _grow_verypreterm_wlr_girls.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
          };

  final Map<
          Sex,
          Map<int,
              _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeLMS>>
      _data;
  @override
  Map<
          Sex,
          Map<int,
              _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeLMS>>
      get data => _data;

  @override
  String toString() =>
      'Very Preterm Newborn Weight for Length Ratio For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

@freezed
sealed class NewbornWeightLengthRatioMeasurement
    with _$NewbornWeightLengthRatioMeasurement {
  factory NewbornWeightLengthRatioMeasurement(num value) =
      _NewbornWeightLengthRatioMeasurement;
  const NewbornWeightLengthRatioMeasurement._();

  factory NewbornWeightLengthRatioMeasurement.fromMeasurement({
    required Length length,
    required Mass weight,
  }) {
    final lengthInMeter = length.toMeter.value;
    final weightInKilogram = weight.toKilogram.value;
    final ratio = weightInKilogram / lengthInMeter;

    return NewbornWeightLengthRatioMeasurement(
      ratio,
    );
  }

  factory NewbornWeightLengthRatioMeasurement.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NewbornWeightLengthRatioMeasurementFromJson(json);
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge
    extends AgeBasedResult
    with _$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge {
  factory IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge({
    required Sex sex,
    required Age age,
    required NewbornWeightLengthRatioMeasurement measurementResult,
  }) = _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge;

  const IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge._();

  factory IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeFromJson(
          json);

  @override
  IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeData
      get contextData =>
          IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeData();

  _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeLMS
      get _ageData =>
          contextData._data[sex]![ageAtObservationDate.ageInTotalDaysByNow]!;

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
  _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeLMS
      get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => measurementResult.value;
}

class _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeLMS
    extends LMSContext {
  _IntergrowthVeryPretermNewbornBirthWeightForLengthRatioForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() =>
      'Very Preterm Newborn Weight for Length Ratio For Age LMS(lms: $lms)';
}
