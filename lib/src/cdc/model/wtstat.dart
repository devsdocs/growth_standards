part of '../cdc.dart';

class CDCWeigthForStatureData {
  factory CDCWeigthForStatureData() => _singleton;
  CDCWeigthForStatureData._(this._data);

  static final _singleton = CDCWeigthForStatureData._(_parse());

  static Map<Sex, _CDCWeigthForStatureGender> _parse() =>
      cdcwtstat.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _CDCWeigthForStatureGender(
            lengthData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                num.parse(k2),
                _CDCWeigthForStatureLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _CDCWeigthForStatureGender> _data;
  Map<Sex, _CDCWeigthForStatureGender> get data => _data;

  @override
  String toString() => 'Weight For Length Data($_data)';
}

@freezed
class CDCWeigthForStature with _$CDCWeigthForStature {
  //TODO(devsdocs): Test this!
  @Assert(
    'adjustedLengthHeight(measure: measure,age: age,lengthHeight: length, type: AdjustedLengthType.cdc,).value! >= 77 && adjustedLengthHeight(measure: measure,age: age,lengthHeight: length, type: AdjustedLengthType.cdc,).value! < 122 && length.toCentimeters.value! >= 77 && length.toCentimeters.value! < 122',
    'Please correcting measurement position based on age',
  )
  //TODO(devsdocs): Test this!
  @Assert(
    'adjustedLengthHeight(measure: measure,age: age,lengthHeight: length, type: AdjustedLengthType.cdc,).value! >= 77 && adjustedLengthHeight(measure: measure,age: age,lengthHeight: length, type: AdjustedLengthType.cdc,).value! < 122',
    'Length must be in range of 77.0 - 121.9 cm',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory CDCWeigthForStature({
    @DateConverter() Date? observationDate,
    required Sex sex,
    @AgeConverter() required Age age,
    @LengthConverter() required Length length,
    @MassConverter() required Mass weight,
    required LengthHeigthMeasurementPosition measure,
  }) = _CDCWeigthForStature;

  const CDCWeigthForStature._();

  factory CDCWeigthForStature.fromJson(Map<String, dynamic> json) =>
      _$CDCWeigthForStatureFromJson(json);

  num get _adjustedLength => adjustedLengthHeight(
        measure: measure,
        age: age,
        lengthHeight: length,
        type: AdjustedLengthType.cdc,
      ).value!;

  CDCWeigthForStatureData get _weigthForLengthData => CDCWeigthForStatureData();

  _CDCWeigthForStatureGender get _maleData =>
      _weigthForLengthData._data[Sex.male]!;
  _CDCWeigthForStatureGender get _femaleData =>
      _weigthForLengthData._data[Sex.female]!;

  _CDCWeigthForStatureLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData).lengthData[
          _adjustedLength == 77 ? 77 : _adjustedLength.truncate() + 0.5]!;

  num get _zScore => _ageData.lms.zScore(weight.toKilograms.value!);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);
}

class _CDCWeigthForStatureGender {
  _CDCWeigthForStatureGender({required this.lengthData});

  final Map<num, _CDCWeigthForStatureLMS> lengthData;
  @override
  String toString() => 'Gender Data($lengthData)';
}

class _CDCWeigthForStatureLMS {
  _CDCWeigthForStatureLMS({
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
