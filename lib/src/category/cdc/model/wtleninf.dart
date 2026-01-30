part of '../cdc.dart';

class CDCInfantWeightForLengthData extends LengthBasedData {
  factory CDCInfantWeightForLengthData() => _singleton;
  CDCInfantWeightForLengthData._(this._data);

  static final _singleton = CDCInfantWeightForLengthData._(_parse());

  static Map<Sex, Map<num, _CDCInfantWeightForLengthLMS>> _parse() =>
      cdcwtleninf.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          (v1).map((k2, v2) {
            v2;
            final lms = LMS(
              l: v2['l'] as num,
              m: v2['m'] as num,
              s: v2['s'] as num,
            );
            return MapEntry(
              num.parse(k2),
              _CDCInfantWeightForLengthLMS(lms: lms),
            );
          }),
        ),
      );
  final Map<Sex, Map<num, _CDCInfantWeightForLengthLMS>> _data;
  @override
  Map<Sex, Map<num, _CDCInfantWeightForLengthLMS>> get data => _data;

  @override
  String toString() => 'Weight For Length Data($_data)';

  @override
  Length get unit => Length.centimeter;
}

@freezed
sealed class CDCInfantWeightForLength extends LengthBasedResult
    with _$CDCInfantWeightForLength {
  //TODO(devsdocs): Test this!
  factory CDCInfantWeightForLength({
    required Sex sex,
    required Age age,
    required Length length,
    required Mass weight,
    required LengthHeightMeasurementPosition measure,
  }) = _CDCInfantWeightForLength;

  const CDCInfantWeightForLength._();

  factory CDCInfantWeightForLength.fromJson(Map<String, dynamic> json) =>
      _$CDCInfantWeightForLengthFromJson(json);

  Length$Centimeter get _adjustedLength => adjustedLengthHeight(
    measure: measure,
    age: age,
    lengthHeight: length,
    type: AdjustedLengthType.cdc,
  );

  @override
  CDCInfantWeightForLengthData get contextData =>
      CDCInfantWeightForLengthData();

  //TODO(devsdocs): Fix CDC length calculation
  _CDCInfantWeightForLengthLMS get _ageData =>
      contextData._data[sex]![_length]!;

  @override
  Length get lengthAtObservationDate =>
      checkLength(_adjustedLength, contextData: contextData);

  num get _length => lengthAtObservationDate.value == 45
      ? 45
      : lengthAtObservationDate.value.truncate() + 0.5;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

  @override
  num zScore([Precision precision = Precision.two]) =>
      _zScore.precision(precision);

  @override
  num percentile([Precision precision = Precision.two]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _CDCInfantWeightForLengthLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => weight.toKilogram.value;
}

class _CDCInfantWeightForLengthLMS extends LMSContext {
  _CDCInfantWeightForLengthLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Weight For Length LMS($lms)';
}
