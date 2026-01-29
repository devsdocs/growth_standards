part of '../cdc.dart';

class CDCWeightForAgeData extends AgeBasedData {
  factory CDCWeightForAgeData() => _singleton;
  const CDCWeightForAgeData._(this._data);

  static final _singleton = CDCWeightForAgeData._(_parse());

  static Map<Sex, Map<double, _CDCWeightForAgeLMS>> _parse() =>
      cdcwtage.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          (v1 as Map<String, dynamic>).map((k2, v2) {
            v2 as Map<String, dynamic>;
            final lms = LMS(
              l: v2['l'] as num,
              m: v2['m'] as num,
              s: v2['s'] as num,
            );
            return MapEntry(double.parse(k2), _CDCWeightForAgeLMS(lms: lms));
          }),
        ),
      );
  final Map<Sex, Map<double, _CDCWeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<double, _CDCWeightForAgeLMS>> get data => _data;

  @override
  String toString() => 'Weight For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.months;
}

@freezed
sealed class CDCWeightForAge extends AgeBasedResult with _$CDCWeightForAge {
  factory CDCWeightForAge({
    required Sex sex,
    required Age age,
    required Mass weight,
  }) = _CDCWeightForAge;

  const CDCWeightForAge._();

  factory CDCWeightForAge.fromJson(Map<String, dynamic> json) =>
      _$CDCWeightForAgeFromJson(json);

  @override
  CDCWeightForAgeData get contextData => CDCWeightForAgeData();

  //TODO(devsdocs): Fix CDC age calculation
  _CDCWeightForAgeLMS get _ageData =>
      contextData._data[sex]![ageAtObservationDate.ageInTotalMonthsByNow == 24
          ? 24
          : ageAtObservationDate.ageInTotalMonthsByNow == 240
          ? 240
          : ageAtObservationDate.ageInTotalMonthsByNow + 0.5]!;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

  @override
  Age get ageAtObservationDate => checkAge(age, contextData: contextData);

  @override
  num zScore([Precision precision = Precision.two]) =>
      _zScore.precision(precision);

  @override
  num percentile([Precision precision = Precision.two]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _CDCWeightForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => weight.toKilogram.value;
}

class _CDCWeightForAgeLMS extends LMSContext {
  _CDCWeightForAgeLMS({required this.lms});
  @override
  final LMS lms;
}
