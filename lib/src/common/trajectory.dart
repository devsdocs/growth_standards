import 'package:growth_standards/growth_standards.dart';

/// Single patient visit observation pairing a visit date with a measurement.
class VisitObservation<T> {
  const VisitObservation(this.visitDate, this.measurement);

  /// Clinical visit / observation date
  final Date visitDate;

  /// Clinical measurement value
  final T measurement;
}

/// Clinical helper structure for pairing length/height and weight at a visit
class LengthMassObservation {
  const LengthMassObservation({required this.length, required this.weight});

  /// Length or height measurement
  final Length length;

  /// Mass / weight measurement
  final Mass weight;
}

/// Helper class for tracking longitudinal growth trajectories over time.
///
/// Developers specify patient demographics (Sex, Date of Birth or Gestational Age) once,
/// and append visit dates and measurement values to receive calculated [Result] objects.
class GrowthTrajectory {
  GrowthTrajectory({
    required this.sex,
    required this.dateOfBirth,
    required Result Function(Age age, dynamic measurement) evaluator,
  }) : _evaluator = evaluator;

  // ===========================================================================
  // WHO CHILD GROWTH STANDARDS (0 TO 5 YEARS)
  // ===========================================================================

  /// Factory for WHO Weight-for-Age trajectory (0 to 5 years)
  factory GrowthTrajectory.whoWeightForAge({
    required Sex sex,
    required Date dateOfBirth,
    List<VisitObservation<Mass>>? visits,
  }) {
    final gs = GrowthStandard.who.fromBirthTo5Years;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) =>
          gs.weightForAge(sex: sex, age: age, weight: measurement as Mass),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for WHO Length-for-Age trajectory (0 to 5 years)
  factory GrowthTrajectory.whoLengthForAge({
    required Sex sex,
    required Date dateOfBirth,
    LengthHeightMeasurementPosition measure =
        LengthHeightMeasurementPosition.recumbent,
    List<VisitObservation<Length>>? visits,
  }) {
    final gs = GrowthStandard.who.fromBirthTo5Years;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) => gs.lengthForAge(
        sex: sex,
        age: age,
        lengthHeight: measurement as Length,
        measure: measure,
      ),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for WHO Weight-for-Length trajectory (0 to 5 years)
  factory GrowthTrajectory.whoWeightForLength({
    required Sex sex,
    required Date dateOfBirth,
    LengthHeightMeasurementPosition measure =
        LengthHeightMeasurementPosition.recumbent,
    List<VisitObservation<LengthMassObservation>>? visits,
  }) {
    final gs = GrowthStandard.who.fromBirthTo5Years;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) {
        final pair = measurement as LengthMassObservation;
        return gs.weightForLength(
          sex: sex,
          age: age,
          lengthMeasurementResult: pair.length,
          massMeasurementResult: pair.weight,
          measure: measure,
        );
      },
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for WHO Weight-for-Height trajectory (2 to 5 years)
  factory GrowthTrajectory.whoWeightForHeight({
    required Sex sex,
    required Date dateOfBirth,
    LengthHeightMeasurementPosition measure =
        LengthHeightMeasurementPosition.standing,
    List<VisitObservation<LengthMassObservation>>? visits,
  }) {
    final gs = GrowthStandard.who.fromBirthTo5Years;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) {
        final pair = measurement as LengthMassObservation;
        return gs.weightForHeight(
          sex: sex,
          age: age,
          height: pair.length,
          mass: pair.weight,
          measure: measure,
        );
      },
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for WHO BMI-for-Age trajectory (0 to 5 years)
  factory GrowthTrajectory.whoBmiForAge({
    required Sex sex,
    required Date dateOfBirth,
    LengthHeightMeasurementPosition measure =
        LengthHeightMeasurementPosition.recumbent,
    List<VisitObservation<dynamic>>? visits,
  }) {
    final gs = GrowthStandard.who.fromBirthTo5Years;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) {
        final WHOGrowthStandardsBodyMassIndexMeasurement bmiMeasurement;
        if (measurement is WHOGrowthStandardsBodyMassIndexMeasurement) {
          bmiMeasurement = measurement;
        } else if (measurement is LengthMassObservation) {
          bmiMeasurement =
              WHOGrowthStandardsBodyMassIndexMeasurement.fromMeasurement(
                measure: measure,
                lengthHeight: measurement.length,
                weight: measurement.weight,
                age: age,
              );
        } else if (measurement is BodyMassIndex) {
          bmiMeasurement = WHOGrowthStandardsBodyMassIndexMeasurement(
            measurement.value,
            age: age,
          );
        } else {
          bmiMeasurement = WHOGrowthStandardsBodyMassIndexMeasurement(
            (measurement as num).toDouble(),
            age: age,
          );
        }
        return gs.bodyMassIndexForAge(
          sex: sex,
          bodyMassIndexMeasurement: bmiMeasurement,
        );
      },
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for WHO Head Circumference-for-Age trajectory (0 to 5 years)
  factory GrowthTrajectory.whoHeadCircumferenceForAge({
    required Sex sex,
    required Date dateOfBirth,
    List<VisitObservation<Length>>? visits,
  }) {
    final gs = GrowthStandard.who.fromBirthTo5Years;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) => gs.headCircumferenceForAge(
        sex: sex,
        age: age,
        measurementResult: measurement as Length,
      ),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for WHO Arm Circumference-for-Age (MUAC) trajectory (0 to 5 years)
  factory GrowthTrajectory.whoArmCircumferenceForAge({
    required Sex sex,
    required Date dateOfBirth,
    List<VisitObservation<Length>>? visits,
  }) {
    final gs = GrowthStandard.who.fromBirthTo5Years;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) => gs.armCircumferenceForAge(
        sex: sex,
        age: age,
        measurementResult: measurement as Length,
      ),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for WHO Subscapular Skinfold-for-Age trajectory (0 to 5 years)
  factory GrowthTrajectory.whoSubscapularSkinfoldForAge({
    required Sex sex,
    required Date dateOfBirth,
    List<VisitObservation<Length>>? visits,
  }) {
    final gs = GrowthStandard.who.fromBirthTo5Years;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) => gs.subscapularSkinfoldForAge(
        sex: sex,
        age: age,
        measurementResult: measurement as Length,
      ),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for WHO Triceps Skinfold-for-Age trajectory (0 to 5 years)
  factory GrowthTrajectory.whoTricepsSkinfoldForAge({
    required Sex sex,
    required Date dateOfBirth,
    List<VisitObservation<Length>>? visits,
  }) {
    final gs = GrowthStandard.who.fromBirthTo5Years;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) => gs.tricepsSkinfoldForAge(
        sex: sex,
        age: age,
        measurementResult: measurement as Length,
      ),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  // ===========================================================================
  // WHO GROWTH REFERENCE (5 TO 18 YEARS)
  // ===========================================================================

  /// Factory for WHO Height-for-Age trajectory (5 to 18 years)
  factory GrowthTrajectory.who5To18HeightForAge({
    required Sex sex,
    required Date dateOfBirth,
    LengthHeightMeasurementPosition measure =
        LengthHeightMeasurementPosition.standing,
    List<VisitObservation<Length>>? visits,
  }) {
    final gs = GrowthStandard.who.from5YearsAndAbove;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) => gs.heightForAge(
        sex: sex,
        age: age,
        lengthHeight: measurement as Length,
        measure: measure,
      ),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for WHO Weight-for-Age trajectory (5 to 10 years)
  factory GrowthTrajectory.who5To10WeightForAge({
    required Sex sex,
    required Date dateOfBirth,
    List<VisitObservation<Mass>>? visits,
  }) {
    final gs = GrowthStandard.who.from5YearsAndAbove;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) =>
          gs.weightForAge(sex: sex, age: age, weight: measurement as Mass),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for WHO BMI-for-Age trajectory (5 to 18 years)
  factory GrowthTrajectory.who5To18BmiForAge({
    required Sex sex,
    required Date dateOfBirth,
    List<VisitObservation<dynamic>>? visits,
  }) {
    final gs = GrowthStandard.who.from5YearsAndAbove;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) {
        final num val = measurement is BodyMassIndex
            ? measurement.value
            : (measurement as num);
        return gs.bodyMassIndexForAge(
          sex: sex,
          age: age,
          bodyMassIndexMeasurement: WHOGrowthReferenceBodyMassIndexMeasurement(
            val,
          ),
        );
      },
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  // ===========================================================================
  // CDC CLINICAL GROWTH STANDARDS (2 TO 20 YEARS & 0 TO 36 MONTHS)
  // ===========================================================================

  /// Factory for CDC Weight-for-Age trajectory (2 to 20 years)
  factory GrowthTrajectory.cdcWeightForAge({
    required Sex sex,
    required Date dateOfBirth,
    List<VisitObservation<Mass>>? visits,
  }) {
    final gs = GrowthStandard.cdc.from2YearsAndAbove;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) =>
          gs.weightForAge(sex: sex, age: age, weight: measurement as Mass),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for CDC Stature-for-Age trajectory (2 to 20 years)
  factory GrowthTrajectory.cdcStatureForAge({
    required Sex sex,
    required Date dateOfBirth,
    LengthHeightMeasurementPosition measure =
        LengthHeightMeasurementPosition.standing,
    List<VisitObservation<Length>>? visits,
  }) {
    final gs = GrowthStandard.cdc.from2YearsAndAbove;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) => gs.statureForAge(
        sex: sex,
        age: age,
        lengthHeight: measurement as Length,
        measure: measure,
      ),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for CDC BMI-for-Age trajectory (2 to 20 years)
  factory GrowthTrajectory.cdcBmiForAge({
    required Sex sex,
    required Date dateOfBirth,
    List<VisitObservation<dynamic>>? visits,
  }) {
    final gs = GrowthStandard.cdc.from2YearsAndAbove;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) {
        final num val = measurement is BodyMassIndex
            ? measurement.value
            : (measurement as num);
        return gs.bodyMassIndexForAge(
          sex: sex,
          age: age,
          bodyMassIndexMeasurement: CDCBodyMassIndexMeasurement(val),
        );
      },
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for CDC Infant Weight-for-Age trajectory (0 to 36 months)
  factory GrowthTrajectory.cdcInfantWeightForAge({
    required Sex sex,
    required Date dateOfBirth,
    List<VisitObservation<Mass>>? visits,
  }) {
    final gs = GrowthStandard.cdc.fromBirthTo36Months;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) =>
          gs.weightForAge(sex: sex, age: age, weight: measurement as Mass),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for CDC Infant Length-for-Age trajectory (0 to 36 months)
  factory GrowthTrajectory.cdcInfantLengthForAge({
    required Sex sex,
    required Date dateOfBirth,
    LengthHeightMeasurementPosition measure =
        LengthHeightMeasurementPosition.recumbent,
    List<VisitObservation<Length>>? visits,
  }) {
    final gs = GrowthStandard.cdc.fromBirthTo36Months;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) => gs.lengthForAge(
        sex: sex,
        age: age,
        lengthHeight: measurement as Length,
        measure: measure,
      ),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for CDC Infant Head Circumference trajectory (0 to 36 months)
  factory GrowthTrajectory.cdcInfantHeadCircumferenceForAge({
    required Sex sex,
    required Date dateOfBirth,
    List<VisitObservation<Length>>? visits,
  }) {
    final gs = GrowthStandard.cdc.fromBirthTo36Months;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) => gs.headCircumferenceForAge(
        sex: sex,
        age: age,
        measurementResult: measurement as Length,
      ),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  // ===========================================================================
  // FENTON PRETERM GROWTH STANDARDS (22 TO 50 WEEKS PMA)
  // ===========================================================================

  /// Factory for Fenton Preterm Weight-for-Age trajectory
  factory GrowthTrajectory.fentonWeightForAge({
    required Sex sex,
    required Date dateOfBirth,
    required PostmenstrualAge birthPma,
    List<VisitObservation<Mass>>? visits,
  }) {
    final fenton = GrowthStandard.fenton;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) {
        final daysDiff = age.ageInTotalDaysByNow;
        final currentPma = PostmenstrualAge(
          weeks: birthPma.weeks,
          days: birthPma.days + daysDiff,
        );
        return fenton.weightForAge(
          sex: sex,
          age: currentPma,
          weight: measurement as Mass,
        );
      },
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for Fenton Preterm Length-for-Age trajectory
  factory GrowthTrajectory.fentonLengthForAge({
    required Sex sex,
    required Date dateOfBirth,
    required PostmenstrualAge birthPma,
    List<VisitObservation<Length>>? visits,
  }) {
    final fenton = GrowthStandard.fenton;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) {
        final daysDiff = age.ageInTotalDaysByNow;
        final currentPma = PostmenstrualAge(
          weeks: birthPma.weeks,
          days: birthPma.days + daysDiff,
        );
        return fenton.lengthForAge(
          sex: sex,
          age: currentPma,
          lengthHeight: measurement as Length,
        );
      },
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for Fenton Preterm Head Circumference trajectory
  factory GrowthTrajectory.fentonHeadCircumferenceForAge({
    required Sex sex,
    required Date dateOfBirth,
    required PostmenstrualAge birthPma,
    List<VisitObservation<Length>>? visits,
  }) {
    final fenton = GrowthStandard.fenton;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) {
        final daysDiff = age.ageInTotalDaysByNow;
        final currentPma = PostmenstrualAge(
          weeks: birthPma.weeks,
          days: birthPma.days + daysDiff,
        );
        return fenton.headCircumferenceForAge(
          sex: sex,
          age: currentPma,
          measurementResult: measurement as Length,
        );
      },
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  // ===========================================================================
  // INTERGROWTH-21ST PRETERM POSTNATAL & FETAL STANDARDS
  // ===========================================================================

  /// Factory for INTERGROWTH-21st Preterm Postnatal Weight trajectory
  factory GrowthTrajectory.intergrowthPretermPostnatalWeight({
    required Sex sex,
    required Date dateOfBirth,
    List<VisitObservation<Mass>>? visits,
  }) {
    final gs = GrowthStandard.intergrowth.postnatal;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) => gs.postnatalGrowthPretermInfantsWeight(
        sex: sex,
        age: age,
        weight: measurement as Mass,
      ),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for INTERGROWTH-21st Preterm Postnatal Length trajectory
  factory GrowthTrajectory.intergrowthPretermPostnatalLength({
    required Sex sex,
    required Date dateOfBirth,
    List<VisitObservation<Length>>? visits,
  }) {
    final gs = GrowthStandard.intergrowth.postnatal;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) => gs.postnatalGrowthPretermInfantsLength(
        sex: sex,
        age: age,
        measurementResult: measurement as Length,
      ),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for INTERGROWTH-21st Preterm Postnatal Head Circumference trajectory
  factory GrowthTrajectory.intergrowthPretermPostnatalHeadCircumference({
    required Sex sex,
    required Date dateOfBirth,
    List<VisitObservation<Length>>? visits,
  }) {
    final gs = GrowthStandard.intergrowth.postnatal;
    final tracker = GrowthTrajectory(
      sex: sex,
      dateOfBirth: dateOfBirth,
      evaluator: (age, measurement) =>
          gs.postnatalGrowthPretermInfantsHeadCircumference(
            sex: sex,
            age: age,
            measurementResult: measurement as Length,
          ),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for INTERGROWTH-21st Fetal Abdominal Circumference (AC) trajectory
  factory GrowthTrajectory.intergrowthFetalAbdominalCircumference({
    required Date dateOfLmp,
    List<VisitObservation<Length>>? visits,
  }) {
    final gs = GrowthStandard.intergrowth.duringPregnancy;
    final tracker = GrowthTrajectory(
      sex: Sex.male,
      dateOfBirth: dateOfLmp,
      evaluator: (age, measurement) => gs.fetalAbdominalCircumference(
        gestationalAge: age,
        measurementResult: measurement as Length,
      ),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for INTERGROWTH-21st Fetal Femur Length (FL) trajectory
  factory GrowthTrajectory.intergrowthFetalFemurLength({
    required Date dateOfLmp,
    List<VisitObservation<Length>>? visits,
  }) {
    final gs = GrowthStandard.intergrowth.duringPregnancy;
    final tracker = GrowthTrajectory(
      sex: Sex.male,
      dateOfBirth: dateOfLmp,
      evaluator: (age, measurement) => gs.fetalFemurLength(
        gestationalAge: age,
        measurementResult: measurement as Length,
      ),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for INTERGROWTH-21st Fetal Head Circumference (HC) trajectory
  factory GrowthTrajectory.intergrowthFetalHeadCircumference({
    required Date dateOfLmp,
    List<VisitObservation<Length>>? visits,
  }) {
    final gs = GrowthStandard.intergrowth.duringPregnancy;
    final tracker = GrowthTrajectory(
      sex: Sex.male,
      dateOfBirth: dateOfLmp,
      evaluator: (age, measurement) => gs.fetalHeadCircumference(
        gestationalAge: age,
        measurementResult: measurement as Length,
      ),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  /// Factory for INTERGROWTH-21st Fetal Biparietal Diameter (BPD) trajectory
  factory GrowthTrajectory.intergrowthFetalBiparietalDiameter({
    required Date dateOfLmp,
    List<VisitObservation<Length>>? visits,
  }) {
    final gs = GrowthStandard.intergrowth.duringPregnancy;
    final tracker = GrowthTrajectory(
      sex: Sex.male,
      dateOfBirth: dateOfLmp,
      evaluator: (age, measurement) => gs.fetalBiparietalDiameter(
        gestationalAge: age,
        measurementResult: measurement as Length,
      ),
    );
    if (visits != null) tracker.addAll(visits);
    return tracker;
  }

  // ===========================================================================
  // CLASS PROPERTIES & TRAJECTORY METHODS
  // ===========================================================================

  /// Patient's sex
  final Sex sex;

  /// Patient's date of birth
  final Date dateOfBirth;

  /// Internal evaluator function
  final Result Function(Age age, dynamic measurement) _evaluator;

  /// List of calculated results
  final List<Result> _results = [];

  /// Add a new visit observation (visit date + measurement).
  /// Automatically constructs the observed [Age] relative to [dateOfBirth].
  /// Returns the calculated [Result].
  Result add(Date visitDate, dynamic measurement) {
    final age = Age(dateOfBirth, observedDate: visitDate);
    final res = _evaluator(age, measurement);
    _results.add(res);
    return res;
  }

  /// Add multiple visit observations at once
  void addAll(List<VisitObservation<dynamic>> observations) {
    for (final obs in observations) {
      add(obs.visitDate, obs.measurement);
    }
  }

  /// Clear all stored trajectory observations
  void clear() {
    _results.clear();
  }

  /// Get calculated trajectory results list
  List<Result> get results => List.unmodifiable(_results);

  /// List of Z-scores across all visits
  List<num> get zScores => _results.map((r) => r.zScore()).toList();

  /// List of percentiles across all visits
  List<num> get percentiles => _results.map((r) => r.percentile()).toList();

  /// Latest calculated result, or null if empty
  Result? get latestResult => _results.isNotEmpty ? _results.last : null;

  /// Initial calculated result, or null if empty
  Result? get firstResult => _results.isNotEmpty ? _results.first : null;

  /// Number of observations in trajectory
  int get length => _results.length;

  /// Whether trajectory is empty
  bool get isEmpty => _results.isEmpty;

  /// Whether trajectory has observations
  bool get isNotEmpty => _results.isNotEmpty;
}
