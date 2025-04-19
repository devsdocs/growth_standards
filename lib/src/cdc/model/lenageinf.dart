part of '../cdc.dart';

class CDCInfantLengthForAgeData extends BaseData {
  factory CDCInfantLengthForAgeData() => _singleton;
  CDCInfantLengthForAgeData._(this._data);
  static final _singleton = CDCInfantLengthForAgeData._(_parse());

  static Map<Sex, Map<double, _CDCInfantLengthForAgeLMS>> _parse() =>
      cdclenageinf.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          (v1 as Map<String, dynamic>).map((k2, v2) {
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
      );
  final Map<Sex, Map<double, _CDCInfantLengthForAgeLMS>> _data;
  @override
  Map<Sex, Map<double, _CDCInfantLengthForAgeLMS>> get data => _data;

  @override
  String toString() => 'Infant Length For Age Data($_data)';
}

@freezed
sealed class CDCInfantLengthForAge extends AgeBasedResult
    with _$CDCInfantLengthForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalMonthsByNow < 36',
    'Age must be in range of 0 - 35 months',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory CDCInfantLengthForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeightMeasurementPosition measure,
  }) = _LengthForAge;

  const CDCInfantLengthForAge._();

  factory CDCInfantLengthForAge.fromJson(Map<String, dynamic> json) =>
      _$CDCInfantLengthForAgeFromJson(json);

  CDCInfantLengthForAgeData get _lengthForAgeData =>
      CDCInfantLengthForAgeData();

  Map<double, _CDCInfantLengthForAgeLMS> get _maleData =>
      _lengthForAgeData._data[Sex.male]!;
  Map<double, _CDCInfantLengthForAgeLMS> get _femaleData =>
      _lengthForAgeData._data[Sex.female]!;
//TODO(devsdocs): Fix CDC age calculation
  _CDCInfantLengthForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)[
          ageAtObservationDate.ageInTotalDaysByNow == 0
              ? 0
              : ageAtObservationDate.ageInTotalMonthsByNow + 0.5]!;

  num get _adjustedLength => adjustedLengthHeight(
        measure: measure,
        age: age,
        lengthHeight: lengthHeight,
        type: AdjustedLengthType.cdc,
      ).value;

  num get _zScore => _ageData.lms.zScore(_adjustedLength);

  @override
  Age get ageAtObservationDate => checkObservationDate(age, observationDate);

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
  _CDCInfantLengthForAgeLMS get ageData => _ageData;
}

class _CDCInfantLengthForAgeLMS extends LMSBasedResult {
  _CDCInfantLengthForAgeLMS({
    required this.lms,
    required this.percentileCutOff,
    required this.standardDeviationCutOff,
  });
  @override
  final LMS lms;

  @override
  final ZScoreCutOff standardDeviationCutOff;

  @override
  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Age Data(LMS: $lms, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
