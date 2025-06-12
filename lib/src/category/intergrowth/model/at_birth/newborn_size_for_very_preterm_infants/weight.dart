part of '../../../intergrowth.dart';

class VeryPretermNewbornBirthWeightForAgeData extends AgeBasedData {
  factory VeryPretermNewbornBirthWeightForAgeData() => _singleton;
  VeryPretermNewbornBirthWeightForAgeData._(this._data);

  static final _singleton = VeryPretermNewbornBirthWeightForAgeData._(_parse());

  static Map<Sex, Map<int, _VeryPretermNewbornBirthWeightForAgeLMS>> _parse() =>
      {
        Sex.male: _grow_verypreterm_boys_bw.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _VeryPretermNewbornBirthWeightForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
        Sex.female: _grow_verypreterm_girls_bw.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _VeryPretermNewbornBirthWeightForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
      };

  final Map<Sex, Map<int, _VeryPretermNewbornBirthWeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _VeryPretermNewbornBirthWeightForAgeLMS>> get data => _data;

  @override
  String toString() => 'Infant Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class VeryPretermNewbornBirthWeightForAge extends AgeBasedResult
    with _$VeryPretermNewbornBirthWeightForAge {
  factory VeryPretermNewbornBirthWeightForAge({
    required Sex sex,
    required Age age,
    required Mass measurementResult,
  }) = _VeryPretermNewbornBirthWeightForAge;

  const VeryPretermNewbornBirthWeightForAge._();

  factory VeryPretermNewbornBirthWeightForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$VeryPretermNewbornBirthWeightForAgeFromJson(json);

  @override
  VeryPretermNewbornBirthWeightForAgeData get contextData =>
      VeryPretermNewbornBirthWeightForAgeData();

  _VeryPretermNewbornBirthWeightForAgeLMS get _ageData =>
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
  _VeryPretermNewbornBirthWeightForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => measurementResult.toKilogram.value;
}

class _VeryPretermNewbornBirthWeightForAgeLMS extends LMSContext {
  _VeryPretermNewbornBirthWeightForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
