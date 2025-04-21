part of '../cdc.dart';

class CDCWeightForAgeData extends BaseData {
  factory CDCWeightForAgeData() => _singleton;
  const CDCWeightForAgeData._(this._data);

  static final _singleton = CDCWeightForAgeData._(_parse());

  static Map<Sex, Map<double, _CDCWeightForAgeLMS>> _parse() =>
      cdcwtage.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          (v1 as Map<String, dynamic>).map((k2, v2) {
            v2 as Map<String, dynamic>;
            final lms =
                LMS(l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
            return MapEntry(
              double.parse(k2),
              _CDCWeightForAgeLMS(
                lms: lms,
              ),
            );
          }),
        ),
      );
  final Map<Sex, Map<double, _CDCWeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<double, _CDCWeightForAgeLMS>> get data => _data;

  @override
  String toString() => 'Weight For Age Data($_data)';
}

@freezed
sealed class CDCWeightForAge extends AgeBasedResult with _$CDCWeightForAge {
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
  factory CDCWeightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Mass weight,
  }) = _CDCWeightForAge;

  const CDCWeightForAge._();

  factory CDCWeightForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$CDCWeightForAgeFromJson(json);

  CDCWeightForAgeData get _weightForAgeData => CDCWeightForAgeData();

  Map<double, _CDCWeightForAgeLMS> get _maleData =>
      _weightForAgeData._data[Sex.male]!;
  Map<double, _CDCWeightForAgeLMS> get _femaleData =>
      _weightForAgeData._data[Sex.female]!;
//TODO(devsdocs): Fix CDC age calculation
  _CDCWeightForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)[
          ageAtObservationDate.ageInTotalMonthsByNow == 24
              ? 24
              : ageAtObservationDate.ageInTotalMonthsByNow == 240
                  ? 240
                  : ageAtObservationDate.ageInTotalMonthsByNow + 0.5]!;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

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
  _CDCWeightForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => weight.toKilogram.value;
}

class _CDCWeightForAgeLMS extends LMSBasedResult {
  _CDCWeightForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;
}
