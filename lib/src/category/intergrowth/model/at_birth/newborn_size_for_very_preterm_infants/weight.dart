part of '../../../intergrowth.dart';

class IntergrowthVeryPretermNewbornBirthWeightForAgeData extends AgeBasedData {
  factory IntergrowthVeryPretermNewbornBirthWeightForAgeData() => _singleton;
  IntergrowthVeryPretermNewbornBirthWeightForAgeData._(this._data);

  static final _singleton =
      IntergrowthVeryPretermNewbornBirthWeightForAgeData._(_parse());

  static Map<Sex, Map<int, _IntergrowthVeryPretermNewbornBirthWeightForAgeLMS>>
      _parse() => {
            Sex.male: _grow_verypreterm_boys_bw.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _IntergrowthVeryPretermNewbornBirthWeightForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
            Sex.female: _grow_verypreterm_girls_bw.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _IntergrowthVeryPretermNewbornBirthWeightForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
          };

  final Map<Sex, Map<int, _IntergrowthVeryPretermNewbornBirthWeightForAgeLMS>>
      _data;
  @override
  Map<Sex, Map<int, _IntergrowthVeryPretermNewbornBirthWeightForAgeLMS>>
      get data => _data;

  @override
  String toString() => 'Very Preterm Newborn Weight For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class IntergrowthVeryPretermNewbornBirthWeightForAge
    extends AgeBasedResult
    with _$IntergrowthVeryPretermNewbornBirthWeightForAge {
  factory IntergrowthVeryPretermNewbornBirthWeightForAge({
    required Sex sex,
    required Age age,
    required Mass measurementResult,
  }) = _IntergrowthVeryPretermNewbornBirthWeightForAge;

  const IntergrowthVeryPretermNewbornBirthWeightForAge._();

  factory IntergrowthVeryPretermNewbornBirthWeightForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthVeryPretermNewbornBirthWeightForAgeFromJson(json);

  @override
  IntergrowthVeryPretermNewbornBirthWeightForAgeData get contextData =>
      IntergrowthVeryPretermNewbornBirthWeightForAgeData();

  _IntergrowthVeryPretermNewbornBirthWeightForAgeLMS get _ageData => contextData
      ._data[sex]![ageAtObservationDate.ageInTotalByUnit(contextData.unit)]!;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

  @override
  Age get ageAtObservationDate => checkAge(
        age,
        contextData: contextData,
      );

  @override
  num zScore([
    Precision precision = Precision.two,
  ]) =>
      _zScore.precision(precision);

  @override
  num percentile([
    Precision precision = Precision.two,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _IntergrowthVeryPretermNewbornBirthWeightForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => measurementResult.toKilogram.value;
}

class _IntergrowthVeryPretermNewbornBirthWeightForAgeLMS extends LMSContext {
  _IntergrowthVeryPretermNewbornBirthWeightForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Very Preterm Newborn Weight For Age LMS(lms: $lms)';
}
