part of '../../../intergrowth.dart';

class IntergrowthVeryPretermNewbornBirthLengthForAgeData extends AgeBasedData {
  factory IntergrowthVeryPretermNewbornBirthLengthForAgeData() => _singleton;
  IntergrowthVeryPretermNewbornBirthLengthForAgeData._(this._data);

  static final _singleton =
      IntergrowthVeryPretermNewbornBirthLengthForAgeData._(_parse());

  static Map<Sex, Map<int, _IntergrowthVeryPretermNewbornBirthLengthForAgeLMS>>
      _parse() => {
            Sex.male: _grow_verypreterm_boys_lt.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _IntergrowthVeryPretermNewbornBirthLengthForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
            Sex.female: _grow_verypreterm_girls_lt.toJsonObjectAsMap.map(
              (k1, v1) {
                v1 as Map<String, dynamic>;
                final lms = LMS(
                    l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
                return MapEntry(
                  int.parse(k1),
                  _IntergrowthVeryPretermNewbornBirthLengthForAgeLMS(
                    lms: lms,
                  ),
                );
              },
            ),
          };

  final Map<Sex, Map<int, _IntergrowthVeryPretermNewbornBirthLengthForAgeLMS>>
      _data;
  @override
  Map<Sex, Map<int, _IntergrowthVeryPretermNewbornBirthLengthForAgeLMS>>
      get data => _data;

  @override
  String toString() => 'Very Preterm Newborn Length For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class IntergrowthVeryPretermNewbornBirthLengthForAge
    extends AgeBasedResult
    with _$IntergrowthVeryPretermNewbornBirthLengthForAge {
  factory IntergrowthVeryPretermNewbornBirthLengthForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _IntergrowthVeryPretermNewbornBirthLengthForAge;

  const IntergrowthVeryPretermNewbornBirthLengthForAge._();

  factory IntergrowthVeryPretermNewbornBirthLengthForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthVeryPretermNewbornBirthLengthForAgeFromJson(json);

  @override
  IntergrowthVeryPretermNewbornBirthLengthForAgeData get contextData =>
      IntergrowthVeryPretermNewbornBirthLengthForAgeData();

  _IntergrowthVeryPretermNewbornBirthLengthForAgeLMS get _ageData => contextData
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
  _IntergrowthVeryPretermNewbornBirthLengthForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _IntergrowthVeryPretermNewbornBirthLengthForAgeLMS extends LMSContext {
  _IntergrowthVeryPretermNewbornBirthLengthForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Very Preterm Newborn Length For Age LMS(lms: $lms)';
}
