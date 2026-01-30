part of '../cdc.dart';

class CDCInfantLengthForAgeData extends AgeBasedData {
  factory CDCInfantLengthForAgeData() => _singleton;
  CDCInfantLengthForAgeData._(this._data);
  static final _singleton = CDCInfantLengthForAgeData._(_parse());

  static Map<Sex, Map<double, _CDCInfantLengthForAgeLMS>> _parse() =>
      cdclenageinf.map(
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
              _CDCInfantLengthForAgeLMS(lms: lms),
            );
          }),
        ),
      );
  final Map<Sex, Map<double, _CDCInfantLengthForAgeLMS>> _data;
  @override
  Map<Sex, Map<double, _CDCInfantLengthForAgeLMS>> get data => _data;

  @override
  String toString() => 'Infant Length For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.months;
}

@freezed
sealed class CDCInfantLengthForAge extends AgeBasedResult
    with _$CDCInfantLengthForAge {
  factory CDCInfantLengthForAge({
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeightMeasurementPosition measure,
  }) = _LengthForAge;

  const CDCInfantLengthForAge._();

  factory CDCInfantLengthForAge.fromJson(Map<String, dynamic> json) =>
      _$CDCInfantLengthForAgeFromJson(json);

  @override
  CDCInfantLengthForAgeData get contextData => CDCInfantLengthForAgeData();

  //TODO(devsdocs): Fix CDC age calculation
  _CDCInfantLengthForAgeLMS get _ageData =>
      contextData._data[sex]![ageAtObservationDate.ageInTotalDaysByNow == 0
          ? 0
          : ageAtObservationDate.ageInTotalMonthsByNow + 0.5]!;

  Length$Centimeter get _adjustedLength => adjustedLengthHeight(
    measure: measure,
    age: age,
    lengthHeight: lengthHeight,
    type: AdjustedLengthType.cdc,
  );

  num get _zScore => _ageData.lms.zScore(_adjustedLength.value);

  @override
  Age get ageAtObservationDate => checkAge(age, contextData: contextData);

  @override
  num zScore([Precision precision = Precision.two]) =>
      _zScore.precision(precision);

  @override
  num percentile([Precision precision = Precision.two]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _CDCInfantLengthForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => _adjustedLength.value;
}

class _CDCInfantLengthForAgeLMS extends LMSContext {
  _CDCInfantLengthForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Infant Length For Age LMS($lms)';
}
