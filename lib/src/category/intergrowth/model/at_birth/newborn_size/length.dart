part of '../../../intergrowth.dart';

class IntergrowthNewbornBirthLengthForAgeData extends AgeBasedData {
  factory IntergrowthNewbornBirthLengthForAgeData() => _singleton;
  IntergrowthNewbornBirthLengthForAgeData._(this._data);

  static final _singleton = IntergrowthNewbornBirthLengthForAgeData._(_parse());

  static Map<Sex, Map<int, _IntergrowthNewbornBirthLengthForAgeLMS>> _parse() =>
      {
        Sex.male: _grow_newborn_boys_lt.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _IntergrowthNewbornBirthLengthForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
        Sex.female: _grow_newborn_girls_lt.toJsonObjectAsMap.map(
          (k1, v1) {
            v1 as Map<String, dynamic>;
            final lms =
                LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
            return MapEntry(
              int.parse(k1),
              _IntergrowthNewbornBirthLengthForAgeLMS(
                lms: lms,
              ),
            );
          },
        ),
      };

  final Map<Sex, Map<int, _IntergrowthNewbornBirthLengthForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _IntergrowthNewbornBirthLengthForAgeLMS>> get data => _data;

  @override
  String toString() => 'Newborn Length For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 33 and 43
@freezed
sealed class IntergrowthNewbornBirthLengthForAge extends AgeBasedResult
    with _$IntergrowthNewbornBirthLengthForAge {
  factory IntergrowthNewbornBirthLengthForAge({
    required Sex sex,
    required Age age,
    required Length measurementResult,
  }) = _IntergrowthNewbornBirthLengthForAge;

  const IntergrowthNewbornBirthLengthForAge._();

  factory IntergrowthNewbornBirthLengthForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthNewbornBirthLengthForAgeFromJson(json);

  @override
  IntergrowthNewbornBirthLengthForAgeData get contextData =>
      IntergrowthNewbornBirthLengthForAgeData();

  _IntergrowthNewbornBirthLengthForAgeLMS get _ageData =>
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
  _IntergrowthNewbornBirthLengthForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value;
}

class _IntergrowthNewbornBirthLengthForAgeLMS extends LMSContext {
  _IntergrowthNewbornBirthLengthForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
