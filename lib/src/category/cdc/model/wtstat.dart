part of '../cdc.dart';

class CDCWeightForStatureData extends BaseData {
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
}

@freezed
sealed class CDCWeightForStature extends LengthBasedResult
    with _$CDCWeightForStature {
  //TODO(devsdocs): Test this!
  @Assert(
    'adjustedLengthHeight(measure: measure,age: age,lengthHeight: height, type: AdjustedLengthType.cdc,).value >= 77 && adjustedLengthHeight(measure: measure,age: age,lengthHeight: height, type: AdjustedLengthType.cdc,).value < 122 && height.toCentimeter.value >= 77 && height.toCentimeter.value < 122',
    'Please correcting measurement position based on age',
  )
  //TODO(devsdocs): Test this!
  @Assert(
    'adjustedLengthHeight(measure: measure,age: age,lengthHeight: height, type: AdjustedLengthType.cdc,).value >= 77 && adjustedLengthHeight(measure: measure,age: age,lengthHeight: height, type: AdjustedLengthType.cdc,).value < 122',
    'Length must be in range of 77.0 - 121.9 cm',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory CDCWeightForStature({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length height,
    required Mass weight,
    required LengthHeightMeasurementPosition measure,
  }) = _CDCWeightForStature;

  const CDCWeightForStature._();

  factory CDCWeightForStature.fromJson(Map<String, dynamic> json) =>
      _$CDCWeightForStatureFromJson(json);

  num get _adjustedLength => adjustedLengthHeight(
        measure: measure,
        age: age,
        lengthHeight: height,
        type: AdjustedLengthType.cdc,
      ).value;

  CDCWeightForStatureData get _weightForLengthData => CDCWeightForStatureData();

  Map<num, _CDCWeightForStatureLMS> get _maleData =>
      _weightForLengthData._data[Sex.male]!;
  Map<num, _CDCWeightForStatureLMS> get _femaleData =>
      _weightForLengthData._data[Sex.female]!;
//TODO(devsdocs): Fix CDC length calculation
  _CDCWeightForStatureLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)[_length]!;

  @override
  Length get lengthAtObservationDate => Length$Centimeter(_length);

  num get _length =>
      _adjustedLength == 77 ? 77 : _adjustedLength.truncate() + 0.5;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

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
  _CDCWeightForStatureLMS get lengthData => _ageData;

  @override
  num get measurementResultInDefaultUnit => weight.toKilogram.value;
}

class _CDCWeightForStatureLMS extends LMSBasedResult {
  _CDCWeightForStatureLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Weight For Length LMS($lms)';
}
