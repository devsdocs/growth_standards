part of '../../../intergrowth.dart';

class FetalGrowtOccipitoFrontalDiameterForAgeData extends AgeBasedData {
  factory FetalGrowtOccipitoFrontalDiameterForAgeData() => _singleton;
  FetalGrowtOccipitoFrontalDiameterForAgeData._(this._data);

  static final _singleton =
      FetalGrowtOccipitoFrontalDiameterForAgeData._(_parse());

  static Map<Sex, Map<int, _FetalGrowtOccipitoFrontalDiameterForAgeLMS>>
      _parse() {
    final map = _grow_fetal_ofd.toJsonObjectAsMap.map(
      (k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _FetalGrowtOccipitoFrontalDiameterForAgeLMS(
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

  final Map<Sex, Map<int, _FetalGrowtOccipitoFrontalDiameterForAgeLMS>> _data;
  @override
  Map<Sex, Map<int, _FetalGrowtOccipitoFrontalDiameterForAgeLMS>> get data =>
      _data;

  @override
  String toString() => 'Newborn Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

/// Measure within first 24 hours of life, for infants born between gestational weeks 24 and 33
@freezed
sealed class FetalGrowtOccipitoFrontalDiameterForAge extends AgeBasedResult
    with _$FetalGrowtOccipitoFrontalDiameterForAge {
  factory FetalGrowtOccipitoFrontalDiameterForAge({
    required Age age,
    required Length measurementResult,
  }) = _FetalGrowtOccipitoFrontalDiameterForAge;

  const FetalGrowtOccipitoFrontalDiameterForAge._();

  factory FetalGrowtOccipitoFrontalDiameterForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$FetalGrowtOccipitoFrontalDiameterForAgeFromJson(json);

  @override
  FetalGrowtOccipitoFrontalDiameterForAgeData get contextData =>
      FetalGrowtOccipitoFrontalDiameterForAgeData();

  _FetalGrowtOccipitoFrontalDiameterForAgeLMS get _ageData => contextData
      ._data.values.first[ageAtObservationDate.ageInTotalWeeksByNow]!;

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
  _FetalGrowtOccipitoFrontalDiameterForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toMillimeter.value;
}

class _FetalGrowtOccipitoFrontalDiameterForAgeLMS extends LMSContext {
  _FetalGrowtOccipitoFrontalDiameterForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'New Born Birth Weight For Age LMS(lms: $lms)';
}
