part of '../../../intergrowth.dart';

class IntergrowthNewbornBirthWeightForAgeData extends AgeBasedData {
  factory IntergrowthNewbornBirthWeightForAgeData() => _singleton;
  IntergrowthNewbornBirthWeightForAgeData._(this._data);

  static final _singleton = IntergrowthNewbornBirthWeightForAgeData._(_parse());

  static Map<Sex, Map<int, _IntergrowthNewbornBirthWeightForAgeLMS>> _parse() =>
      {
        Sex.male: _grow_newborn_boys_bw.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _IntergrowthNewbornBirthWeightForAgeLMS(
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
              _IntergrowthNewbornBirthWeightForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
      };

  final Map<Sex, Map<int, _IntergrowthNewbornBirthWeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _IntergrowthNewbornBirthWeightForAgeLMS>> get data => _data;

  @override
  String toString() => 'Newborn Weight For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 33 and 43
@freezed
sealed class IntergrowthNewbornBirthWeightForAge extends AgeBasedResult
    with _$IntergrowthNewbornBirthWeightForAge {
  factory IntergrowthNewbornBirthWeightForAge({
    required Sex sex,
    required Age age,
    required Mass measurementResult,
  }) = _IntergrowthNewbornBirthWeightForAge;

  const IntergrowthNewbornBirthWeightForAge._();

  factory IntergrowthNewbornBirthWeightForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthNewbornBirthWeightForAgeFromJson(json);

  @override
  IntergrowthNewbornBirthWeightForAgeData get contextData =>
      IntergrowthNewbornBirthWeightForAgeData();

  _IntergrowthNewbornBirthWeightForAgeLMS get _ageData => contextData
      ._data[sex]![ageAtObservationDate.ageInTotalByUnit(contextData.unit)]!;

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
  _IntergrowthNewbornBirthWeightForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => measurementResult.toKilogram.value;
}

class _IntergrowthNewbornBirthWeightForAgeLMS extends LMSContext {
  _IntergrowthNewbornBirthWeightForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Newborn Weight For Age LMS(lms: $lms)';
}
