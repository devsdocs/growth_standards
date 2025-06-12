part of '../../../intergrowth.dart';

class VeryPretermNewbornBirthLengthForAgeData extends AgeBasedData {
  factory VeryPretermNewbornBirthLengthForAgeData() => _singleton;
  VeryPretermNewbornBirthLengthForAgeData._(this._data);

  static final _singleton = VeryPretermNewbornBirthLengthForAgeData._(_parse());

  static Map<Sex, Map<int, _VeryPretermNewbornBirthLengthForAgeLMS>> _parse() =>
      {
        Sex.male: _grow_verypreterm_boys_lt.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _VeryPretermNewbornBirthLengthForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
        Sex.female: _grow_verypreterm_girls_lt.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _VeryPretermNewbornBirthLengthForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
      };

  final Map<Sex, Map<int, _VeryPretermNewbornBirthLengthForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _VeryPretermNewbornBirthLengthForAgeLMS>> get data => _data;

  @override
  String toString() => 'Infant Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class VeryPretermNewbornBirthLengthForAge extends AgeBasedResult
    with _$VeryPretermNewbornBirthLengthForAge {
  factory VeryPretermNewbornBirthLengthForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _VeryPretermNewbornBirthLengthForAge;

  const VeryPretermNewbornBirthLengthForAge._();

  factory VeryPretermNewbornBirthLengthForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$VeryPretermNewbornBirthLengthForAgeFromJson(json);

  @override
  VeryPretermNewbornBirthLengthForAgeData get contextData =>
      VeryPretermNewbornBirthLengthForAgeData();

  _VeryPretermNewbornBirthLengthForAgeLMS get _ageData =>
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
  _VeryPretermNewbornBirthLengthForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _VeryPretermNewbornBirthLengthForAgeLMS extends LMSContext {
  _VeryPretermNewbornBirthLengthForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
