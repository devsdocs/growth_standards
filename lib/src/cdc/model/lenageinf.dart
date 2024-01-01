part of '../cdc.dart';

class CDCLengthForAgeData {
  factory CDCLengthForAgeData() => _singleton;
  CDCLengthForAgeData._(this._data);
  static final _singleton = CDCLengthForAgeData._(_parse());

  static Map<Sex, _CDCLengthForAgeGender> _parse() =>
      cdclenageinf.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _CDCLengthForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _CDCLengthForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _CDCLengthForAgeGender> _data;
  Map<Sex, _CDCLengthForAgeGender> get data => _data;

  @override
  String toString() => 'Length For Age Data($_data)';
}

@freezed
class CDCLengthForAge with _$CDCLengthForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalMonthsByNow < 36',
    'Age must be in range of 0 - 35 months',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory CDCLengthForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @LengthConverter() required Length lengthHeight,
    required LengthHeigthMeasurementPosition measure,
  }) = _LengthForAge;

  const CDCLengthForAge._();

  factory CDCLengthForAge.fromJson(Map<String, dynamic> json) =>
      _$CDCLengthForAgeFromJson(json);

  CDCLengthForAgeData get _lengthForAgeData => CDCLengthForAgeData();

  _CDCLengthForAgeGender get _maleData => _lengthForAgeData._data[Sex.male]!;
  _CDCLengthForAgeGender get _femaleData =>
      _lengthForAgeData._data[Sex.female]!;

  _CDCLengthForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData).ageData[
          _ageAtObservationDate.ageInTotalDaysByNow == 0
              ? 0
              : _ageAtObservationDate.cdcAge]!;

  num get _adjustedLength => cdcAdjustedLengthHeight(
        measure: measure,
        age: age,
        lengthHeight: lengthHeight,
      ).value!;

  num get _zScore => _ageData.lms.zScore(_adjustedLength);

  Age get _ageAtObservationDate => observationDate == null
      ? age
      : observationDate == Date.today()
          ? age
          : age.ageAtPastDate(observationDate!);

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);
}

class _CDCLengthForAgeGender {
  _CDCLengthForAgeGender({required this.ageData});
  final Map<int, _CDCLengthForAgeLMS> ageData;

  @override
  String toString() => 'Gender Data($ageData)';
}

class _CDCLengthForAgeLMS {
  _CDCLengthForAgeLMS({
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
