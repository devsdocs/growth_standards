part of '../../../intergrowth.dart';

class IntergrowthFetalGrowtFemurLengthForAgeData extends AgeBasedData {
  factory IntergrowthFetalGrowtFemurLengthForAgeData() => _singleton;
  IntergrowthFetalGrowtFemurLengthForAgeData._(this._data);

  static final _singleton = IntergrowthFetalGrowtFemurLengthForAgeData._(
    _parse(),
  );

  static Map<Sex, Map<int, _IntergrowthFetalGrowtFemurLengthForAgeLMS>>
  _parse() {
    final map = _grow_fetal_fl.map((k1, v1) {
      final lms = LMS(
        l: v1['l']! as num,
        m: v1['m']! as num,
        s: v1['s']! as num,
      );
      return MapEntry(k1, _IntergrowthFetalGrowtFemurLengthForAgeLMS(lms: lms));
    });
    return {Sex.male: map, Sex.female: map};
  }

  final Map<Sex, Map<int, _IntergrowthFetalGrowtFemurLengthForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _IntergrowthFetalGrowtFemurLengthForAgeLMS>> get data =>
      _data;

  @override
  String toString() => 'Newborn Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class IntergrowthFetalGrowtFemurLengthForAge extends AgeBasedResult
    with _$IntergrowthFetalGrowtFemurLengthForAge {
  factory IntergrowthFetalGrowtFemurLengthForAge({
    required Age age,
    required Length measurementResult,
  }) = _IntergrowthFetalGrowtFemurLengthForAge;

  const IntergrowthFetalGrowtFemurLengthForAge._();

  factory IntergrowthFetalGrowtFemurLengthForAge.fromJson(
    Map<String, dynamic> json,
  ) => _$IntergrowthFetalGrowtFemurLengthForAgeFromJson(json);

  @override
  IntergrowthFetalGrowtFemurLengthForAgeData get contextData =>
      IntergrowthFetalGrowtFemurLengthForAgeData();

  _IntergrowthFetalGrowtFemurLengthForAgeLMS get _ageData =>
      contextData._data.values.first[ageAtObservationDate.ageInTotalByUnit(
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
  _IntergrowthFetalGrowtFemurLengthForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toMillimeter.value;
}

class _IntergrowthFetalGrowtFemurLengthForAgeLMS extends LMSContext {
  _IntergrowthFetalGrowtFemurLengthForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
