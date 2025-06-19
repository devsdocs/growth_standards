part of '../../../intergrowth.dart';

class IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeData
    extends AgeBasedData {
  factory IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeData() =>
      _singleton;
  IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeData._(this._data);

  static final _singleton =
      IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeData._(_parse());

  static Map<
          Sex,
          Map<int,
              _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeLMS>>
      _parse() => {
            Sex.male: _grow_verypreterm_boys_hc.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
            Sex.female: _grow_verypreterm_girls_hc.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
          };

  final Map<
      Sex,
      Map<int,
          _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeLMS>> _data;
  @override
  Map<
          Sex,
          Map<int,
              _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeLMS>>
      get data => _data;

  @override
  String toString() => 'Infant Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge
    extends AgeBasedResult
    with _$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge {
  factory IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge;

  const IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge._();

  factory IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeFromJson(json);

  @override
  IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeData
      get contextData =>
          IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeData();

  _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeLMS get _ageData =>
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
  _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeLMS get lmsData =>
      _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeLMS
    extends LMSContext {
  _IntergrowthVeryPretermNewbornBirthHeadCircumferenceForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() =>
      'Very Preterm Newborn Head Circumference For Age LMS(lms: $lms)';
}
