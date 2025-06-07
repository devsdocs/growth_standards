/// A utility class to parse ordinal numbers (like "1st", "2nd", "3rd")
/// into their integer values.
class OrdinalParser {
  /// Parses an ordinal number string (like "1st", "2nd", "3rd") and
  /// returns the corresponding integer value.
  ///
  /// Throws a [FormatException] if the input is not a valid ordinal number.
  static int? parse(String ordinal) {
    if (ordinal.isEmpty) {
      return null; // Return null for empty input
    }

    // Match digits followed by ordinal suffixes
    final RegExp regex = RegExp(r'^(\d+)(st|nd|rd|th)$');
    final match = regex.firstMatch(ordinal);

    if (match == null) {
      return null; // Return null if no match is found
    }

    final int number = int.parse(match.group(1)!);
    final String suffix = match.group(2)!;

    // Validate that the suffix is correct for the number
    if (!_isValidSuffix(number, suffix)) {
      return null; // Return null if the suffix is incorrect
    }

    return number;
  }

  /// Checks if a given suffix is valid for a number.
  static bool _isValidSuffix(int number, String suffix) {
    // Special case for 11th, 12th, 13th
    if (number % 100 >= 11 && number % 100 <= 13) {
      return suffix == 'th';
    }

    // Check the last digit to determine the correct suffix
    switch (number % 10) {
      case 1:
        return suffix == 'st';
      case 2:
        return suffix == 'nd';
      case 3:
        return suffix == 'rd';
      default:
        return suffix == 'th';
    }
  }

  /// Returns the correct ordinal suffix for a given number.
  static String getSuffix(int number) {
    // Special case for 11th, 12th, 13th
    if (number % 100 >= 11 && number % 100 <= 13) {
      return 'th';
    }

    // Check the last digit to determine the correct suffix
    switch (number % 10) {
      case 1:
        return 'st';
      case 2:
        return 'nd';
      case 3:
        return 'rd';
      default:
        return 'th';
    }
  }

  /// Converts an integer to its ordinal string representation.
  static String toOrdinal(int number) {
    return '$number${getSuffix(number)}';
  }
}
