part of '../../../intergrowth.dart';

class IntergrowthFetalGrowtBiparietalDiameterForAgeData extends AgeBasedData {
  factory IntergrowthFetalGrowtBiparietalDiameterForAgeData() => _singleton;
  IntergrowthFetalGrowtBiparietalDiameterForAgeData._(this._data);

  static final _singleton =
      IntergrowthFetalGrowtBiparietalDiameterForAgeData._(_parse());

  static Map<Sex, Map<int, _IntergrowthFetalGrowtBiparietalDiameterForAgeLMS>>
      _parse() {
    final map = _grow_fetal_bpd.toJsonObjectAsMap.map(
      (k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _IntergrowthFetalGrowtBiparietalDiameterForAgeLMS(
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

  final Map<Sex, Map<int, _IntergrowthFetalGrowtBiparietalDiameterForAgeLMS>>
      _data;
  @override
  Map<Sex, Map<int, _IntergrowthFetalGrowtBiparietalDiameterForAgeLMS>>
      get data => _data;

  @override
  String toString() => 'Newborn Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class IntergrowthFetalGrowtBiparietalDiameterForAge
    extends AgeBasedResult
    with _$IntergrowthFetalGrowtBiparietalDiameterForAge {
  factory IntergrowthFetalGrowtBiparietalDiameterForAge({
    required Age age,
    required Length measurementResult,
  }) = _IntergrowthFetalGrowtBiparietalDiameterForAge;

  const IntergrowthFetalGrowtBiparietalDiameterForAge._();

  factory IntergrowthFetalGrowtBiparietalDiameterForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthFetalGrowtBiparietalDiameterForAgeFromJson(json);

  @override
  IntergrowthFetalGrowtBiparietalDiameterForAgeData get contextData =>
      IntergrowthFetalGrowtBiparietalDiameterForAgeData();

  _IntergrowthFetalGrowtBiparietalDiameterForAgeLMS get _ageData => contextData
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
    Precision precision = Precision.two,
  ]) =>
      _zScore.precision(precision);

  @override
  num percentile([
    Precision precision = Precision.two,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _IntergrowthFetalGrowtBiparietalDiameterForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toMillimeter.value;
}

class _IntergrowthFetalGrowtBiparietalDiameterForAgeLMS extends LMSContext {
  _IntergrowthFetalGrowtBiparietalDiameterForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
