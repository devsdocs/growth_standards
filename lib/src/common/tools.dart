import 'package:growth_standards/growth_standards.dart';
import 'package:super_measurement/super_measurement.dart' show Rational;

/// Validates an Age object against bounds defined in [contextData].
///
/// Throws an [ArgumentError] if age is outside the valid range.
///
/// [age] The Age object to validate.
/// [contextData] Context containing lower and upper age bounds and time unit.
/// Returns the validated Age object.
Age checkAge(Age age, {required AgeBasedData contextData}) {
  // Validate all assertions
  _validateAssertion(age, contextData);

  return age;
}

/// Validates postmenstrual age against an [AgeBasedData] week (or day) span.
PostmenstrualAge checkPostmenstrualAge(
  PostmenstrualAge age, {
  required AgeBasedData contextData,
}) {
  if (contextData.unit != TimeUnit.weeks && contextData.unit != TimeUnit.days) {
    throw ArgumentError(
      'PostmenstrualAge validation expects TimeUnit.weeks or TimeUnit.days, '
      'got ${contextData.unit}',
    );
  }

  final actualValue = contextData.unit == TimeUnit.weeks
      ? age.completedWeeks
      : age.totalDays;
  final lowerBound = contextData.lowerBound;
  final upperBound = contextData.upperBound;

  if (actualValue < lowerBound || actualValue > upperBound) {
    throw ArgumentError(
      'Postmenstrual age is invalid: '
      'Age is $actualValue ${contextData.unit}, '
      'Expected range: $lowerBound to $upperBound ${contextData.unit}',
    );
  }
  return age;
}

/// Validates gestational age against an [AgeBasedData] day (or week) span.
GestationalAge checkGestationalAge(
  GestationalAge age, {
  required AgeBasedData contextData,
}) {
  if (contextData.unit != TimeUnit.weeks && contextData.unit != TimeUnit.days) {
    throw ArgumentError(
      'GestationalAge validation expects TimeUnit.weeks or TimeUnit.days, '
      'got ${contextData.unit}',
    );
  }

  final actualValue = contextData.unit == TimeUnit.weeks
      ? age.completedWeeks
      : age.totalDays;
  final lowerBound = contextData.lowerBound;
  final upperBound = contextData.upperBound;

  if (actualValue < lowerBound || actualValue > upperBound) {
    throw ArgumentError(
      'Gestational age is invalid: '
      'Age is $actualValue ${contextData.unit}, '
      'Expected range: $lowerBound to $upperBound ${contextData.unit}',
    );
  }
  return age;
}

/// Helper method to validate a single assertion against an age
void _validateAssertion(Age age, AgeBasedData context) {
  final lowerBound = context.lowerBound;
  final upperBound = context.upperBound;

  int actualValue;

  // Calculate the actual age value based on assertion type and observation date
  switch (context.unit) {
    case TimeUnit.days:
      actualValue = age.ageInTotalDaysByNow;
    case TimeUnit.weeks:
      actualValue = age.ageInTotalWeeksByNow;
    case TimeUnit.months:
      actualValue = age.ageInTotalMonthsByNow;
    case TimeUnit.years:
      actualValue = age.ageInTotalYearsByNow;
  }

  // Check if the value is within bounds
  if (actualValue < lowerBound || actualValue > upperBound) {
    throw ArgumentError(
      'Age is invalid: '
      'Age is $actualValue ${context.unit} at observation date, Expected range: $lowerBound to $upperBound ${context.unit}',
    );
  }
}

/// Types of time units that can be used in assertions
enum TimeUnit {
  days,
  weeks,
  months,
  years;

  @override
  String toString() {
    return name;
  }
}

class LengthAssertion {
  const LengthAssertion({required this.lowerBound, required this.upperBound});

  final Length lowerBound;
  final Length upperBound;
  String get title => 'Length or Height';

  @override
  String toString() {
    return 'Assertion($lowerBound, $upperBound, $title)';
  }
}

Length checkLength(
  Length length, {
  Length? destinationType,
  required LengthBasedData contextData,
}) {
  final destinationType_ = destinationType ?? Length.centimeter;
  final convertedLength = length.convertTo(destinationType_);
  final lowerBound = contextData.unit
      .withValue(Rational.parse(contextData.lowerBound.toString()))
      .convertTo(destinationType_);
  final upperBound = contextData.unit
      .withValue(Rational.parse(contextData.upperBound.toString()))
      .convertTo(destinationType_);

  if (convertedLength.value < lowerBound.value ||
      convertedLength.value > upperBound.value) {
    throw ArgumentError(
      'Length or Height is invalid: Value: $convertedLength, Expected range: $lowerBound to $upperBound ${destinationType?.symbol}',
    );
  }

  return length;
}
