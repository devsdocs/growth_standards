part of '../../../intergrowth.dart';

class IntergrowthGestationalWeightGainForAgeData extends AgeBasedData {
  factory IntergrowthGestationalWeightGainForAgeData() => _singleton;
  IntergrowthGestationalWeightGainForAgeData._(this._data);

  static final _singleton =
      IntergrowthGestationalWeightGainForAgeData._(_parse());

  static Map<Sex, Map<int, _IntergrowthGestationalWeightGainForAgeLMS>>
      _parse() {
    final map = _grow_gwg_nw.toJsonObjectAsMap.map(
      (k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _IntergrowthGestationalWeightGainForAgeLMS(
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

  final Map<Sex, Map<int, _IntergrowthGestationalWeightGainForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _IntergrowthGestationalWeightGainForAgeLMS>> get data =>
      _data;

  @override
  String toString() => 'Newborn Weight For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 33 and 43
@freezed
sealed class IntergrowthGestationalWeightGainForAge extends AgeBasedResult
    with _$IntergrowthGestationalWeightGainForAge {
  factory IntergrowthGestationalWeightGainForAge({
    required Age age,
    required Mass measurementResult,
  }) = _IntergrowthGestationalWeightGainForAge;

  const IntergrowthGestationalWeightGainForAge._();

  factory IntergrowthGestationalWeightGainForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthGestationalWeightGainForAgeFromJson(json);

  @override
  IntergrowthGestationalWeightGainForAgeData get contextData =>
      IntergrowthGestationalWeightGainForAgeData();

  _IntergrowthGestationalWeightGainForAgeLMS get _ageData => contextData._data
      .values.first[ageAtObservationDate.ageInTotalByUnit(contextData.unit)]!;

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
  _IntergrowthGestationalWeightGainForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => measurementResult.toKilogram.value;
}

class _IntergrowthGestationalWeightGainForAgeLMS extends LMSContext {
  _IntergrowthGestationalWeightGainForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
