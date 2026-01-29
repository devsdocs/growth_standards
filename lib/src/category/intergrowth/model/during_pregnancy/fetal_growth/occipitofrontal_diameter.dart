part of '../../../intergrowth.dart';

class IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeData
    extends AgeBasedData {
  factory IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeData() =>
      _singleton;
  IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeData._(this._data);

  static final _singleton =
      IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeData._(_parse());

  static Map<
    Sex,
    Map<int, _IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeLMS>
  >
  _parse() {
    final map = _grow_fetal_ofd.toJsonObjectAsMap.map((k1, v1) {
      v1 as Map<String, dynamic>;
      final lms = LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
      return MapEntry(
        int.parse(k1),
        _IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeLMS(lms: lms),
      );
    });
    return {Sex.male: map, Sex.female: map};
  }

  final Map<
    Sex,
    Map<int, _IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeLMS>
  >
  _data;
  @override
  Map<Sex, Map<int, _IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeLMS>>
  get data => _data;

  @override
  String toString() => 'Newborn Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class IntergrowthFetalGrowtOccipitoFrontalDiameterForAge
    extends AgeBasedResult
    with _$IntergrowthFetalGrowtOccipitoFrontalDiameterForAge {
  factory IntergrowthFetalGrowtOccipitoFrontalDiameterForAge({
    required Age age,
    required Length measurementResult,
  }) = _IntergrowthFetalGrowtOccipitoFrontalDiameterForAge;

  const IntergrowthFetalGrowtOccipitoFrontalDiameterForAge._();

  factory IntergrowthFetalGrowtOccipitoFrontalDiameterForAge.fromJson(
    Map<String, dynamic> json,
  ) => _$IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeFromJson(json);

  @override
  IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeData get contextData =>
      IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeData();

  _IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeLMS get _ageData =>
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
  _IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeLMS get lmsData =>
      _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toMillimeter.value;
}

class _IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeLMS
    extends LMSContext {
  _IntergrowthFetalGrowtOccipitoFrontalDiameterForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
