part of '../cdc.dart';

class CDCWeightForStatureData extends LengthBasedData {
  factory CDCWeightForStatureData() => _singleton;
  CDCWeightForStatureData._(this._data);

  static final _singleton = CDCWeightForStatureData._(_parse());

  static Map<Sex, Map<num, _CDCWeightForStatureLMS>> _parse() =>
      cdcwtstat.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          (v1 as Map<String, dynamic>).map((k2, v2) {
            v2 as Map<String, dynamic>;
            final lms =
                LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
            return MapEntry(
              num.parse(k2),
              _CDCWeightForStatureLMS(
                lms: lms,
              ),
            );
          }),
        ),
      );
  final Map<Sex, Map<num, _CDCWeightForStatureLMS>> _data;
  @override
  Map<Sex, Map<num, _CDCWeightForStatureLMS>> get data => _data;

  @override
  String toString() => 'Weight For Length Data($_data)';

  @override
  Length get unit => Length.centimeter;
}

@freezed
sealed class CDCWeightForStature extends LengthBasedResult
    with _$CDCWeightForStature {
  //TODO(devsdocs): Test this!
  factory CDCWeightForStature({
    required Sex sex,
    required Age age,
    required Length height,
    required Mass weight,
    required LengthHeightMeasurementPosition measure,
  }) = _CDCWeightForStature;

  const CDCWeightForStature._();

  factory CDCWeightForStature.fromJson(Map<String, dynamic> json) =>
      _$CDCWeightForStatureFromJson(json);

  Length$Centimeter get _adjustedLength => adjustedLengthHeight(
        measure: measure,
        age: age,
        lengthHeight: height,
        type: AdjustedLengthType.cdc,
      );

  @override
  CDCWeightForStatureData get contextData => CDCWeightForStatureData();

//TODO(devsdocs): Fix CDC length calculation
  _CDCWeightForStatureLMS get _ageData => contextData._data[sex]![_length]!;

  @override
  Length get lengthAtObservationDate =>
      checkLength(_adjustedLength, contextData: contextData);

  num get _length => lengthAtObservationDate.value == 77
      ? 77
      : lengthAtObservationDate.value.truncate() + 0.5;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

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
  _CDCWeightForStatureLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => weight.toKilogram.value;
}

class _CDCWeightForStatureLMS extends LMSContext {
  _CDCWeightForStatureLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Weight For Length LMS($lms)';
}
