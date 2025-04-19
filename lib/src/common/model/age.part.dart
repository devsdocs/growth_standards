part of 'age.dart';

class TimeIntervalCount {
  TimeIntervalCount(
    int year, [
    int month = 1,
    int date = 1,
  ]) : dob = DateTimeUtils.startOfDay(
          DateTime(
            year,
            month,
            date,
          ),
        ) {
    if (date > DateTimeUtils.getDaysInMonth(year, month)) {
      throw Exception('Days exceeded');
    }
  }

  final DateTime dob;

  static TimeDifferenceInYearMonthsWeeksDays zeroAgeInYearMonthsWeeksDays() =>
      TimeDifferenceInYearMonthsWeeksDays._();

  TimeDifferenceInYearMonthsWeeksDays ageAtDate(DateTime day) =>
      DateTimeUtils.timeDifference(
        fromDate: dob,
        toDate: day,
      );

  TimeDifferenceInYearMonthsWeeksDays timeUntilNextBirthday(DateTime fromDate) {
    final DateTime endDate = fromDate;
    final DateTime tempDate = DateTime(endDate.year, dob.month, dob.day);
    final DateTime nextBirthdayDate = tempDate.isBefore(endDate)
        ? _add(
            date: tempDate,
            duration: TimeDifferenceInYearMonthsWeeksDays._(1),
          )
        : tempDate;

    return DateTimeUtils.timeDifference(
      fromDate: endDate,
      toDate: nextBirthdayDate,
    );
  }

  DateTime _add({
    required DateTime date,
    required TimeDifferenceInYearMonthsWeeksDays duration,
  }) {
    int years = date.year + duration.years;
    years += (date.month + duration.months) ~/ DateTime.monthsPerYear;
    int months = (date.month + duration.months) % DateTime.monthsPerYear;

    // Fix the edge case where month becomes 0 - convert to December of previous year
    if (months == 0) {
      months = 12;
      years -= 1;
    }

    final int days = date.day + duration.days - 1;

    return DateTime(years, months).add(Duration(days: days));
  }
}

class TimeDifferenceInYearMonthsWeeksDays
    implements Comparable<TimeDifferenceInYearMonthsWeeksDays> {
  TimeDifferenceInYearMonthsWeeksDays._([
    this.years = 0,
    this.months = 0,
    this.weeks = 0,
    this.days = 0,
  ]) : assert(
          [days, months, weeks, years].every((e) => e >= 0),
          'All value can not below zero',
        );

  int days;
  int months;
  int years;
  int weeks;

  @override
  int get hashCode {
    const prime = 31;
    var result = 1;
    result = prime * result + years.hashCode;
    result = prime * result + months.hashCode;
    result = prime * result + weeks.hashCode;
    result = prime * result + days.hashCode;
    return result;
  }

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is TimeDifferenceInYearMonthsWeeksDays &&
          other.years == years &&
          other.months == months &&
          other.weeks == weeks &&
          other.days == days;

  bool operator >(TimeDifferenceInYearMonthsWeeksDays other) {
    if (this == other) return false;
    return !(this < other);
  }

  bool operator <(TimeDifferenceInYearMonthsWeeksDays other) {
    if (this == other) return false;
    if (years != other.years) {
      return years < other.years;
    }
    if (months != other.months) {
      return months < other.months;
    }
    if (weeks != other.weeks) {
      return weeks < other.weeks;
    }
    return days < other.days;
  }

  bool operator >=(TimeDifferenceInYearMonthsWeeksDays other) {
    if (this == other) return true;
    return this > other;
  }

  bool operator <=(TimeDifferenceInYearMonthsWeeksDays other) {
    if (this == other) return true;
    return this < other;
  }

  @override
  int compareTo(TimeDifferenceInYearMonthsWeeksDays other) {
    if (this == other) return 0;
    return this > other ? 1 : -1;
  }

  @override
  String toString() =>
      'Time Difference : ${_fmtSes(years, 'Year')}, ${_fmtSes(months, 'Month')}, ${_fmtSes(weeks, 'Week')}, ${_fmtSes(days, 'Day')}';
}

String _fmtSes(int number, String prefix) =>
    '$number $prefix${number > 1 ? 's' : ''}';

/// Utils to work with [DateTime].
class DateTimeUtils {
  DateTimeUtils._();

  /// Returns current time.
  static DateTime now() => clock.now();

  /// Check if [a] and [b] are on the same day.
  static bool isSameDay(DateTime a, DateTime b) {
    return a.year == b.year && a.month == b.month && a.day == b.day;
  }

  /// Returns [DateTime] for the beginning of the day (00:00:00).
  ///
  /// (2020, 4, 9, 16, 50) -> (2020, 4, 9, 0, 0)
  static DateTime startOfDay(DateTime dateTime) =>
      _date(dateTime.year, dateTime.month, dateTime.day);

  /// Returns [DateTime] for the beginning of the next day (00:00:00).
  ///
  /// (2020, 4, 9, 16, 50) -> (2020, 4, 10, 0, 0)
  static DateTime startOfNextDay(DateTime dateTime) =>
      _date(dateTime.year, dateTime.month, dateTime.day + 1);

  /// Returns [DateTime] for the beginning of today (00:00:00).
  static DateTime startOfToday() => startOfDay(now());

  /// Creates a copy of [date] but with time replaced with the new values.
  static DateTime setTime(
    DateTime date,
    int hours,
    int minutes, [
    int seconds = 0,
    int milliseconds = 0,
    int microseconds = 0,
  ]) =>
      _date(
        date.year,
        date.month,
        date.day,
        hours,
        minutes,
        seconds,
        milliseconds,
        microseconds,
      );

  /// Creates a copy of [date] but with the given fields
  /// replaced with the new values.
  static DateTime copyWith(
    DateTime date, {
    int? year,
    int? month,
    int? day,
    int? hour,
    int? minute,
    int? second,
    int? millisecond,
    int? microsecond,
  }) =>
      _date(
        year ?? date.year,
        month ?? date.month,
        day ?? date.day,
        hour ?? date.hour,
        minute ?? date.minute,
        second ?? date.second,
        millisecond ?? date.millisecond,
        microsecond ?? date.microsecond,
      );

  /// Returns a number of the next month.
  static int nextMonth(DateTime date) {
    final month = date.month;
    return month == DateTime.monthsPerYear ? 1 : month + 1;
  }

  /// Returns the [DateTime] resulting from adding the given number
  /// of days to this [DateTime].
  ///
  /// The result is computed by incrementing the day parts of this
  /// [DateTime] by [days] days.
  ///
  /// For example:
  /// (2020, 12, 31) -> add 2 days -> (2021, 01, 2).
  /// (2020, 12, 31) -> add 14 days -> (2021, 1, 14).
  static DateTime addDays(DateTime date, int days) =>
      copyWith(date, day: date.day + days);

  /// Returns the [DateTime] resulting from adding the given number
  /// of weeks to this [DateTime].
  ///
  /// The result is computed by incrementing the day parts of this
  /// [DateTime] by [weeks] weeks.
  ///
  /// For example:
  /// (2020, 12, 31) -> add 1 week -> (2021, 01, 7).
  /// (2020, 12, 31) -> add 14 weeks -> (2021, 04, 08).
  static DateTime addWeeks(DateTime date, int weeks) =>
      addDays(date, DateTime.daysPerWeek * weeks);

  /// Returns the [DateTime] resulting from adding the given number
  /// of months to this [DateTime].
  ///
  /// The result is computed by incrementing the month parts of this
  /// [DateTime] by [months] months, and, if required, adjusting the day part
  /// of the resulting date downwards to the last day of the resulting month.
  ///
  /// For example:
  /// (2020, 12, 31) -> add 2 months -> (2021, 2, 28).
  /// (2020, 12, 31) -> add 1 month -> (2021, 1, 31).
  static DateTime addMonths(DateTime date, int months) {
    var res = copyWith(date, month: date.month + months);
    if (date.day != res.day) res = copyWith(res, day: 0);
    return res;
  }

  /// Returns the [DateTime] resulting from adding the given number
  /// of years to this [DateTime].
  ///
  /// The result is computed by incrementing the year part of this
  /// [DateTime] by [years] years, and, if required, adjusting the day part
  /// of the resulting date downwards to the last day of the month
  /// in resulting year.
  ///
  /// For example:
  /// (2020, 12, 31) -> add 2 years -> (2022, 12, 31).
  /// (2020, 02, 29) -> add 1 year -> (2021, 02, 28).
  static DateTime addYears(DateTime date, int years) {
    var res = copyWith(date, year: date.year + years);
    if (date.day != res.day) res = copyWith(res, day: 0);
    return res;
  }

  /// Returns week number in year.
  ///
  /// The first week of the year is the week that contains
  /// 4 or more days of that year (='First 4-day week').
  ///
  /// So if week contains less than 4 days - it's in another year.
  ///
  /// The highest week number in a year is either 52 or 53.
  ///
  /// You can define first weekday (Monday, Sunday or Saturday) with
  /// parameter [firstWeekday]. It should be one of the constant values
  /// [DateTime.monday], ..., [DateTime.sunday].
  ///
  /// By default it's [DateTime.monday].
  static int getWeekNumber(DateTime date, {int? firstWeekday}) {
    assert(firstWeekday == null || firstWeekday > 0 && firstWeekday < 8);

    if (isWeekInYear(date, date.year, firstWeekday)) {
      final startOfTheFirstWeek =
          firstDayOfFirstWeek(date.year, firstWeekday: firstWeekday);
      final diffInDays = getDaysDifference(date, startOfTheFirstWeek);
      return (diffInDays / DateTime.daysPerWeek).floor() + 1;
    } else if (date.month == DateTime.december) {
      // first of the next year
      return 1;
    } else {
      // last of the previous year
      return getWeekNumber(
        DateTime(date.year - 1, DateTime.december, 31),
        firstWeekday: firstWeekday,
      );
    }
  }

  /// Returns number of the last week in [year].
  ///
  /// You can define first weekday (Monday, Sunday or Saturday) with
  /// parameter [firstWeekday]. It should be one of the constant values
  /// [DateTime.monday], ..., [DateTime.sunday].
  ///
  /// By default it's [DateTime.monday].
  ///
  /// See [getWeekNumber].
  static int getLastWeekNumber(int year, {int? firstWeekday}) {
    assert(firstWeekday == null || firstWeekday > 0 && firstWeekday < 8);

    final start = firstDayOfFirstWeek(year, firstWeekday: firstWeekday);
    final end = firstDayOfWeek(
      DateTime(year, DateTime.december, 31),
      firstWeekday: firstWeekday,
    );
    final diffInDays = getDaysDifference(end, start);
    var res = diffInDays ~/ DateTime.daysPerWeek;
    if (isWeekInYear(end, year, firstWeekday)) res++;
    return res;
  }

  /// Returns number of the day in week (starting with 1).
  ///
  /// Difference from [DateTime.weekday] is that
  /// you can define first weekday (Monday, Sunday or Saturday) with
  /// parameter [firstWeekday]. It should be one of the constant values
  /// [DateTime.monday], ..., [DateTime.sunday].
  ///
  /// By default it's [DateTime.monday].
  ///
  static int getDayNumberInWeek(DateTime date, {int? firstWeekday}) {
    var res = date.weekday - (firstWeekday ?? DateTime.monday) + 1;
    if (res <= 0) res += DateTime.daysPerWeek;

    return res;
  }

  /// Returns number of the day in year.
  ///
  /// Starting with 1.
  static int getDayNumberInYear(DateTime date) {
    final firstDayOfYear = DateTime(date.year);
    return getDaysDifference(date, firstDayOfYear) + 1;
  }

  /// Returns the number of days in a given year.
  static int getDaysInYear(int year) {
    final lastDayOfYear = DateTime(year, DateTime.december, 31);
    return getDayNumberInYear(lastDayOfYear);
  }

  /// Returns count of days between two dates.
  ///
  /// Time will be ignored, so for the dates
  /// (2020, 11, 18, 16, 50) and (2020, 11, 19, 10, 00)
  /// result will be 1.
  ///
  /// Use this method for count days instead of
  /// `a.difference(b).inDays`, since it can return
  /// some unexpected result, because of daylight saving hour.
  static int getDaysDifference(DateTime a, DateTime b) {
    final straight = a.isBefore(b);
    final start = startOfDay(straight ? a : b);
    final end = startOfDay(straight ? b : a).add(const Duration(hours: 12));
    final diff = end.difference(start);
    return diff.inHours ~/ 24;
  }

  /// Checks if [day] is in the first day of a week.
  ///
  /// You can define first weekday (Monday, Sunday or Saturday) with
  /// parameter [firstWeekday]. It should be one of the constant values
  /// [DateTime.monday], ..., [DateTime.sunday].
  ///
  /// By default it's [DateTime.monday].
  static bool isFirstDayOfWeek(DateTime day, {int? firstWeekday}) {
    assert(firstWeekday == null || firstWeekday > 0 && firstWeekday < 8);

    return isSameDay(firstDayOfWeek(day, firstWeekday: firstWeekday), day);
  }

  /// Checks if [day] is in the last day of a week.
  ///
  /// You can define first weekday (Monday, Sunday or Saturday) with
  /// parameter [firstWeekday]. It should be one of the constant values
  /// [DateTime.monday], ..., [DateTime.sunday].
  ///
  /// By default it's [DateTime.monday],
  /// so the last day will be [DateTime.sunday].
  static bool isLastDayOfWeek(DateTime day, {int? firstWeekday}) {
    assert(firstWeekday == null || firstWeekday > 0 && firstWeekday < 8);

    return isSameDay(lastDayOfWeek(day, firstWeekday: firstWeekday), day);
  }

  /// Checks if [day] is in the first day of a month.
  static bool isFirstDayOfMonth(DateTime day) {
    return day.day == 1;
  }

  /// Checks if [day] is in the last day of a month.
  static bool isLastDayOfMonth(DateTime day) {
    return nextDay(day).month != day.month;
  }

  /// Returns start of the first day of the week for specified [dateTime].
  ///
  /// For example: (2020, 4, 9, 15, 16) -> (2020, 4, 6, 0, 0, 0, 0).
  ///
  /// You can define first weekday (Monday, Sunday or Saturday) with
  /// parameter [firstWeekday]. It should be one of the constant values
  /// [DateTime.monday], ..., [DateTime.sunday].
  ///
  /// By default it's [DateTime.monday].
  static DateTime firstDayOfWeek(DateTime dateTime, {int? firstWeekday}) {
    assert(firstWeekday == null || firstWeekday > 0 && firstWeekday < 8);

    var days = dateTime.weekday - (firstWeekday ?? DateTime.monday);
    if (days < 0) days += DateTime.daysPerWeek;

    return _date(
      dateTime.year,
      dateTime.month,
      dateTime.day - days,
    );
  }

  /// Returns start of the first day of the first week in [year].
  ///
  /// For example: (2020, 4, 9, 15, 16) -> (2019, 12, 30, 0, 0, 0, 0).
  ///
  /// You can define first weekday (Monday, Sunday or Saturday) with
  /// parameter [firstWeekday]. It should be one of the constant values
  /// [DateTime.monday], ..., [DateTime.sunday].
  ///
  /// By default it's [DateTime.monday].
  ///
  /// See [getWeekNumber].
  static DateTime firstDayOfFirstWeek(int year, {int? firstWeekday}) {
    assert(firstWeekday == null || firstWeekday > 0 && firstWeekday < 8);

    final startOfYear = DateTime(year);
    return isWeekInYear(startOfYear, year, firstWeekday)
        ? firstDayOfWeek(startOfYear, firstWeekday: firstWeekday)
        : firstDayOfNextWeek(startOfYear, firstWeekday: firstWeekday);
  }

  /// Returns start of the first day of the next week for specified [dateTime].
  ///
  /// For example: (2020, 4, 9, 15, 16) -> (2020, 4, 13, 0, 0, 0, 0).
  ///
  /// You can define first weekday (Monday, Sunday or Saturday) with
  /// parameter [firstWeekday]. It should be one of the constant values
  /// [DateTime.monday], ..., [DateTime.sunday].
  /// By default it's [DateTime.monday].
  static DateTime firstDayOfNextWeek(DateTime dateTime, {int? firstWeekday}) {
    assert(firstWeekday == null || firstWeekday > 0 && firstWeekday < 8);

    var days = dateTime.weekday - (firstWeekday ?? DateTime.monday);
    if (days >= 0) days -= DateTime.daysPerWeek;
    return _date(
      dateTime.year,
      dateTime.month,
      dateTime.day - days,
    );
  }

  /// Returns start of the last day of the week for specified [dateTime].
  ///
  /// For example: (2020, 4, 9, 15, 16) -> (2020, 4, 12, 0, 0, 0, 0).
  ///
  /// You can define first weekday (Monday, Sunday or Saturday) with
  /// parameter [firstWeekday]. It should be one of the constant values
  /// [DateTime.monday], ..., [DateTime.sunday].
  ///
  /// By default it's [DateTime.monday],
  /// so the last day will be [DateTime.sunday].
  static DateTime lastDayOfWeek(DateTime dateTime, {int? firstWeekday}) {
    assert(firstWeekday == null || firstWeekday > 0 && firstWeekday < 8);

    var days = (firstWeekday ?? DateTime.monday) - 1 - dateTime.weekday;
    if (days < 0) days += DateTime.daysPerWeek;

    return _date(
      dateTime.year,
      dateTime.month,
      dateTime.day + days,
    );
  }

  /// Returns [DateTime] that represents a beginning
  /// of the first day of the month containing [date].
  ///
  /// Example: (2020, 4, 9, 15, 16) -> (2020, 4, 1, 0, 0, 0, 0).
  static DateTime firstDayOfMonth(DateTime date) {
    return _date(date.year, date.month);
  }

  /// Returns [DateTime] that represents a beginning
  /// of the first day of the next month.
  ///
  /// Example: (2020, 4, 9, 15, 16) -> (2020, 5, 1, 0, 0, 0, 0).
  static DateTime firstDayOfNextMonth(DateTime dateTime) {
    final month = dateTime.month;
    final year = dateTime.year;
    final nextMonthStart = (month < DateTime.monthsPerYear)
        ? _date(year, month + 1)
        : _date(year + 1);
    return nextMonthStart;
  }

  /// Returns [DateTime] that represents a beginning
  /// of the last day of the month containing [date].
  ///
  /// Example: (2020, 4, 9, 15, 16) -> (2020, 4, 30, 0, 0, 0, 0).
  static DateTime lastDayOfMonth(DateTime dateTime) {
    return previousDay(firstDayOfNextMonth(dateTime));
  }

  /// Returns [DateTime] that represents a beginning
  /// of the first day of the year containing [date].
  ///
  /// Example: (2020, 3, 9, 15, 16) -> (2020, 1, 1, 0, 0, 0, 0).
  static DateTime firstDayOfYear(DateTime dateTime) {
    return _date(dateTime.year);
  }

  /// Returns [DateTime] that represents a beginning
  /// of the first day of the next year.
  ///
  /// Example: (2020, 3, 9, 15, 16) -> (2021, 1, 1, 0, 0, 0, 0).
  static DateTime firstDayOfNextYear(DateTime dateTime) {
    return _date(dateTime.year + 1);
  }

  /// Returns [DateTime] that represents a beginning
  /// of the last day of the year containing [date].
  ///
  /// Example: (2020, 4, 9, 15, 16) -> (2020, 12, 31, 0, 0, 0, 0).
  static DateTime lastDayOfYear(DateTime dateTime) {
    return _date(dateTime.year, DateTime.december, 31);
  }

  /// Проверяет является ли заданная дата текущей.
  static bool isCurrentDate(DateTime date) {
    final dateNow = now();
    return isSameDay(date, dateNow);
  }

  /// Returns number of days in the [month] of the [year].
  static int getDaysInMonth(int year, int monthNum) {
    assert(monthNum > 0);
    assert(monthNum <= 12);
    return DateTime(year, monthNum + 1, 0).day;
  }

  /// Returns same time in the next day.
  static DateTime nextDay(DateTime d) {
    return copyWith(d, day: d.day + 1);
  }

  /// Returns same time in the previous day.
  static DateTime previousDay(DateTime d) {
    return copyWith(d, day: d.day - 1);
  }

  /// Returns same date in the next year.
  static DateTime nextYear(DateTime d) => addYears(d, 1);

  /// Returns same date in the previous year.
  static DateTime previousYear(DateTime d) => addYears(d, -1);

  /// Returns an iterable of [DateTime] with 1 day step in given range.
  ///
  /// [start] is the start of the range, inclusive.
  /// [end] is the end of the range, exclusive.
  ///
  /// If [start] equals [end], than [start] still will be included in iterable.
  /// If [start] less than [end], than empty iterable will be returned.
  ///
  /// [DateTime] in result uses [start] timezone.
  static Iterable<DateTime> generateWithDayStep(
    DateTime start,
    DateTime end,
  ) sync* {
    DateTime start0;
    DateTime end0;
    if (end.isBefore(start)) {
      start0 = startOfDay(end);
      end0 = startOfDay(start);
    } else {
      start0 = startOfDay(start);
      end0 = startOfDay(end);
    }

    var date = start0;
    do {
      yield date;
      date = nextDay(date);
    } while (date.isBefore(end0));
  }

  static TimeDifferenceInYearMonthsWeeksDays timeDifference({
    required DateTime fromDate,
    required DateTime toDate,
  }) {
    final startOfDayTo = startOfDay(toDate);
    final startOfDayFrom = startOfDay(fromDate);

    if (startOfDayTo == startOfDayFrom) {
      return TimeDifferenceInYearMonthsWeeksDays._();
    }

    DateTime workingTo;
    DateTime workingFrom;

    if (startOfDayTo.isBefore(startOfDayFrom)) {
      workingTo = startOfDayFrom;
      workingFrom = startOfDayTo;
    } else {
      workingTo = startOfDayTo;
      workingFrom = startOfDayFrom;
    }

    int years = workingTo.year - workingFrom.year;
    int months = workingTo.month - workingFrom.month;
    int days = workingTo.day - workingFrom.day;

    if (days < 0) {
      months -= 1;

      int monthLength;
      // If crossing year boundary and only difference is in days.
      if (months < 0 && years > 0) {
        monthLength = getDaysInMonth(
          workingTo.year - 1,
          12,
        ); // December of the previous year.
        days += monthLength;
        months += 12; // Adjusting months after reducing a year above.
        years -=
            1; // Correcting years since we're effectively within a 1-day difference, not a full year.
      } else {
        final int adjYear =
            workingFrom.month == 1 ? workingFrom.year - 1 : workingFrom.year;
        final int adjMonth =
            workingFrom.month == 1 ? 12 : workingFrom.month - 1;

        monthLength =
            getDaysInMonth(adjYear, adjMonth == 12 ? 1 : adjMonth + 1);

        days += monthLength;
      }
    }

    if (months < 0) {
      years -= 1;
      months += 12; // Normalize months after adjusting for negative days.
    }

// Special handling for leap years, specifically around February calculations
// Example: If starting in February of a leap year, ensure we recognize February 29th as valid.
    if ((workingFrom.month == 2 &&
            workingTo.month > 2 &&
            workingFrom.day == 29) ||
        (workingTo.month == 2 && workingTo.day == 29)) {
      // Leap day exists, ensure it is considered in the day count between the years
      if (!isLeapYear(workingTo.year)) {
        // If the end year is not a leap year but we are counting from a leap day,
        // adjust the computation to reflect that the leap day "does not exist" in the ending year
        days -= 1;
      }
    }

// Normalize the days into weeks and remaining days
    final int weeks = days ~/ 7;
    days %= 7;

    if (months >= 12) {
      years += 1;
      months -= 12; // Normalize beyond 12 months into years
    }

    return TimeDifferenceInYearMonthsWeeksDays._(years, months, weeks, days);
  }

  static bool isLeapYear(int year) =>
      (year % 4 == 0 && year % 100 != 0) || (year % 400 == 0);

  /// Checks if week, that contains [date] is in [year].
  static bool isWeekInYear(DateTime date, int year, int? firstWeekday) {
    const requiredDaysInYear = 4;
    final startWeekDate = firstDayOfWeek(date, firstWeekday: firstWeekday);
    final endWeekDate = lastDayOfWeek(date, firstWeekday: firstWeekday);

    if (startWeekDate.year == year && endWeekDate.year == year) {
      return true;
    } else if (endWeekDate.year == year) {
      final startYearDate = DateTime(year);
      final daysInPrevYear = getDaysDifference(startYearDate, startWeekDate);
      return daysInPrevYear < requiredDaysInYear;
    } else if (startWeekDate.year == year) {
      final startNextYearDate = DateTime(year + 1);
      final daysInNextYear =
          getDaysDifference(endWeekDate, startNextYearDate) + 1;
      return daysInNextYear < requiredDaysInYear;
    } else {
      return false;
    }
  }

  static DateTime _date(
    int year, [
    int month = 1,
    int day = 1,
    int hour = 0,
    int minute = 0,
    int second = 0,
    int millisecond = 0,
    int microsecond = 0,
  ]) =>
      DateTime.utc(
        year,
        month,
        day,
        hour,
        minute,
        second,
        millisecond,
        microsecond,
      );
}

extension DateTimeSmartCopyWith on DateTime {
  /// Update the DateTime with the given fields,
  /// using mutate mappers for selected fields.
  ///
  /// If a field is not mentioned, and it is smaller than
  /// any field mentioned, a field-specific default value is used.
  ///
  /// If a field is not mentioned, but is not smaller than
  /// any field mentioned, it is passed though from the original,
  /// subject to any over-/under-flows from smaller fields as with
  /// the standard DateTime constructor.
  ///
  /// Mutate mappers conform to:
  /// ``` dart
  ///   int Function (int)
  /// ```
  ///
  /// The mapper is called with the current value of the field,
  /// and is expected to return the new value.
  ///
  /// For example, to get "the beginning of the next day", you use:
  /// ``` dart
  ///   aDateTime.smartCopyWith(day: (d) => d + 1)
  /// ```
  ///
  /// Because `day` is specified, the year and month are copied,
  /// but hour, minute, second (and so on) are set to zero.
  ///
  /// For convenience, an integer may also be specified directly:
  /// ``` dart
  ///   aDateTime.smartCopyWith(day: 1)
  /// ```
  /// Because of the overflow rules, "the beginning of the next day"
  /// (as in the earlier example) can also be written as:
  /// ``` dart
  ///   aDateTime.smartCopyWith(hour: 24)
  /// ```
  ///
  /// As an edge case, if no fields are specified,
  /// the first day of the referenced year is returned.
  ///
  /// `isUtc` is preserved from the original DateTime,
  /// which can impact some overflow situations,
  /// including what it means to "set the time to midnight".
  DateTime smartCopyWith({
    dynamic year,
    dynamic month,
    dynamic day,
    dynamic hour,
    dynamic minute,
    dynamic second,
    dynamic millisecond,
    dynamic microsecond,
    bool? isUtc,
  }) {
    var seen = false;
    int fix(dynamic newValue, int prevValue, [int defaultValue = 0]) {
      int asSeen(int value) {
        seen = true;
        return value;
      }

      return switch (newValue) {
        null when seen => prevValue,
        final int n => asSeen(n),
        null => defaultValue,
        final dynamic Function(int) m => asSeen(m(prevValue) as int),
        final v => throw ArgumentError('$v'),
      };
    }

    return Function.apply(
      (isUtc ?? this.isUtc) ? DateTime.utc : DateTime.new,
      [
        ...[
          fix(microsecond, this.microsecond),
          fix(millisecond, this.millisecond),
          fix(second, this.second),
          fix(minute, this.minute),
          fix(hour, this.hour),
          fix(day, this.day, 1), // mimic standard constructor
          fix(month, this.month, 1), // mimic standard constructor
          fix(year, this.year, this.year), // year is required
        ].reversed,
      ],
    ) as DateTime;
  }
}

extension TimeDifferenceExtension on TimeDifferenceInYearMonthsWeeksDays {
  /// Convert to total days
  int get totalDays {
    return (years * 365) + (months * 30) + (weeks * 7) + days;
  }

  /// Convert to total weeks (approximately)
  double get totalWeeks {
    return (years * 52) + (months * 4.33) + weeks + (days / 7);
  }

  /// Convert to total months (approximately)
  double get totalMonths {
    return (years * 12) + months + (weeks / 4.33) + (days / 30);
  }

  /// Add another time difference
  TimeDifferenceInYearMonthsWeeksDays add(
      TimeDifferenceInYearMonthsWeeksDays other) {
    // This is a simplistic implementation that doesn't handle overflow
    // A more complex implementation would normalize the results
    return TimeDifferenceInYearMonthsWeeksDays._(
      years + other.years,
      months + other.months,
      weeks + other.weeks,
      days + other.days,
    );
  }

  /// Format to a human-readable string showing only relevant units
  String toShortString() {
    final parts = <String>[];

    if (years > 0) parts.add('${years}y');
    if (months > 0) parts.add('${months}m');
    if (weeks > 0) parts.add('${weeks}w');
    if (days > 0) parts.add('${days}d');

    return parts.isEmpty ? '0d' : parts.join(' ');
  }
}

/// Utility class for handling date ranges
class DateRange {
  DateRange(this.start, this.end) {
    if (end.isBefore(start)) {
      throw ArgumentError('End date must be after start date');
    }
  }

  /// Create a range for a specific month
  factory DateRange.forMonth(int year, int month) {
    final firstDay = Date(year: year, month: _monthFromNumber(month), date: 1);

    final nextMonth = month == 12 ? 1 : month + 1;
    final nextMonthYear = month == 12 ? year + 1 : year;
    final nextMonthFirstDay =
        Date(year: nextMonthYear, month: _monthFromNumber(nextMonth), date: 1);

    return DateRange(firstDay, nextMonthFirstDay.subtractDays(1));
  }
  final Date start;
  final Date end;

  /// Check if a date is within this range (inclusive)
  bool includes(Date date) {
    return date.isSameOrAfter(start) && date.isSameOrBefore(end);
  }

  /// Get the number of days in this range
  int get daysCount {
    return DateTimeUtils.getDaysDifference(
            end.toDateTime(), start.toDateTime()) +
        1;
  }

  /// Generate all dates in this range
  List<Date> getAllDates() {
    final List<Date> dates = [];
    var currentDate = start;

    while (currentDate.isSameOrBefore(end)) {
      dates.add(currentDate);
      currentDate = currentDate.addDays(1);
    }

    return dates;
  }
}

/// Additional date utilities
class ExtendedDateUtils {
  ExtendedDateUtils._();

  /// Parse a date string to Date object
  /// Supports formats: yyyy-MM-dd, dd/MM/yyyy, MM/dd/yyyy
  static Date? tryParse(String dateString) {
    // Try ISO format yyyy-MM-dd
    final isoRegex = RegExp(r'^(\d{4})-(\d{1,2})-(\d{1,2})$');
    var match = isoRegex.firstMatch(dateString);
    if (match != null) {
      final year = int.parse(match.group(1)!);
      final month = int.parse(match.group(2)!);
      final day = int.parse(match.group(3)!);

      try {
        return Date.fromDateTime(DateTime(year, month, day));
      } catch (e) {
        return null;
      }
    }

    // Try dd/MM/yyyy format
    final dmyRegex = RegExp(r'^(\d{1,2})/(\d{1,2})/(\d{4})$');
    match = dmyRegex.firstMatch(dateString);
    if (match != null) {
      final day = int.parse(match.group(1)!);
      final month = int.parse(match.group(2)!);
      final year = int.parse(match.group(3)!);

      try {
        return Date.fromDateTime(DateTime(year, month, day));
      } catch (e) {
        return null;
      }
    }

    // Try MM/dd/yyyy format
    final mdyRegex = RegExp(r'^(\d{1,2})/(\d{1,2})/(\d{4})$');
    match = mdyRegex.firstMatch(dateString);
    if (match != null) {
      final month = int.parse(match.group(1)!);
      final day = int.parse(match.group(2)!);
      final year = int.parse(match.group(3)!);

      try {
        return Date.fromDateTime(DateTime(year, month, day));
      } catch (e) {
        return null;
      }
    }

    return null;
  }

  /// Calculate a person's age at a specific future date
  static Age calculateAgeAt(Date birthDate, Date futureDate) {
    if (futureDate.isBefore(birthDate)) {
      throw ArgumentError('Future date must be after birth date');
    }

    final now = Date.today();
    if (futureDate.isAfter(now)) {
      // Calculate the difference between now and future date
      final daysDifference = DateTimeUtils.getDaysDifference(
          futureDate.toDateTime(), now.toDateTime());

      // Create an Age object using birth date
      final currentAge = Age(birthDate);

      // Add the difference to this person's current age
      return Age(currentAge.dateOfBirth.subtractDays(daysDifference));
    } else {
      // For past or current dates, just calculate normally
      return Age(birthDate);
    }
  }

  /// Get a list of holidays for a given year (example implementation)
  static List<Date> getCommonHolidays(int year) {
    // This is just an example - you'd implement specific logic for your needs
    final holidays = <Date>[];

    // New Year's Day
    holidays.add(Date.fromDateTime(DateTime(year)));

    // Christmas
    holidays.add(Date.fromDateTime(DateTime(year, 12, 25)));

    // Add more holidays as needed

    return holidays;
  }

  /// Check if two date ranges overlap
  static bool doRangesOverlap(DateRange range1, DateRange range2) {
    return range1.start.isBefore(range2.end) &&
        range2.start.isBefore(range1.end);
  }
}

/// Extension to add age comparison functionality
extension AgeComparisonExtension on Age {
  /// Check if this age is older than another age
  bool isOlderThan(Age other) {
    return dateOfBirth.isBefore(other.dateOfBirth);
  }

  /// Check if this age is younger than another age
  bool isYoungerThan(Age other) {
    return dateOfBirth.isAfter(other.dateOfBirth);
  }

  /// Calculate the age difference between two people
  TimeDifferenceInYearMonthsWeeksDays differenceFrom(Age other) {
    final olderBirthDate = dateOfBirth.isBefore(other.dateOfBirth)
        ? dateOfBirth
        : other.dateOfBirth;
    final youngerBirthDate = dateOfBirth.isAfter(other.dateOfBirth)
        ? dateOfBirth
        : other.dateOfBirth;

    return DateTimeUtils.timeDifference(
      fromDate: olderBirthDate.toDateTime(),
      toDate: youngerBirthDate.toDateTime(),
    );
  }
}
