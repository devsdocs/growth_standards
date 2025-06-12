part of '../../../intergrowth.dart';

class NewbornBirthWeightForLengthRatioForAgeData extends AgeBasedData {
  factory NewbornBirthWeightForLengthRatioForAgeData() => _singleton;
  NewbornBirthWeightForLengthRatioForAgeData._(this._data);

  static final _singleton =
      NewbornBirthWeightForLengthRatioForAgeData._(_parse());

  static Map<Sex, Map<int, _NewbornBirthWeightForLengthRatioForAgeLMS>>
      _parse() => {
            Sex.male: _grow_newborn_wlr_boys.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _NewbornBirthWeightForLengthRatioForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
            Sex.female: _grow_newborn_wlr_girls.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _NewbornBirthWeightForLengthRatioForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
          };

  final Map<Sex, Map<int, _NewbornBirthWeightForLengthRatioForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _NewbornBirthWeightForLengthRatioForAgeLMS>> get data =>
      _data;

  @override
  String toString() => 'Newborn Weight for Length Ratio For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 33 and 43
@freezed
sealed class NewbornBirthWeightForLengthRatioForAge extends AgeBasedResult
    with _$NewbornBirthWeightForLengthRatioForAge {
  factory NewbornBirthWeightForLengthRatioForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _NewbornBirthWeightForLengthRatioForAge;

  const NewbornBirthWeightForLengthRatioForAge._();

  factory NewbornBirthWeightForLengthRatioForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NewbornBirthWeightForLengthRatioForAgeFromJson(json);

  @override
  NewbornBirthWeightForLengthRatioForAgeData get contextData =>
      NewbornBirthWeightForLengthRatioForAgeData();

  _NewbornBirthWeightForLengthRatioForAgeLMS get _ageData => contextData
      ._data.values.first[ageAtObservationDate.ageInTotalDaysByNow]!;

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
  _NewbornBirthWeightForLengthRatioForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _NewbornBirthWeightForLengthRatioForAgeLMS extends LMSContext {
  _NewbornBirthWeightForLengthRatioForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Newborn Birth Weight For Age LMS(lms: $lms)';
}
