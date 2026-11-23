part of '../../../intergrowth.dart';

LMS _hadlockEfwLmsForExactWeeks(double t) {
  final t10 = t / 10.0;
  final invT10Sq = math.pow(t10, -2).toDouble();
  final lnT10 = math.log(t10);
  final l = 9.43643 + 9.41579 * invT10Sq - 83.54220 * lnT10 * invT10Sq;
  final m = -2.42272 + 1.86478 * math.sqrt(t) - 1.93299e-5 * t * t * t;
  final s = 0.0193557 + 0.0310716 * invT10Sq - 0.0657587 * lnT10 * invT10Sq;
  return LMS(l: l, m: m, s: s);
}

LMS _igEfwLmsForExactWeeks(double t) {
  final t3 = t * t * t;
  final lnT = math.log(t);
  final m = 4.956737 + 0.0005019687 * t3 - 0.0001227065 * t3 * lnT;
  final s = 0.0001 * (-6.997171 + 0.057559 * t3 - 0.01493946 * t3 * lnT);
  final l =
      -4.257629 - 2162.234 * math.pow(t, -2).toDouble() + 0.0002301829 * t3;
  return LMS(l: l, m: m, s: s);
}

class _IntergrowthEstimatedFetalWeightLMS extends LMSContext {
  const _IntergrowthEstimatedFetalWeightLMS({required this.lms});

  @override
  final LMS lms;

  /// LMS parameters model ln(EFW in grams); exponentiate to return grams.
  @override
  num valueAtZScore(num zScore) =>
      math.exp(lms.standardDeviation(zScore).toDouble());

  @override
  String toString() => 'Estimated Fetal Weight LMS(lms: $lms)';
}

/// INTERGROWTH-21st standards for Hadlock's Estimated Fetal Weight (18+0 to 41+0 weeks GA).
///
/// Reference: Stirnemann J, Salomon LJ, Papageorghiou AT. Ultrasound Obstet
/// Gynecol. 2020;56:946-948. doi:10.1002/uog.22000
class IntergrowthHadlockEstimatedFetalWeightForAgeData extends AgeBasedData {
  factory IntergrowthHadlockEstimatedFetalWeightForAgeData() => _singleton;
  IntergrowthHadlockEstimatedFetalWeightForAgeData._(this._data);

  static final _singleton = IntergrowthHadlockEstimatedFetalWeightForAgeData._(
    _build(),
  );

  static Map<Sex, Map<int, _IntergrowthEstimatedFetalWeightLMS>> _build() {
    final map = <int, _IntergrowthEstimatedFetalWeightLMS>{
      // 18+0 (126d) to 41+0 (287d) per INTERGROWTH-21st Oct 2025 policy
      for (var day = 126; day <= 287; day++)
        day: _IntergrowthEstimatedFetalWeightLMS(
          lms: _hadlockEfwLmsForExactWeeks(day / DateTime.daysPerWeek),
        ),
    };
    return {Sex.male: map, Sex.female: map};
  }

  final Map<Sex, Map<int, _IntergrowthEstimatedFetalWeightLMS>> _data;

  @override
  Map<Sex, Map<int, _IntergrowthEstimatedFetalWeightLMS>> get data => _data;

  @override
  String toString() =>
      'INTERGROWTH-21st Hadlock Estimated Fetal Weight For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

/// INTERGROWTH-21st standards for Hadlock's Estimated Fetal Weight (18+0 to 41+0 weeks GA).
@freezed
sealed class IntergrowthHadlockEstimatedFetalWeightForAge
    extends GestationalAgeBasedResult
    with _$IntergrowthHadlockEstimatedFetalWeightForAge {
  factory IntergrowthHadlockEstimatedFetalWeightForAge({
    required GestationalAge age,
    required Mass measurementResult,
  }) = _IntergrowthHadlockEstimatedFetalWeightForAge;

  const IntergrowthHadlockEstimatedFetalWeightForAge._();

  factory IntergrowthHadlockEstimatedFetalWeightForAge.fromJson(
    Map<String, dynamic> json,
  ) => _$IntergrowthHadlockEstimatedFetalWeightForAgeFromJson(json);

  /// Computes Hadlock 3-parameter EFW (grams) from fetal HC, AC, and FL.
  static Mass$Gram estimateWeight({
    required Length headCircumference,
    required Length abdominalCircumference,
    required Length femurLength,
  }) {
    final hcCm = headCircumference.toCentimeter.value.toDouble();
    final acCm = abdominalCircumference.toCentimeter.value.toDouble();
    final flCm = femurLength.toCentimeter.value.toDouble();
    if (hcCm <= 0 || acCm <= 0 || flCm <= 0) {
      throw ArgumentError(
        'Fetal biometry measurements must be strictly positive '
        '(got HC=$hcCm cm, AC=$acCm cm, FL=$flCm cm)',
      );
    }
    final log10Efw =
        1.326 +
        0.0107 * hcCm +
        0.0438 * acCm +
        0.158 * flCm -
        0.00326 * acCm * flCm;
    return Mass$Gram(math.pow(10, log10Efw).toDouble());
  }

  @override
  IntergrowthHadlockEstimatedFetalWeightForAgeData get contextData =>
      IntergrowthHadlockEstimatedFetalWeightForAgeData();

  _IntergrowthEstimatedFetalWeightLMS get _ageData =>
      contextData._data.values.first[gestationalAgeAtObservation.totalDays]!;

  num get _zScore {
    final efwGrams = measurementResultInDefaultUnit;
    if (efwGrams <= 1) {
      throw ArgumentError(
        'Estimated fetal weight must be > 1 g, got $efwGrams g',
      );
    }
    return _ageData.lms.zScore(math.log(efwGrams));
  }

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
  _IntergrowthEstimatedFetalWeightLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toGram.value.toDouble();
}

/// INTERGROWTH-21st International Estimated Fetal Weight standards (22+0 to 40+0 weeks GA).
///
/// Reference: Stirnemann J, Villar J, Salomon LJ, et al. Ultrasound Obstet
/// Gynecol. 2017;49:478-486. doi:10.1002/uog.17347
class IntergrowthEstimatedFetalWeightForAgeData extends AgeBasedData {
  factory IntergrowthEstimatedFetalWeightForAgeData() => _singleton;
  IntergrowthEstimatedFetalWeightForAgeData._(this._data);

  static final _singleton = IntergrowthEstimatedFetalWeightForAgeData._(
    _build(),
  );

  static Map<Sex, Map<int, _IntergrowthEstimatedFetalWeightLMS>> _build() {
    final map = <int, _IntergrowthEstimatedFetalWeightLMS>{
      for (var day = 154; day <= 280; day++)
        day: _IntergrowthEstimatedFetalWeightLMS(
          lms: _igEfwLmsForExactWeeks(day / DateTime.daysPerWeek),
        ),
    };
    return {Sex.male: map, Sex.female: map};
  }

  final Map<Sex, Map<int, _IntergrowthEstimatedFetalWeightLMS>> _data;

  @override
  Map<Sex, Map<int, _IntergrowthEstimatedFetalWeightLMS>> get data => _data;

  @override
  String toString() =>
      'INTERGROWTH-21st Estimated Fetal Weight For Age Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.days;
}

/// INTERGROWTH-21st International Estimated Fetal Weight standards (22+0 to 40+0 weeks GA).
@freezed
sealed class IntergrowthEstimatedFetalWeightForAge
    extends GestationalAgeBasedResult
    with _$IntergrowthEstimatedFetalWeightForAge {
  factory IntergrowthEstimatedFetalWeightForAge({
    required GestationalAge age,
    required Mass measurementResult,
  }) = _IntergrowthEstimatedFetalWeightForAge;

  const IntergrowthEstimatedFetalWeightForAge._();

  factory IntergrowthEstimatedFetalWeightForAge.fromJson(
    Map<String, dynamic> json,
  ) => _$IntergrowthEstimatedFetalWeightForAgeFromJson(json);

  /// Computes INTERGROWTH-21st EFW (grams) from fetal HC and AC.
  static Mass$Gram estimateWeight({
    required Length headCircumference,
    required Length abdominalCircumference,
  }) {
    final hcM = headCircumference.toMeter.value.toDouble();
    final acM = abdominalCircumference.toMeter.value.toDouble();
    if (hcM <= 0 || acM <= 0) {
      throw ArgumentError(
        'Fetal biometry measurements must be strictly positive '
        '(got HC=$hcM m, AC=$acM m)',
      );
    }
    final acM3 = acM * acM * acM;
    final lnEfw =
        5.08482 -
        54.06633 * acM3 -
        95.80076 * acM3 * math.log(acM) +
        3.13637 * hcM;
    return Mass$Gram(math.exp(lnEfw));
  }

  @override
  IntergrowthEstimatedFetalWeightForAgeData get contextData =>
      IntergrowthEstimatedFetalWeightForAgeData();

  _IntergrowthEstimatedFetalWeightLMS get _ageData =>
      contextData._data.values.first[gestationalAgeAtObservation.totalDays]!;

  num get _zScore {
    final efwGrams = measurementResultInDefaultUnit;
    if (efwGrams <= 1) {
      throw ArgumentError(
        'Estimated fetal weight must be > 1 g, got $efwGrams g',
      );
    }
    return _ageData.lms.zScore(math.log(efwGrams));
  }

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
  _IntergrowthEstimatedFetalWeightLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit =>
      measurementResult.toGram.value.toDouble();
}
