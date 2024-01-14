part of '../cdc.dart';

class CDCInfantWeigthForLengthData {
  factory CDCInfantWeigthForLengthData() => _singleton;
  CDCInfantWeigthForLengthData._(this._data);

  static final _singleton = CDCInfantWeigthForLengthData._(_parse());

  static Map<Sex, _CDCInfantWeigthForLengthGender> _parse() =>
      cdcwtleninf.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _CDCInfantWeigthForLengthGender(
            lengthData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                num.parse(k2),
                _CDCInfantWeigthForLengthLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _CDCInfantWeigthForLengthGender> _data;
  Map<Sex, _CDCInfantWeigthForLengthGender> get data => _data;

  @override
  String toString() => 'Weight For Length Data($_data)';
}

@freezed
class CDCInfantWeigthForLength with _$CDCInfantWeigthForLength {
  //TODO(devsdocs): Test this!
  @Assert(
    'cdcAdjustedLengthHeight(measure: measure,age: age,lengthHeight: length,).value! >= 45 && cdcAdjustedLengthHeight(measure: measure,age: age,lengthHeight: length,).value! < 104 && length.toCentimeters.value! >= 45 && length.toCentimeters.value! < 104',
    'Please correcting measurement position based on age',
  )
  //TODO(devsdocs): Test this!
  @Assert(
    'cdcAdjustedLengthHeight(measure: measure,age: age,lengthHeight: length,).value! >= 45 && cdcAdjustedLengthHeight(measure: measure,age: age,lengthHeight: length,).value! < 104',
    'Length must be in range of 45.0 - 103.9 cm',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory CDCInfantWeigthForLength({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @LengthConverter() required Length length,
    @MassConverter() required Mass weight,
    required LengthHeigthMeasurementPosition measure,
  }) = _CDCInfantWeigthForLength;

  const CDCInfantWeigthForLength._();

  factory CDCInfantWeigthForLength.fromJson(Map<String, dynamic> json) =>
      _$CDCInfantWeigthForLengthFromJson(json);

  num get _adjustedLength => cdcAdjustedLengthHeight(
        measure: measure,
        age: age,
        lengthHeight: length,
      ).value!;

  CDCInfantWeigthForLengthData get _weigthForLengthData =>
      CDCInfantWeigthForLengthData();

  _CDCInfantWeigthForLengthGender get _maleData =>
      _weigthForLengthData._data[Sex.male]!;
  _CDCInfantWeigthForLengthGender get _femaleData =>
      _weigthForLengthData._data[Sex.female]!;

  _CDCInfantWeigthForLengthLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData).lengthData[
          _adjustedLength == 45 ? 45 : _adjustedLength.truncate() + 0.5]!;

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

class _CDCInfantWeigthForLengthGender {
  _CDCInfantWeigthForLengthGender({required this.lengthData});

  final Map<num, _CDCInfantWeigthForLengthLMS> lengthData;
  @override
  String toString() => 'Gender Data($lengthData)';
}

class _CDCInfantWeigthForLengthLMS {
  _CDCInfantWeigthForLengthLMS({
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
