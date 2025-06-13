part of '../../../intergrowth.dart';

class IntergrowthCrownRumpLengthForAgeData extends AgeBasedData {
  factory IntergrowthCrownRumpLengthForAgeData() => _singleton;
  IntergrowthCrownRumpLengthForAgeData._(this._data);

  static final _singleton = IntergrowthCrownRumpLengthForAgeData._(_parse());

  static Map<Sex, Map<num, _IntergrowthCrownRumpLengthForAgeLMS>> _parse() {
    final map = _grow_early_preg_charts_size.toJsonObjectAsMap.map(
      (k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _IntergrowthCrownRumpLengthForAgeLMS(
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

  final Map<Sex, Map<num, _IntergrowthCrownRumpLengthForAgeLMS>> _data;
  @override
  Map<Sex, Map<num, _IntergrowthCrownRumpLengthForAgeLMS>> get data => _data;

  @override
  String toString() => 'Early Pregnancy Dating For CRL Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

@freezed
sealed class IntergrowthCrownRumpLengthForAge extends AgeBasedResult
    with _$IntergrowthCrownRumpLengthForAge {
  factory IntergrowthCrownRumpLengthForAge({
    required Age age,
    required Length length,
  }) = _IntergrowthCrownRumpLengthForAge;

  const IntergrowthCrownRumpLengthForAge._();

  factory IntergrowthCrownRumpLengthForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthCrownRumpLengthForAgeFromJson(json);

  @override
  IntergrowthCrownRumpLengthForAgeData get contextData =>
      IntergrowthCrownRumpLengthForAgeData();

  _IntergrowthCrownRumpLengthForAgeLMS get _ageData => contextData
      ._data.values.first[ageAtObservationDate.ageInTotalWeeksByNow]!;

  num get _zScore =>
      _ageData.lms.adjustedZScore(measurementResultInDefaultUnit);

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
  _IntergrowthCrownRumpLengthForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => length.toMillimeter.value;
}

class _IntergrowthCrownRumpLengthForAgeLMS extends LMSContext {
  _IntergrowthCrownRumpLengthForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Weight For Height LMS($lms)';
}
