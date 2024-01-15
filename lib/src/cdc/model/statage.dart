part of '../cdc.dart';

class CDCStatureForAgeData {
  factory CDCStatureForAgeData() => _singleton;
  const CDCStatureForAgeData._(this._data);

  static final _singleton = CDCStatureForAgeData._(_parse());

  static Map<Sex, _CDCStatureForAgeGender> _parse() =>
      cdcstatage.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _CDCStatureForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                double.parse(k2),
                _CDCStatureForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _CDCStatureForAgeGender> _data;
  Map<Sex, _CDCStatureForAgeGender> get data => _data;

  @override
  String toString() => 'Height For Age Data($_data)';
}

@freezed
class CDCStatureForAge with _$CDCStatureForAge {
  @Assert(
    'age.ageInTotalMonthsByNow >= 24 && age.ageInTotalMonthsByNow <= 240',
    'Age must be in range of 24 - 240 months',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrBefore(Date.today()) || observationDate.isSameOrAfter(age.dateOfBirth)',
    'Observation date is impossible, because happen after today or before birth',
  )
  @Assert(
    'observationDate == null || observationDate.isSameOrAfter(age.dateAtMonthsAfterBirth(24)) ',
    'Observation date is impossible, because happen after today or before birth',
  )
  factory CDCStatureForAge({
    @DateConverter() Date? observationDate,
    required Sex sex,
    @AgeConverter() required Age age,
    @LengthConverter() required Length lengthHeight,
    required LengthHeigthMeasurementPosition measure,
  }) = _GrowthReferenceHeightForAge;

  const CDCStatureForAge._();
  factory CDCStatureForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CDCStatureForAgeFromJson(json);

  CDCStatureForAgeData get _lengthForAgeData => CDCStatureForAgeData();

  _CDCStatureForAgeGender get _maleData => _lengthForAgeData._data[Sex.male]!;
  _CDCStatureForAgeGender get _femaleData =>
      _lengthForAgeData._data[Sex.female]!;

  _CDCStatureForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData).ageData[
          _ageAtObservationDate.ageInTotalMonthsByNow == 24
              ? 24
              : _ageAtObservationDate.ageInTotalMonthsByNow == 240
                  ? 240
                  : _ageAtObservationDate.ageInTotalMonthsByNow + 0.5]!;

  num get _adjustedLength => cdcAdjustedLengthHeight(
        measure: measure,
        age: age,
        lengthHeight: lengthHeight,
      ).value!;

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

class _CDCStatureForAgeGender {
  _CDCStatureForAgeGender({required this.ageData});
  final Map<double, _CDCStatureForAgeLMS> ageData;

  @override
  String toString() => 'Gender Data($ageData)';
}

class _CDCStatureForAgeLMS {
  _CDCStatureForAgeLMS({
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
