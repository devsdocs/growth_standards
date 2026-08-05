/// Gestational and postmenstrual age types for perinatal charts
/// (Fenton, INTERGROWTH-21st newborn size, etc.).
///
/// These are intentionally distinct from calendar [Age] (date-of-birth based)
/// so callers cannot accidentally feed postnatal calendar age into GA/PMA LMS
/// tables.
library;

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/common/model/age.dart';

part 'gestational_age.freezed.dart';
part 'gestational_age.g.dart';

/// Gestational age at birth (or dating during pregnancy), as weeks + days.
@freezed
sealed class GestationalAge with _$GestationalAge {
  @Assert('weeks >= 0', 'Gestational weeks must be ≥ 0')
  @Assert('days >= 0 && days <= 6', 'Gestational days must be in 0..6')
  const factory GestationalAge({required int weeks, @Default(0) int days}) =
      _GestationalAge;

  const GestationalAge._();

  factory GestationalAge.fromJson(Map<String, dynamic> json) =>
      _$GestationalAgeFromJson(json);

  /// Build gestational age from estimated conception date.
  /// Standard dating assumes conception is 14 days after the last menstrual period (LMP).
  factory GestationalAge.fromDates({
    required Date conceptionDate,
    required Date currentOrBirthDate,
  }) {
    final totalDays = currentOrBirthDate.difference(conceptionDate).inDays + 14;
    return GestationalAge(
      weeks: totalDays ~/ DateTime.daysPerWeek,
      days: totalDays % DateTime.daysPerWeek,
    );
  }

  /// Build gestational age from last menstrual period (LMP) date.
  factory GestationalAge.fromLMP({
    required Date lmpDate,
    required Date currentOrBirthDate,
  }) {
    final totalDays = currentOrBirthDate.difference(lmpDate).inDays;
    return GestationalAge(
      weeks: totalDays ~/ DateTime.daysPerWeek,
      days: totalDays % DateTime.daysPerWeek,
    );
  }

  int get totalDays => weeks * DateTime.daysPerWeek + days;

  /// Returns the estimated conception date based on this gestational age at a specific date.
  Date conceptionDateFrom(Date currentOrBirthDate) {
    return currentOrBirthDate.subtractDays(totalDays - 14);
  }

  /// Returns the estimated last menstrual period (LMP) date based on this gestational age.
  Date lmpDateFrom(Date currentOrBirthDate) {
    return currentOrBirthDate.subtractDays(totalDays);
  }

  /// Returns the estimated date of delivery (EDD) assuming a 40-week gestation.
  Date estimatedDateOfDelivery(Date currentOrBirthDate) {
    return lmpDateFrom(currentOrBirthDate).addDays(280); // 40 weeks * 7 days
  }

  /// Completed whole weeks (truncates extra days).
  int get completedWeeks => weeks;

  num get exactWeeks => weeks + days / DateTime.daysPerWeek;

  @override
  String toString() => 'GestationalAge($weeks+$days/7)';
}

/// Postmenstrual age (gestational age + postnatal age), used by Fenton charts.
///
/// Fenton LMS rows are keyed by **completed weeks** from 22–50. Exact-age
/// plotting in the published charts shifts by +0.5 week; this type stores
/// weeks+days so that refinement can be added without API churn.
@freezed
sealed class PostmenstrualAge with _$PostmenstrualAge {
  @Assert('weeks >= 0', 'Postmenstrual weeks must be ≥ 0')
  @Assert('days >= 0 && days <= 6', 'Postmenstrual days must be in 0..6')
  const factory PostmenstrualAge({required int weeks, @Default(0) int days}) =
      _PostmenstrualAge;

  const PostmenstrualAge._();

  /// Convenience for integer completed-week keys (Fenton data rows).
  factory PostmenstrualAge.completedWeeks(int weeks) =>
      PostmenstrualAge(weeks: weeks);

  /// Build PMA from gestational age at birth plus days of life.
  factory PostmenstrualAge.fromGestationalAge(
    GestationalAge gestationalAge, {
    int daysOfLife = 0,
  }) {
    assert(daysOfLife >= 0, 'daysOfLife must be ≥ 0');
    final total = gestationalAge.totalDays + daysOfLife;
    return PostmenstrualAge(
      weeks: total ~/ DateTime.daysPerWeek,
      days: total % DateTime.daysPerWeek,
    );
  }

  factory PostmenstrualAge.fromJson(Map<String, dynamic> json) =>
      _$PostmenstrualAgeFromJson(json);

  /// Build postmenstrual age from estimated conception date.
  factory PostmenstrualAge.fromDates({
    required Date conceptionDate,
    required Date currentDate,
  }) {
    final totalDays = currentDate.difference(conceptionDate).inDays + 14;
    return PostmenstrualAge(
      weeks: totalDays ~/ DateTime.daysPerWeek,
      days: totalDays % DateTime.daysPerWeek,
    );
  }

  /// Build postmenstrual age from last menstrual period (LMP) date.
  factory PostmenstrualAge.fromLMP({
    required Date lmpDate,
    required Date currentDate,
  }) {
    final totalDays = currentDate.difference(lmpDate).inDays;
    return PostmenstrualAge(
      weeks: totalDays ~/ DateTime.daysPerWeek,
      days: totalDays % DateTime.daysPerWeek,
    );
  }

  int get totalDays => weeks * DateTime.daysPerWeek + days;

  /// Returns the estimated conception date based on this postmenstrual age at a specific date.
  Date conceptionDateFrom(Date currentDate) {
    return currentDate.subtractDays(totalDays - 14);
  }

  /// Returns the estimated last menstrual period (LMP) date based on this postmenstrual age.
  Date lmpDateFrom(Date currentDate) {
    return currentDate.subtractDays(totalDays);
  }

  /// Completed whole weeks — matches integer Fenton LMS keys.
  int get completedWeeks => weeks;

  num get exactWeeks => weeks + days / DateTime.daysPerWeek;

  @override
  String toString() => 'PostmenstrualAge($weeks+$days/7)';
}
