import 'package:clock/clock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/common/types.dart';

part 'age.freezed.dart';
part 'age.g.dart';
part 'age.part.dart';

Months _monthFromNumber(int number) => _reverseMonthsEnum[number]!;

final _reverseMonthsEnum = _$MonthsEnumMap.map((k, v) => MapEntry(v, k));

@freezed
sealed class Age with _$Age {
  @Assert(
    '!(DateTime(DateTimeUtils.now().year, DateTimeUtils.now().month, DateTimeUtils.now().day).difference(DateTime(dateOfBirth.year,dateOfBirth.month.number,dateOfBirth.date,),).isNegative)',
    'Age is impossible because it is in the future',
  )
  factory Age(Date dateOfBirth) = _Age;

  const Age._();

  factory Age.byYearsAgo(int years) => Age(Date.yearsAgoByNow(years));

  factory Age.byMonthsAgo(int months) => Age(
        Date.monthsAgoByNow(months),
      );
  factory Age.byWeeksAgo(int weeks) => Age(
        Date.weeksAgoByNow(weeks),
      );

  factory Age.byDaysAgo(int days) => Age(Date.daysAgoByNow(days));

  factory Age.fromJson(Map<String, dynamic> json) => _$AgeFromJson(json);

  bool get isValid => dateOfBirth.isSameOrBefore(Date.today());

  TimeIntervalCount get _dobCount => TimeIntervalCount(
        dateOfBirth.year,
        dateOfBirth.month.number,
        dateOfBirth.date,
      );

  TimeDifferenceInYearMonthsWeeksDays timeUntilNextBirthdayFromDate(
    Date date,
  ) =>
      _dobCount.timeUntilNextBirthday(date.toDateTime());

  bool _checkDate(Date date) => date.isSameOrBefore(dateOfBirth);

  TimeDifferenceInYearMonthsWeeksDays yearsMonthsWeeksDaysOfAgeAtDate(
    Date date,
  ) {
    if (_checkDate(date)) {
      return TimeIntervalCount.zeroAgeInYearMonthsWeeksDays();
    }
    return _dobCount.ageAtDate(date.toDateTime());
  }

  int ageInTotalYearsAtDate(Date date) {
    if (_checkDate(date)) {
      return 0;
    }
    final count = ageInTotalMonthsAtDate(date);
    return count < DateTime.monthsPerYear ? 0 : count ~/ DateTime.monthsPerYear;
  }

  int ageInTotalMonthsAtDate(Date date) {
    if (_checkDate(date)) {
      return 0;
    }
    final count = yearsMonthsWeeksDaysOfAgeAtDate(date);
    return (count.years * DateTime.monthsPerYear) + count.months;
  }

  int ageInTotalWeeksAtDate(Date date) {
    if (_checkDate(date)) {
      return 0;
    }
    final count = ageInTotalDaysAtDate(date);
    return count < DateTime.daysPerWeek ? 0 : count ~/ DateTime.daysPerWeek;
  }

  int ageInTotalDaysAtDate(Date date) {
    if (_checkDate(date)) {
      return 0;
    }
    return DateTimeUtils.getDaysDifference(
      date.toDateTime(),
      dateOfBirth.toDateTime(),
    );
  }

  TimeDifferenceInYearMonthsWeeksDays get timeUntilNextBirthdayByNow =>
      timeUntilNextBirthdayFromDate(Date.today());

  TimeDifferenceInYearMonthsWeeksDays get yearsMonthsWeeksDaysOfAgeByNow =>
      yearsMonthsWeeksDaysOfAgeAtDate(Date.today());

  int get ageInTotalYearsByNow => ageInTotalYearsAtDate(Date.today());

  int get ageInTotalMonthsByNow => ageInTotalMonthsAtDate(Date.today());

  int get ageInTotalWeeksByNow => ageInTotalWeeksAtDate(Date.today());

  int get ageInTotalDaysByNow => ageInTotalDaysAtDate(Date.today());

  Date dateAtDaysAfterBirth(int daysAfterBirth) =>
      dateOfBirth.addDays(daysAfterBirth);

  Date dateAtWeeksAfterBirth(int weeksAfterBirth) =>
      dateOfBirth.addWeeks(weeksAfterBirth);

  Date dateAtMonthsAfterBirth(int monthsAfterBirth) =>
      dateOfBirth.addMonths(monthsAfterBirth);

  Date dateAtYearsAfterBirth(int yearsAfterBirth) =>
      dateOfBirth.addYears(yearsAfterBirth);

  Age ageAtPastDate(Date date) {
    if (date.isSameOrAfter(Date.today()) || date.isSameOrBefore(dateOfBirth)) {
      return this;
    }
    return Age(
      dateAtDaysAfterBirth(
        ageInTotalDaysByNow - Age(date).ageInTotalDaysByNow,
      ),
    );
  }
}

@freezed
sealed class Date with _$Date implements Comparable<Date> {
  @Assert(
    'year > 0 && date > 0 && date < 32',
    'Date impossible, use \${Date.fromDateTime} for safety, in cost of increased risk of wrong growth calculation',
  )
  @Assert(
    'date <= DateTimeUtils.getDaysInMonth(year, month.number)',
    'Date exceeded, max date is at \${DateTimeUtils.getDaysInMonth(year, month.number)} in \${month.text} \$year',
  )
  factory Date({
    required int year,
    required Months month,
    required int date,
  }) = _Date;

  const Date._();

  factory Date.daysAgoByNow(int days) =>
      Date.fromDateTime(DateTimeUtils.addDays(DateTimeUtils.now(), -days));

  factory Date.weeksAgoByNow(int weeks) =>
      Date.fromDateTime(DateTimeUtils.addWeeks(DateTimeUtils.now(), -weeks));

  factory Date.monthsAgoByNow(int months) =>
      Date.fromDateTime(DateTimeUtils.addMonths(DateTimeUtils.now(), -months));

  factory Date.yearsAgoByNow(int years) =>
      Date.fromDateTime(DateTimeUtils.addYears(DateTimeUtils.now(), -years));

  factory Date.today() => Date.fromDateTime(DateTimeUtils.now());

  factory Date.fromDateTime(DateTime dateTime) => Date(
        year: dateTime.year,
        month: _monthFromNumber(dateTime.month),
        date: dateTime.day,
      );

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);

  bool get isFuture => this > Date.today();

  bool isBefore(Date other) => this < other;
  bool isSameOrBefore(Date other) => this <= other;

  bool isAfter(Date other) => this > other;
  bool isSameOrAfter(Date other) => this >= other;

  bool isSameAs(Date other) => this == other;
  bool isNotSameAs(Date other) => this != other;

  Date add(Duration duration) => this + duration;
  Date subtract(Duration duration) => this - duration;

  Duration difference(Date other) => Duration(
        days: DateTimeUtils.getDaysDifference(toDateTime(), other.toDateTime()),
      );

  Duration differenceWithDateTime(DateTime other) => Duration(
        days: DateTimeUtils.getDaysDifference(toDateTime(), other),
      );

  DateTime toDateTime() => DateTime(year, month.number, date);

  Date addDays(int days) => Date.fromDateTime(
        DateTimeUtils.addDays(toDateTime(), days),
      );
  Date addWeeks(int weeks) => Date.fromDateTime(
        DateTimeUtils.addWeeks(toDateTime(), weeks),
      );
  Date addMonths(int months) => Date.fromDateTime(
        DateTimeUtils.addMonths(toDateTime(), months),
      );
  Date addYears(int years) => Date.fromDateTime(
        DateTimeUtils.addYears(toDateTime(), years),
      );

  Date subtractDays(int days) => addDays(-days);
  Date subtractWeeks(int weeks) => addWeeks(-weeks);
  Date subtractMonths(int months) => addMonths(-months);
  Date subtractYears(int years) => addYears(-years);

  Date operator +(Duration duration) {
    if (duration.inDays < 1) return this;
    return addDays(duration.inDays);
  }

  Date operator -(Duration duration) {
    if (duration.inDays < 1) return this;
    return subtractDays(duration.inDays);
  }

  bool operator >=(Date other) {
    if (this == other) return true;
    return this > other;
  }

  bool operator <=(Date other) {
    if (this == other) return true;
    return this < other;
  }

  bool operator >(Date other) {
    if (this == other) return false;
    return !(this < other);
  }

  bool operator <(Date other) {
    if (this == other) return false;
    if (year != other.year) {
      return year < other.year;
    }
    if (month != other.month) {
      return month.number < other.month.number;
    }
    return date < other.date;
  }

  @override
  int compareTo(Date other) {
    if (this == other) return 0;
    return this > other ? 1 : -1;
  }
}

extension AgeRangeExtension on Age {
  /// Checks if the age falls within a specified range
  bool isInRange({int? minMonths, int? maxMonths}) {
    final ageInMonths = ageInTotalMonthsByNow;
    if (minMonths != null && ageInMonths < minMonths) return false;
    if (maxMonths != null && ageInMonths > maxMonths) return false;
    return true;
  }

  /// Returns a string representation of the age in the most appropriate unit
  String toHumanReadableString() {
    final years = ageInTotalYearsByNow;
    final months = ageInTotalMonthsByNow % 12;
    final weeks = ageInTotalWeeksByNow % 4;
    final days = ageInTotalDaysByNow % 7;

    if (years > 0) {
      if (months > 0) {
        return '$years year${years == 1 ? '' : 's'}, $months month${months == 1 ? '' : 's'}';
      }
      return '$years year${years == 1 ? '' : 's'}';
    } else if (months > 0) {
      if (weeks > 0) {
        return '$months month${months == 1 ? '' : 's'}, $weeks week${weeks == 1 ? '' : 's'}';
      }
      return '$months month${months == 1 ? '' : 's'}';
    } else if (weeks > 0) {
      if (days > 0) {
        return '$weeks week${weeks == 1 ? '' : 's'}, $days day${days == 1 ? '' : 's'}';
      }
      return '$weeks week${weeks == 1 ? '' : 's'}';
    } else {
      return '$days day${days == 1 ? '' : 's'}';
    }
  }
}

extension DateFormatExtension on Date {
  /// Returns a formatted string representation of the date
  /// Format: 'yyyy-MM-dd' by default
  String format([String format = 'yyyy-MM-dd']) {
    final Map<String, String> formatParams = {
      'yyyy': year.toString(),
      'MM': month.number.toString().padLeft(2, '0'),
      'M': month.number.toString(),
      'dd': date.toString().padLeft(2, '0'),
      'd': date.toString(),
      'MMM': month.text,
    };

    String result = format;
    formatParams.forEach((key, value) {
      result = result.replaceAll(key, value);
    });

    return result;
  }

  /// Check if this date is a weekend
  bool get isWeekend {
    final weekday = toDateTime().weekday;
    return weekday == DateTime.saturday || weekday == DateTime.sunday;
  }

  /// Calculate the quarter of the year (1-4)
  int get quarter => ((month.number - 1) / 3).floor() + 1;

  /// Return the first day of the quarter
  Date firstDayOfQuarter() {
    final quarterMonth = (quarter - 1) * 3 + 1;
    return Date(year: year, month: _monthFromNumber(quarterMonth), date: 1);
  }

  /// Return the last day of the quarter
  Date lastDayOfQuarter() {
    final nextQuarter = quarter % 4 + 1;
    final nextQuarterYear = quarter == 4 ? year + 1 : year;
    final nextQuarterFirstMonth = (nextQuarter - 1) * 3 + 1;

    final nextQuarterFirstDay = Date(
        year: nextQuarterYear,
        month: _monthFromNumber(nextQuarterFirstMonth),
        date: 1);

    return nextQuarterFirstDay.subtractDays(1);
  }
}
