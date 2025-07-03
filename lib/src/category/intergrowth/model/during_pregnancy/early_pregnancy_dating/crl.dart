part of '../../../intergrowth.dart';

class IntergrowthEarlyPregnancyDatingForCRLData extends LengthBasedData {
  factory IntergrowthEarlyPregnancyDatingForCRLData() => _singleton;
  IntergrowthEarlyPregnancyDatingForCRLData._(this._data);

  static final _singleton =
      IntergrowthEarlyPregnancyDatingForCRLData._(_parse());

  static Map<Sex, Map<num, _IntergrowthEarlyPregnancyDatingForCRLLMS>>
      _parse() {
    final map = _grow_early_preg_charts_crl_dating.toJsonObjectAsMap.map(
      (k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _IntergrowthEarlyPregnancyDatingForCRLLMS(
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

  final Map<Sex, Map<num, _IntergrowthEarlyPregnancyDatingForCRLLMS>> _data;
  @override
  Map<Sex, Map<num, _IntergrowthEarlyPregnancyDatingForCRLLMS>> get data =>
      _data;

  @override
  String toString() => 'Early Pregnancy Dating For CRL Data($_data)';

  @override
  Length get unit => Length.millimeter;
}

@freezed
sealed class IntergrowthEarlyPregnancyDatingForCRL extends LengthBasedResult
    with _$IntergrowthEarlyPregnancyDatingForCRL {
  factory IntergrowthEarlyPregnancyDatingForCRL({
    required Age age,
    required Length length,
  }) = _IntergrowthEarlyPregnancyDatingForCRL;

  const IntergrowthEarlyPregnancyDatingForCRL._();

  factory IntergrowthEarlyPregnancyDatingForCRL.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthEarlyPregnancyDatingForCRLFromJson(json);

  @override
  IntergrowthEarlyPregnancyDatingForCRLData get contextData =>
      IntergrowthEarlyPregnancyDatingForCRLData();

  _IntergrowthEarlyPregnancyDatingForCRLLMS get _ageData =>
      contextData._data.values.first[_length]!;

  @override
  Length get lengthAtObservationDate =>
      checkLength(length, contextData: contextData);

  num get _length => lengthAtObservationDate.value.toDouble().toPrecision(0);

  num get _zScore =>
      _ageData.lms.adjustedZScore(measurementResultInDefaultUnit);

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
  _IntergrowthEarlyPregnancyDatingForCRLLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => length.toMillimeter.value;
}

class _IntergrowthEarlyPregnancyDatingForCRLLMS extends LMSContext {
  _IntergrowthEarlyPregnancyDatingForCRLLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Weight For Height LMS($lms)';
}
