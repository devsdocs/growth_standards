part of '../../../intergrowth.dart';

class IntergrowthFetalGrowtHeadCircumferenceForAgeData extends AgeBasedData {
  factory IntergrowthFetalGrowtHeadCircumferenceForAgeData() => _singleton;
  IntergrowthFetalGrowtHeadCircumferenceForAgeData._(this._data);

  static final _singleton =
      IntergrowthFetalGrowtHeadCircumferenceForAgeData._(_parse());

  static Map<Sex, Map<int, _IntergrowthFetalGrowtHeadCircumferenceForAgeLMS>>
      _parse() {
    final map = _grow_fetal_hc.toJsonObjectAsMap.map(
      (k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _IntergrowthFetalGrowtHeadCircumferenceForAgeLMS(
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

  final Map<Sex, Map<int, _IntergrowthFetalGrowtHeadCircumferenceForAgeLMS>>
      _data;
  @override
  Map<Sex, Map<int, _IntergrowthFetalGrowtHeadCircumferenceForAgeLMS>>
      get data => _data;

  @override
  String toString() => 'Newborn Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class IntergrowthFetalGrowtHeadCircumferenceForAge extends AgeBasedResult
    with _$IntergrowthFetalGrowtHeadCircumferenceForAge {
  factory IntergrowthFetalGrowtHeadCircumferenceForAge({
    required Age age,
    required Length measurementResult,
  }) = _IntergrowthFetalGrowtHeadCircumferenceForAge;

  const IntergrowthFetalGrowtHeadCircumferenceForAge._();

  factory IntergrowthFetalGrowtHeadCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthFetalGrowtHeadCircumferenceForAgeFromJson(json);

  @override
  IntergrowthFetalGrowtHeadCircumferenceForAgeData get contextData =>
      IntergrowthFetalGrowtHeadCircumferenceForAgeData();

  _IntergrowthFetalGrowtHeadCircumferenceForAgeLMS get _ageData => contextData
      ._data
      .values
      .first[ageAtObservationDate.ageInTotalByUnit(contextData.unit)]!;

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
  _IntergrowthFetalGrowtHeadCircumferenceForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toMillimeter.value;
}

class _IntergrowthFetalGrowtHeadCircumferenceForAgeLMS extends LMSContext {
  _IntergrowthFetalGrowtHeadCircumferenceForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
