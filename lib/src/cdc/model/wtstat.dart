part of '../cdc.dart';

class CDCWeightForStatureData {
  factory CDCWeightForStatureData() => _singleton;
  CDCWeightForStatureData._(this._data);

  static final _singleton = CDCWeightForStatureData._(_parse());

  static Map<Sex, _CDCWeightForStatureGender> _parse() =>
      cdcwtstat.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _CDCWeightForStatureGender(
            lengthData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                num.parse(k2),
                _CDCWeightForStatureLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _CDCWeightForStatureGender> _data;
  Map<Sex, _CDCWeightForStatureGender> get data => _data;

  @override
  String toString() => 'Weight For Length Data($_data)';
}

@freezed
class CDCWeightForStature with _$CDCWeightForStature {
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

  _CDCWeightForStatureGender get _maleData =>
      _weightForLengthData._data[Sex.male]!;
  _CDCWeightForStatureGender get _femaleData =>
      _weightForLengthData._data[Sex.female]!;
//TODO(devsdocs): Fix CDC length calculation
  _CDCWeightForStatureLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData).lengthData[
          _adjustedLength == 77 ? 77 : _adjustedLength.truncate() + 0.5]!;

  num get _zScore => _ageData.lms.zScore(weight.toKilogram.value);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);
}

class _CDCWeightForStatureGender {
  _CDCWeightForStatureGender({required this.lengthData});

  final Map<num, _CDCWeightForStatureLMS> lengthData;
  @override
  String toString() => 'Gender Data($lengthData)';
}

class _CDCWeightForStatureLMS {
  _CDCWeightForStatureLMS({
    required this.lms,
    required this.standardDeviationCutOff,
    required this.percentileCutOff,
  });
  final LMS lms;

  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Length Data(LMS: $lms, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
