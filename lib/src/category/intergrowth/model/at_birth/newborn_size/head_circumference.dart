part of '../../../intergrowth.dart';

class NewbornBirthHeadCircumferenceForAgeData extends AgeBasedData {
  factory NewbornBirthHeadCircumferenceForAgeData() => _singleton;
  NewbornBirthHeadCircumferenceForAgeData._(this._data);

  static final _singleton = NewbornBirthHeadCircumferenceForAgeData._(_parse());

  static Map<Sex, Map<int, _NewbornBirthHeadCircumferenceForAgeLMS>> _parse() =>
      {
        Sex.male: _grow_newborn_boys_hc.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _NewbornBirthHeadCircumferenceForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
        Sex.female: _grow_newborn_girls_hc.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _NewbornBirthHeadCircumferenceForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
      };

  final Map<Sex, Map<int, _NewbornBirthHeadCircumferenceForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _NewbornBirthHeadCircumferenceForAgeLMS>> get data => _data;

  @override
  String toString() => 'Newborn Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class NewbornBirthHeadCircumferenceForAge extends AgeBasedResult
    with _$NewbornBirthHeadCircumferenceForAge {
  factory NewbornBirthHeadCircumferenceForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _NewbornBirthHeadCircumferenceForAge;

  const NewbornBirthHeadCircumferenceForAge._();

  factory NewbornBirthHeadCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$NewbornBirthHeadCircumferenceForAgeFromJson(json);

  @override
  NewbornBirthHeadCircumferenceForAgeData get contextData =>
      NewbornBirthHeadCircumferenceForAgeData();

  _NewbornBirthHeadCircumferenceForAgeLMS get _ageData =>
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
  _NewbornBirthHeadCircumferenceForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _NewbornBirthHeadCircumferenceForAgeLMS extends LMSContext {
  _NewbornBirthHeadCircumferenceForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
