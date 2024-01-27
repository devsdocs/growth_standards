part of '../cdc.dart';

class CDCInfantLengthForAgeData {
  factory CDCInfantLengthForAgeData() => _singleton;
  CDCInfantLengthForAgeData._(this._data);
  static final _singleton = CDCInfantLengthForAgeData._(_parse());

  static Map<Sex, _CDCInfantLengthForAgeGender> _parse() =>
      cdclenageinf.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _CDCInfantLengthForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                double.parse(k2),
                _CDCInfantLengthForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _CDCInfantLengthForAgeGender> _data;
  Map<Sex, _CDCInfantLengthForAgeGender> get data => _data;

  @override
  String toString() => 'Infant Length For Age Data($_data)';
}

@freezed
class CDCInfantLengthForAge with _$CDCInfantLengthForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalMonthsByNow < 36',
    'Age must be in range of 0 - 35 months',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory CDCInfantLengthForAge({
    @DateConverter() Date? observationDate,
    required Sex sex,
    @AgeConverter() required Age age,
    @LengthConverter() required Length lengthHeight,
    required LengthHeigthMeasurementPosition measure,
  }) = _LengthForAge;

  const CDCInfantLengthForAge._();

  factory CDCInfantLengthForAge.fromJson(Map<String, dynamic> json) =>
      _$CDCInfantLengthForAgeFromJson(json);

  CDCInfantLengthForAgeData get _lengthForAgeData =>
      CDCInfantLengthForAgeData();

  _CDCInfantLengthForAgeGender get _maleData =>
      _lengthForAgeData._data[Sex.male]!;
  _CDCInfantLengthForAgeGender get _femaleData =>
      _lengthForAgeData._data[Sex.female]!;

  _CDCInfantLengthForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData).ageData[
          _ageAtObservationDate.ageInTotalDaysByNow == 0
              ? 0
              : _ageAtObservationDate.ageInTotalMonthsByNow + 0.5]!;

  num get _adjustedLength => adjustedLengthHeight(
        measure: measure,
        age: age,
        lengthHeight: lengthHeight,
        type: AdjustedLengthType.cdc,
      ).value;

  num get _zScore => _ageData.lms.zScore(_adjustedLength);

  Age get _ageAtObservationDate => checkObservationDate(age, observationDate);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);
}

class _CDCInfantLengthForAgeGender {
  _CDCInfantLengthForAgeGender({required this.ageData});
  final Map<double, _CDCInfantLengthForAgeLMS> ageData;

  @override
  String toString() => 'Gender Data($ageData)';
}

class _CDCInfantLengthForAgeLMS {
  _CDCInfantLengthForAgeLMS({
    required this.lms,
    required this.percentileCutOff,
    required this.standardDeviationCutOff,
  });
  final LMS lms;

  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Age Data(LMS: $lms, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
