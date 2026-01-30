part of '../cdc.dart';

class CDCInfantWeightForAgeData extends AgeBasedData {
  factory CDCInfantWeightForAgeData() => _singleton;
  const CDCInfantWeightForAgeData._(this._data);

  static final _singleton = CDCInfantWeightForAgeData._(_parse());

  static Map<Sex, Map<double, _CDCInfantWeightForAgeLMS>> _parse() =>
      cdcwtageinf.map(
        (k1, v1) => MapEntry(
          k1 == 1 ? Sex.male : Sex.female,
          v1.map((k2, v2) {
            final lms = LMS(
              l: v2['l']! as num,
              m: v2['m']! as num,
              s: v2['s']! as num,
            );
            return MapEntry(
              double.parse(k2),
              _CDCInfantWeightForAgeLMS(lms: lms),
            );
          }),
        ),
      );
  final Map<Sex, Map<double, _CDCInfantWeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<double, _CDCInfantWeightForAgeLMS>> get data => _data;

  @override
  String toString() => 'Infant Weight For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.months;
}

@freezed
sealed class CDCInfantWeightForAge extends AgeBasedResult
    with _$CDCInfantWeightForAge {
  factory CDCInfantWeightForAge({
    required Sex sex,
    required Age age,
    required Mass weight,
  }) = _CDCInfantWeightForAge;

  const CDCInfantWeightForAge._();

  factory CDCInfantWeightForAge.fromJson(Map<String, dynamic> json) =>
      _$CDCInfantWeightForAgeFromJson(json);

  @override
  CDCInfantWeightForAgeData get contextData => CDCInfantWeightForAgeData();

  //TODO(devsdocs): Fix CDC age calculation
  _CDCInfantWeightForAgeLMS get _ageData {
    final finalAge = ageAtObservationDate.ageInTotalDaysByNow == 0
        ? 0
        : ageAtObservationDate.ageInTotalMonthsByNow == 36
        ? 36
        : ageAtObservationDate.ageInTotalMonthsByNow + 0.5;

    return contextData._data[sex]![finalAge]!;
  }

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
  _CDCInfantWeightForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => weight.toKilogram.value;
}

class _CDCInfantWeightForAgeLMS extends LMSContext {
  _CDCInfantWeightForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Infant Weight For Age LMS($lms)';
}
