part of '../../../intergrowth.dart';

class IntergrowthFetalGrowtAbdominalCircumferenceForAgeData
    extends AgeBasedData {
  factory IntergrowthFetalGrowtAbdominalCircumferenceForAgeData() => _singleton;
  IntergrowthFetalGrowtAbdominalCircumferenceForAgeData._(this._data);

  static final _singleton =
      IntergrowthFetalGrowtAbdominalCircumferenceForAgeData._(_parse());

  static Map<Sex,
          Map<int, _IntergrowthFetalGrowtAbdominalCircumferenceForAgeLMS>>
      _parse() {
    final map = _grow_fetal_ac.toJsonObjectAsMap.map(
      (k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _IntergrowthFetalGrowtAbdominalCircumferenceForAgeLMS(
            lms: lms,
          ),
        );
      },
    );
    return {
      Sex.male: map,
      Sex.female: map,
    };
  }

  final Map<Sex,
      Map<int, _IntergrowthFetalGrowtAbdominalCircumferenceForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _IntergrowthFetalGrowtAbdominalCircumferenceForAgeLMS>>
      get data => _data;

  @override
  String toString() => 'Newborn Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class IntergrowthFetalGrowtAbdominalCircumferenceForAge
    extends AgeBasedResult
    with _$IntergrowthFetalGrowtAbdominalCircumferenceForAge {
  factory IntergrowthFetalGrowtAbdominalCircumferenceForAge({
    required Age age,
    required Length measurementResult,
  }) = _IntergrowthFetalGrowtAbdominalCircumferenceForAge;

  const IntergrowthFetalGrowtAbdominalCircumferenceForAge._();

  factory IntergrowthFetalGrowtAbdominalCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthFetalGrowtAbdominalCircumferenceForAgeFromJson(json);

  @override
  IntergrowthFetalGrowtAbdominalCircumferenceForAgeData get contextData =>
      IntergrowthFetalGrowtAbdominalCircumferenceForAgeData();

  _IntergrowthFetalGrowtAbdominalCircumferenceForAgeLMS get _ageData =>
      contextData
          ._data.values.first[ageAtObservationDate.ageInTotalWeeksByNow]!;

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
  _IntergrowthFetalGrowtAbdominalCircumferenceForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toMillimeter.value;
}

class _IntergrowthFetalGrowtAbdominalCircumferenceForAgeLMS extends LMSContext {
  _IntergrowthFetalGrowtAbdominalCircumferenceForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
