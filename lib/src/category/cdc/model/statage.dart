part of '../cdc.dart';

class CDCStatureForAgeData extends AgeBasedData {
  factory CDCStatureForAgeData() => _singleton;
  const CDCStatureForAgeData._(this._data);

  static final _singleton = CDCStatureForAgeData._(_parse());

  static Map<Sex, Map<double, _CDCStatureForAgeLMS>> _parse() => cdcstatage.map(
    (k1, v1) => MapEntry(
      k1 == 1 ? Sex.male : Sex.female,
      v1.map((k2, v2) {
        final lms = LMS(
          l: v2['l']! as num,
          m: v2['m']! as num,
          s: v2['s']! as num,
        );
        return MapEntry(k2.toDouble(), _CDCStatureForAgeLMS(lms: lms));
      }),
    ),
  );
  final Map<Sex, Map<double, _CDCStatureForAgeLMS>> _data;
  @override
  Map<Sex, Map<double, _CDCStatureForAgeLMS>> get data => _data;

  @override
  String toString() => 'Height For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.months;
}

@freezed
sealed class CDCStatureForAge extends AgeBasedResult with _$CDCStatureForAge {
  factory CDCStatureForAge({
    required Sex sex,
    required Age age,
    required Length lengthHeight,
    required LengthHeightMeasurementPosition measure,
  }) = _GrowthReferenceHeightForAge;

  const CDCStatureForAge._();
  factory CDCStatureForAge.fromJson(Map<String, dynamic> json) =>
      _$CDCStatureForAgeFromJson(json);

  @override
  CDCStatureForAgeData get contextData => CDCStatureForAgeData();

  // CDC: completed months → Agemos n + 0.5. Chart endpoint 240 has no 240.5 row.
  _CDCStatureForAgeLMS get _ageData {
    final months = ageAtObservationDate.ageInTotalMonthsByNow;
    final agemos = months == 240 ? 240.0 : months + 0.5;
    return contextData._data[sex]![agemos]!;
  }

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
  _CDCStatureForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => _adjustedLength.value;
}

class _CDCStatureForAgeLMS extends LMSContext {
  _CDCStatureForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Stature For Age LMS($lms)';
}
