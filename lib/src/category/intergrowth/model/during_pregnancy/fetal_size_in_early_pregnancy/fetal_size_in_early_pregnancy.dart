part of '../../../intergrowth.dart';

class IntergrowthFetalCrownRumpLengthForAgeData extends AgeBasedData {
  factory IntergrowthFetalCrownRumpLengthForAgeData() => _singleton;
  IntergrowthFetalCrownRumpLengthForAgeData._(this._data);

  static final _singleton =
      IntergrowthFetalCrownRumpLengthForAgeData._(_parse());

  static Map<Sex, Map<num, _IntergrowthFetalCrownRumpLengthForAgeLMS>>
      _parse() {
    final map = _grow_early_preg_charts_size.toJsonObjectAsMap.map(
      (k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _IntergrowthFetalCrownRumpLengthForAgeLMS(
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

  final Map<Sex, Map<num, _IntergrowthFetalCrownRumpLengthForAgeLMS>> _data;
  @override
  Map<Sex, Map<num, _IntergrowthFetalCrownRumpLengthForAgeLMS>> get data =>
      _data;

  @override
  String toString() => 'Early Pregnancy Dating For CRL Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

@freezed
sealed class IntergrowthFetalCrownRumpLengthForAge extends AgeBasedResult
    with _$IntergrowthFetalCrownRumpLengthForAge {
  factory IntergrowthFetalCrownRumpLengthForAge({
    required Age age,
    required Length length,
  }) = _IntergrowthFetalCrownRumpLengthForAge;

  const IntergrowthFetalCrownRumpLengthForAge._();

  factory IntergrowthFetalCrownRumpLengthForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthFetalCrownRumpLengthForAgeFromJson(json);

  @override
  IntergrowthFetalCrownRumpLengthForAgeData get contextData =>
      IntergrowthFetalCrownRumpLengthForAgeData();

  _IntergrowthFetalCrownRumpLengthForAgeLMS get _ageData => contextData
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
  _IntergrowthFetalCrownRumpLengthForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => length.toMillimeter.value;
}

class _IntergrowthFetalCrownRumpLengthForAgeLMS extends LMSContext {
  _IntergrowthFetalCrownRumpLengthForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Weight For Height LMS($lms)';
}
