part of '../../../intergrowth.dart';

class IntergrowthNewbornBirthWeightForLengthRatioForAgeData
    extends AgeBasedData {
  factory IntergrowthNewbornBirthWeightForLengthRatioForAgeData() => _singleton;
  IntergrowthNewbornBirthWeightForLengthRatioForAgeData._(this._data);

  static final _singleton =
      IntergrowthNewbornBirthWeightForLengthRatioForAgeData._(_parse());

  static Map<
    Sex,
    Map<int, _IntergrowthNewbornBirthWeightForLengthRatioForAgeLMS>
  >
  _parse() => {
    Sex.male: _grow_newborn_wlr_boys.toJsonObjectAsMap.map((k1, v1) {
      v1 as Map<String, dynamic>;
      final lms = LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
      return MapEntry(
        int.parse(k1),
        _IntergrowthNewbornBirthWeightForLengthRatioForAgeLMS(lms: lms),
      );
    }),
    Sex.female: _grow_newborn_wlr_girls.toJsonObjectAsMap.map((k1, v1) {
      v1 as Map<String, dynamic>;
      final lms = LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
      return MapEntry(
        int.parse(k1),
        _IntergrowthNewbornBirthWeightForLengthRatioForAgeLMS(lms: lms),
      );
    }),
  };

  final Map<
    Sex,
    Map<int, _IntergrowthNewbornBirthWeightForLengthRatioForAgeLMS>
  >
  _data;
  @override
  Map<Sex, Map<int, _IntergrowthNewbornBirthWeightForLengthRatioForAgeLMS>>
  get data => _data;

  @override
  String toString() => 'Newborn Weight for Length Ratio For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 33 and 43
@freezed
sealed class IntergrowthNewbornBirthWeightForLengthRatioForAge
    extends AgeBasedResult
    with _$IntergrowthNewbornBirthWeightForLengthRatioForAge {
  factory IntergrowthNewbornBirthWeightForLengthRatioForAge({
    required Sex sex,
    required Age age,
    required NewbornWeightLengthRatioMeasurement measurementResult,
  }) = _IntergrowthNewbornBirthWeightForLengthRatioForAge;

  const IntergrowthNewbornBirthWeightForLengthRatioForAge._();

  factory IntergrowthNewbornBirthWeightForLengthRatioForAge.fromJson(
    Map<String, dynamic> json,
  ) => _$IntergrowthNewbornBirthWeightForLengthRatioForAgeFromJson(json);

  @override
  IntergrowthNewbornBirthWeightForLengthRatioForAgeData get contextData =>
      IntergrowthNewbornBirthWeightForLengthRatioForAgeData();

  _IntergrowthNewbornBirthWeightForLengthRatioForAgeLMS get _ageData =>
      contextData._data[sex]![ageAtObservationDate.ageInTotalByUnit(
        contextData.unit,
      )]!;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

  @override
  Age get ageAtObservationDate => checkAge(age, contextData: contextData);

  @override
  num zScore([Precision precision = Precision.two]) =>
      _zScore.precision(precision);

  @override
  num percentile([Precision precision = Precision.two]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _IntergrowthNewbornBirthWeightForLengthRatioForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => measurementResult.value;
}

class _IntergrowthNewbornBirthWeightForLengthRatioForAgeLMS extends LMSContext {
  _IntergrowthNewbornBirthWeightForLengthRatioForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Newborn Weight for Length Ratio For Age LMS(lms: $lms)';
}
