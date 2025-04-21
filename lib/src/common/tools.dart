import 'package:growth_standards/growth_standards.dart';

/// Validates an Age object against a set of assertions at a specific observation date or current date.
///
/// Throws an [ArgumentError] if any assertion fails or if invalid parameters are provided.
///
/// @param age The Age object to validate
/// @param observationDate Optional date when the observation was made. Uses current date if null.
/// @param assertions List of time-based assertions to check against the age
/// @return The validated Age object
Age checkAge(
  Age age, {
  required AgeBasedData contextData,
}) {
  // Validate all assertions
  _validateAssertion(age, contextData);

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
    throw ArgumentError('Age is invalid: '
        'Age is $actualValue ${context.unit} at observation date, Expected range: $lowerBound to $upperBound ${context.unit}');
  }
}

/// Types of time units that can be used in assertions
enum TimeUnit {
  days,
  weeks,
  months,
  years,
  ;

  @override
  String toString() {
    return name;
  }
}

class LengthAssertion {
  const LengthAssertion({
    required this.lowerBound,
    required this.upperBound,
  });

  final Length lowerBound;
  final Length upperBound;
  String get title => 'Length or Height';

  @override
  String toString() {
    return 'Assertion($lowerBound, $upperBound, $title)';
  }
}

Length checkLength(Length length,
    {Length destinationType = const Length$Centimeter(),
    required LengthBasedData contextData}) {
  final convertedLength = length.convertTo(destinationType);
  final lowerBound = contextData.unit
      .withValue(contextData.lowerBound)
      .convertTo(destinationType);
  final upperBound = contextData.unit
      .withValue(contextData.upperBound)
      .convertTo(destinationType);

  if (convertedLength.value < lowerBound.value ||
      convertedLength.value > upperBound.value) {
    throw ArgumentError(
        'Length or Height is invalid: Value: $convertedLength, Expected range: $lowerBound to $upperBound');
  }

  return length;
}
