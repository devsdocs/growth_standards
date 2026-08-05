part of '../../../intergrowth.dart';

class IntergrowthNewbornBirthHeadCircumferenceForAgeData extends AgeBasedData {
  factory IntergrowthNewbornBirthHeadCircumferenceForAgeData() => _singleton;
  IntergrowthNewbornBirthHeadCircumferenceForAgeData._(this._data);

  static final _singleton =
      IntergrowthNewbornBirthHeadCircumferenceForAgeData._(_parse());

  static Map<Sex, Map<int, _IntergrowthNewbornBirthHeadCircumferenceForAgeLMS>>
  _parse() => {
    Sex.male: _grow_newborn_boys_hc.map((k1, v1) {
      final lms = LMS(
        l: v1['l']! as num,
        m: v1['m']! as num,
        s: v1['s']! as num,
      );
      return MapEntry(
        k1,
        _IntergrowthNewbornBirthHeadCircumferenceForAgeLMS(lms: lms),
      );
    }),
    Sex.female: _grow_newborn_girls_hc.map((k1, v1) {
      final lms = LMS(
        l: v1['l']! as num,
        m: v1['m']! as num,
        s: v1['s']! as num,
      );
      return MapEntry(
        k1,
        _IntergrowthNewbornBirthHeadCircumferenceForAgeLMS(lms: lms),
      );
    }),
  };

  final Map<Sex, Map<int, _IntergrowthNewbornBirthHeadCircumferenceForAgeLMS>>
  _data;
  @override
  Map<Sex, Map<int, _IntergrowthNewbornBirthHeadCircumferenceForAgeLMS>>
  get data => _data;

  @override
  String toString() => 'Newborn Head Circumference For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

/// Measure within first 24 hours of life, for infants born between gestational days 231 and 300 (~33–42+6 weeks)
@freezed
sealed class IntergrowthNewbornBirthHeadCircumferenceForAge
    extends GestationalAgeBasedResult
    with _$IntergrowthNewbornBirthHeadCircumferenceForAge {
  factory IntergrowthNewbornBirthHeadCircumferenceForAge({
    required Sex sex,
    required GestationalAge age,
    required Length measurementResult,
  }) = _IntergrowthNewbornBirthHeadCircumferenceForAge;

  const IntergrowthNewbornBirthHeadCircumferenceForAge._();

  factory IntergrowthNewbornBirthHeadCircumferenceForAge.fromJson(
    Map<String, dynamic> json,
  ) => _$IntergrowthNewbornBirthHeadCircumferenceForAgeFromJson(json);

  @override
  IntergrowthNewbornBirthHeadCircumferenceForAgeData get contextData =>
      IntergrowthNewbornBirthHeadCircumferenceForAgeData();

  _IntergrowthNewbornBirthHeadCircumferenceForAgeLMS get _ageData =>
      contextData._data[sex]![gestationalAgeAtObservation.totalDays]!;

  num get _zScore => _ageData.lms.zScore(measurementResultInDefaultUnit);

  @override
  GestationalAge get gestationalAgeAtObservation =>
      checkGestationalAge(age, contextData: contextData);

  @override
  num zScore([Precision precision = Precision.two]) =>
      _zScore.precision(precision);

  @override
  num percentile([Precision precision = Precision.two]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _IntergrowthNewbornBirthHeadCircumferenceForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toCentimeter.value.toDouble();
}

class _IntergrowthNewbornBirthHeadCircumferenceForAgeLMS extends LMSContext {
  _IntergrowthNewbornBirthHeadCircumferenceForAgeLMS({required this.lms});
  @override
  final LMS lms;

  @override
  String toString() => 'Newborn Head Circumference For Age LMS(lms: $lms)';
}
