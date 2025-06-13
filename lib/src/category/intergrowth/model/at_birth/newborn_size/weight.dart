part of '../../../intergrowth.dart';

class NewbornBirthWeightForAgeData extends AgeBasedData {
  factory NewbornBirthWeightForAgeData() => _singleton;
  NewbornBirthWeightForAgeData._(this._data);

  static final _singleton = NewbornBirthWeightForAgeData._(_parse());

  static Map<Sex, Map<int, _NewbornBirthWeightForAgeLMS>> _parse() => {
        Sex.male: _grow_newborn_boys_bw.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _NewbornBirthWeightForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
        Sex.female: _grow_newborn_girls_bw.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _NewbornBirthWeightForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
      };

  final Map<Sex, Map<int, _NewbornBirthWeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _NewbornBirthWeightForAgeLMS>> get data => _data;

  @override
  String toString() => 'Newborn Weight For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 33 and 43
@freezed
sealed class NewbornBirthWeightForAge extends AgeBasedResult
    with _$NewbornBirthWeightForAge {
  factory NewbornBirthWeightForAge({
    required Sex sex,
    required Age age,
    required Mass measurementResult,
  }) = _NewbornBirthWeightForAge;

  const NewbornBirthWeightForAge._();

  factory NewbornBirthWeightForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NewbornBirthWeightForAgeFromJson(json);

  @override
  NewbornBirthWeightForAgeData get contextData =>
      NewbornBirthWeightForAgeData();

  _NewbornBirthWeightForAgeLMS get _ageData =>
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
  _NewbornBirthWeightForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => measurementResult.toKilogram.value;
}

class _NewbornBirthWeightForAgeLMS extends LMSContext {
  _NewbornBirthWeightForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
