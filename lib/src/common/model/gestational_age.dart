/// Gestational and postmenstrual age types for perinatal charts
/// (Fenton, INTERGROWTH-21st newborn size, etc.).
///
/// These are intentionally distinct from calendar [Age] (date-of-birth based)
/// so callers cannot accidentally feed postnatal calendar age into GA/PMA LMS
/// tables.
library;

/// Gestational age at birth (or dating during pregnancy), as weeks + days.
class GestationalAge {
  /// [weeks] completed weeks; [days] extra days in `0..6`.
  const GestationalAge({required this.weeks, this.days = 0})
    : assert(weeks >= 0, 'Gestational weeks must be ≥ 0'),
      assert(days >= 0 && days <= 6, 'Gestational days must be in 0..6');

  factory GestationalAge.fromJson(Map<String, dynamic> json) => GestationalAge(
    weeks: json['weeks'] as int,
    days: json['days'] as int? ?? 0,
  );

  final int weeks;
  final int days;

  int get totalDays => weeks * DateTime.daysPerWeek + days;

  /// Completed whole weeks (truncates extra days).
  int get completedWeeks => weeks;

  double get exactWeeks => weeks + days / DateTime.daysPerWeek;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is GestationalAge && weeks == other.weeks && days == other.days;

  @override
  int get hashCode => Object.hash(weeks, days);

  @override
  String toString() => 'GestationalAge($weeks+$days/7)';

  Map<String, dynamic> toJson() => {'weeks': weeks, 'days': days};
}

/// Postmenstrual age (gestational age + postnatal age), used by Fenton charts.
///
/// Fenton LMS rows are keyed by **completed weeks** from 22–50. Exact-age
/// plotting in the published charts shifts by +0.5 week; this type stores
/// weeks+days so that refinement can be added without API churn.
class PostmenstrualAge {
  /// [weeks] completed weeks; [days] extra days in `0..6`.
  const PostmenstrualAge({required this.weeks, this.days = 0})
    : assert(weeks >= 0, 'Postmenstrual weeks must be ≥ 0'),
      assert(days >= 0 && days <= 6, 'Postmenstrual days must be in 0..6');

  /// Convenience for integer completed-week keys (Fenton data rows).
  const PostmenstrualAge.completedWeeks(int weeks) : this(weeks: weeks);

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
      PostmenstrualAge(
        weeks: json['weeks'] as int,
        days: json['days'] as int? ?? 0,
      );

  final int weeks;
  final int days;

  int get totalDays => weeks * DateTime.daysPerWeek + days;

  /// Completed whole weeks — matches integer Fenton LMS keys.
  int get completedWeeks => weeks;

  double get exactWeeks => weeks + days / DateTime.daysPerWeek;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is PostmenstrualAge && weeks == other.weeks && days == other.days;

  @override
  int get hashCode => Object.hash(weeks, days);

  @override
  String toString() => 'PostmenstrualAge($weeks+$days/7)';

  Map<String, dynamic> toJson() => {'weeks': weeks, 'days': days};
}
