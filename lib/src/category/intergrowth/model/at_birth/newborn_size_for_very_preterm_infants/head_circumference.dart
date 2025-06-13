part of '../../../intergrowth.dart';

class VeryPretermNewbornBirthHeadCircumferenceForAgeData extends AgeBasedData {
  factory VeryPretermNewbornBirthHeadCircumferenceForAgeData() => _singleton;
  VeryPretermNewbornBirthHeadCircumferenceForAgeData._(this._data);

  static final _singleton =
      VeryPretermNewbornBirthHeadCircumferenceForAgeData._(_parse());

  static Map<Sex, Map<int, _VeryPretermNewbornBirthHeadCircumferenceForAgeLMS>>
      _parse() => {
            Sex.male: _grow_verypreterm_boys_hc.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _VeryPretermNewbornBirthHeadCircumferenceForAgeLMS(
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
                  _VeryPretermNewbornBirthHeadCircumferenceForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
          };

  final Map<Sex, Map<int, _VeryPretermNewbornBirthHeadCircumferenceForAgeLMS>>
      _data;
  @override
  Map<Sex, Map<int, _VeryPretermNewbornBirthHeadCircumferenceForAgeLMS>>
      get data => _data;

  @override
  String toString() => 'Infant Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 33 and 43
@freezed
sealed class VeryPretermNewbornBirthHeadCircumferenceForAge
    extends AgeBasedResult
    with _$VeryPretermNewbornBirthHeadCircumferenceForAge {
  factory VeryPretermNewbornBirthHeadCircumferenceForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _VeryPretermNewbornBirthHeadCircumferenceForAge;

  const VeryPretermNewbornBirthHeadCircumferenceForAge._();

  factory VeryPretermNewbornBirthHeadCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$VeryPretermNewbornBirthHeadCircumferenceForAgeFromJson(json);

  @override
  VeryPretermNewbornBirthHeadCircumferenceForAgeData get contextData =>
      VeryPretermNewbornBirthHeadCircumferenceForAgeData();

  _VeryPretermNewbornBirthHeadCircumferenceForAgeLMS get _ageData =>
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
  _VeryPretermNewbornBirthHeadCircumferenceForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _VeryPretermNewbornBirthHeadCircumferenceForAgeLMS extends LMSContext {
  _VeryPretermNewbornBirthHeadCircumferenceForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
