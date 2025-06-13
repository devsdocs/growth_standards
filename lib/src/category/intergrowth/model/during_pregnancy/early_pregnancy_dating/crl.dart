part of '../../../intergrowth.dart';

class EarlyPregnancyDatingForCRLData extends LengthBasedData {
  factory EarlyPregnancyDatingForCRLData() => _singleton;
  EarlyPregnancyDatingForCRLData._(this._data);

  static final _singleton = EarlyPregnancyDatingForCRLData._(_parse());

  static Map<Sex, Map<num, _EarlyPregnancyDatingForCRLLMS>> _parse() {
    final map = _grow_early_preg_charts_crl_dating.toJsonObjectAsMap.map(
      (k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _EarlyPregnancyDatingForCRLLMS(
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

  final Map<Sex, Map<num, _EarlyPregnancyDatingForCRLLMS>> _data;
  @override
  Map<Sex, Map<num, _EarlyPregnancyDatingForCRLLMS>> get data => _data;

  @override
  String toString() => 'Early Pregnancy Dating For CRL Data($_data)';

  @override
  Length get unit => Length.centimeter;
}

@freezed
sealed class EarlyPregnancyDatingForCRL extends LengthBasedResult
    with _$EarlyPregnancyDatingForCRL {
  factory EarlyPregnancyDatingForCRL({
    required Age age,
    required Length length,
  }) = _EarlyPregnancyDatingForCRL;

  const EarlyPregnancyDatingForCRL._();

  factory EarlyPregnancyDatingForCRL.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$EarlyPregnancyDatingForCRLFromJson(json);

  @override
  EarlyPregnancyDatingForCRLData get contextData =>
      EarlyPregnancyDatingForCRLData();

  _EarlyPregnancyDatingForCRLLMS get _ageData =>
      contextData._data.values.first[_length]!;

  @override
  Length get lengthAtObservationDate =>
      checkLength(length, contextData: contextData);

  num get _length => lengthAtObservationDate.value.toDouble().toPrecision(1);

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
  _EarlyPregnancyDatingForCRLLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => length.toCentimeter.value;
}

class _EarlyPregnancyDatingForCRLLMS extends LMSContext {
  _EarlyPregnancyDatingForCRLLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Weight For Height LMS($lms)';
}
