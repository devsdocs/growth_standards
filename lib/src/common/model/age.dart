import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/common/typedef.dart';
import 'package:growth_standards/src/common/types.dart';

part 'age.freezed.dart';
part 'age.g.dart';

Months _monthFromNumber(int number) =>
    Months.values.singleWhere((element) => element.number == number);

@freezed
class Age with _$Age {
  @Assert(
    '!(DateTime(DateTime.now().year, DateTime.now().month, DateTime.now().day).difference(DateTime(dateOfBirth.year,dateOfBirth.month.number,dateOfBirth.date,),).isNegative)',
    'Age is impossible',
  )
  factory Age(Date dateOfBirth) = _Age;

  const Age._();

  factory Age.byYearsAgo(int years) => Age(Date.yearsAgoByNow(years));

  factory Age.byMonthsAgo(int months) => Age(Date.monthsAgoByNow(months));

  factory Age.byDaysAgo(int days) => Age(Date.daysAgoByNow(days));

  factory Age.byDate(Date date) => Age(date);

  factory Age.fromJson(Map<String, dynamic> json) => _$AgeFromJson(json);

  _TimeIntervalCount get _dobCount => _TimeIntervalCount(
        dateOfBirth.year,
        dateOfBirth.month.number,
        dateOfBirth.date,
      );

  _AgeInternal get _ageNowIn => _dobCount.ageNow;

  YearsMonthsDays get yearsMonthsDaysOfAge =>
      (years: _ageNowIn.years, months: _ageNowIn.months, days: _ageNowIn.days);

  int get ageInTotalMonthsByNow =>
      (yearsMonthsDaysOfAge.years * 12) + yearsMonthsDaysOfAge.months;

  int get ageInTotalDaysByNow =>
      DateTime.now().difference(_dobCount.dob).inDays;

  int get ageInTotalWeeksByNow =>
      ageInTotalDaysByNow < 7 ? 0 : ageInTotalDaysByNow ~/ 7;

  Date dateAtDaysAfterBirth(int daysAfterBirth) =>
      dateOfBirth + Duration(days: daysAfterBirth);

  Age ageAtAnyPastDate(Date date) {
    if (date.isSameOrAfter(Date.today())) {
      return this;
    }
    return Age.byDate(
      dateAtDaysAfterBirth(
        ageInTotalDaysByNow - Age.byDate(date).ageInTotalDaysByNow,
      ),
    );
  }
}

@freezed
class Date with _$Date implements Comparable<Date> {
  @Assert(
    'year > 0 || date > 0 || date < 32',
    'Date impossible, use \${Date.fromDateTime} for safety, in cost of increased risk of wrong growth calculation',
  )
  @Assert(
    'date <= TimeTools.datesInMonth(year, month.number)',
    'Date exceeded, max date is at \${TimeTools.datesInMonth(year, month.number)} in \${month.text} \$year',
  )
  factory Date({
    required int year,
    required Months month,
    required int date,
  }) = _Date;

  const Date._();

  factory Date.daysAgoByNow(int days) {
    final calc = TimeTools.calculateBirthDateInDaysBeforeByNow(days);
    return Date(
      year: calc.year,
      month: _monthFromNumber(calc.month),
      date: calc.day,
    );
  }

  factory Date.monthsAgoByNow(int months) {
    final calc = TimeTools.calculateBirthDateInMonthsBeforeByNow(months);
    return Date(
      year: calc.year,
      month: _monthFromNumber(calc.month),
      date: calc.day,
    );
  }

  factory Date.yearsAgoByNow(int years) {
    final calc = TimeTools.calculateBirthDateInYearsBeforeByNow(years);
    return Date(
      year: calc.year,
      month: _monthFromNumber(calc.month),
      date: calc.day,
    );
  }

  factory Date.today() => Date.fromDateTime(DateTime.now());

  factory Date.fromDateTime(DateTime dateTime) => Date(
        year: dateTime.year,
        month: _monthFromNumber(dateTime.month),
        date: dateTime.day,
      );

  factory Date.fromJson(Map<String, dynamic> json) => _$DateFromJson(json);

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Date &&
          other.year == year &&
          other.month.number == month.number &&
          other.date == date;

  @override
  int get hashCode => year.hashCode ^ month.number.hashCode ^ date.hashCode;

  bool isBefore(Date other) => this < other;
  bool isSameOrBefore(Date other) => this <= other;

  bool isAfter(Date other) => this > other;
  bool isSameOrAfter(Date other) => this >= other;

  bool isSameAs(Date other) => this == other;
  bool isNotSameAs(Date other) => this != other;

  Date add(Duration duration) => this + duration;
  Date subtract(Duration duration) => this - duration;

  DateTime toDateTime() => DateTime(year, month.number, date);

  Date dateAtPastDays(int daysAgo) => Date.today() - Duration(days: daysAgo);

  Date operator +(Duration duration) {
    if (duration.inDays < 1) return this;
    return Date.fromDateTime(DateTime(year, month.number, date).add(duration));
  }

  Date operator -(Duration duration) {
    if (duration.inDays < 1) return this;
    return Date.fromDateTime(
      DateTime(year, month.number, date).subtract(duration),
    );
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
    if (year == other.year) {
      if (month == other.month) {
        if (date > other.date) {
          return false;
        } else {
          return true;
        }
      } else {
        if (month.number > other.month.number) {
          return false;
        } else {
          return true;
        }
      }
    } else {
      if (year > other.year) {
        return false;
      }
      return true;
    }
  }

  @override
  int compareTo(Date other) {
    if (this == other) return 0;
    return this > other ? 1 : -1;
  }
}

class TimeTools {
  /// _daysInMonth cost contains days per months; daysInMonth method to be used instead.
  static final List<int> daysInMonth = [
    31, // Jan
    28, // Feb, it varies from 28 to 29
    31,
    30,
    31,
    30,
    31,
    31,
    30,
    31,
    30,
    31, // Dec
  ];

  /// isLeapYear method
  static bool isLeapYear(int year) =>
      (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0));

  /// daysInMonth method
  static int datesInMonth(int year, int month) =>
      (month == DateTime.february && isLeapYear(year))
          ? 29
          : daysInMonth[month - 1];

  static DateTime calculateBirthDateInDaysBeforeByNow(int daysOld) =>
      DateTime.now().subtract(Duration(days: daysOld));

  static DateTime calculateBirthDateInYearsBeforeByNow(int yearsOld) {
    // Get the current date
    final DateTime currentDate = DateTime.now();

    // Calculate the target date
    return currentDate
        .subtract(Duration(days: yearsToDays(yearsOld, currentDate)));
  }

  static DateTime calculateBirthDateInMonthsBeforeByNow(int monthsOld) {
    // Get the current date
    final DateTime currentDate = DateTime.now();

    // Calculate the target date
    final DateTime targetDate = currentDate.subtract(
      Duration(
        days: monthsToDays(currentDate.year, currentDate.month, monthsOld),
      ),
    );

    return targetDate;
  }

  static int yearsToDays(int years, DateTime currentDate) {
    // Calculate the total number of days in the given years, considering leap years
    int days = 0;
    for (int i = 0; i < years; i++) {
      days += isLeapYear(currentDate.year - i) ? 366 : 365;
    }

    return days;
  }

  static int monthsToDays(int year, int startingMonth, int months) {
    // Calculate the total number of days in the given months
    int days = 0;
    int currentMonth = startingMonth;
    int y = year;

    for (int i = 0; i < months; i++) {
      days += DateTime(y, currentMonth, 0).day;
      currentMonth++;

      if (currentMonth > 12) {
        currentMonth = 1;
        y++;
      }
    }

    return days;
  }

  static Date calculateBirthDateFromYearsMonthsDays({
    required YearsMonthsDays ymd,
    DateTime? fromDate,
  }) {
    final now = DateTime.now();
    if (fromDate != null) {
      if (now.isBefore(fromDate)) {
        fromDate = now;
      }
    }

    final days = ymd.days;
    final months = ymd.months;
    final years = ymd.years;
    // Get the current date
    final DateTime workingDate = fromDate ?? now;

    // Calculate the target date
    DateTime targetDate = workingDate.subtract(Duration(days: days + 1));
    targetDate = targetDate.subtract(
      Duration(
        days: monthsToDays(targetDate.year, targetDate.month, months),
      ),
    );
    targetDate =
        targetDate.subtract(Duration(days: yearsToDays(years, targetDate)));

    // Adjust the target date based on years and months

    return Date.fromDateTime(targetDate);
  }
}

class _TimeIntervalCount {
  _TimeIntervalCount(
    int year, [
    int month = 1,
    int date = 1,
    int hours = 0,
    int minutes = 0,
  ]) : dob = DateTime(
          year,
          month,
          date,
          hours,
          minutes,
        ) {
    if (date > TimeTools.datesInMonth(year, month)) {
      throw Exception('Days exceeded');
    }
  }

  final DateTime dob;

  _AgeInternal timeDifference({
    required DateTime fromDate,
    required DateTime toDate,
  }) {
    // Check if toDate to be included in the calculation
    final DateTime endDate = toDate;

    int years = endDate.year - fromDate.year;
    int months = 0;
    int days = 0;
    int hours = 0;
    int minutes = 0;

    if (fromDate.month > endDate.month) {
      years--;
      months = DateTime.monthsPerYear + endDate.month - fromDate.month;

      if (fromDate.day > endDate.day) {
        months--;
        days = TimeTools.datesInMonth(
              fromDate.year + years,
              ((fromDate.month + months - 1) % DateTime.monthsPerYear) + 1,
            ) +
            endDate.day -
            fromDate.day;
      } else {
        days = endDate.day - fromDate.day;
      }
    } else if (endDate.month == fromDate.month) {
      if (fromDate.day > endDate.day) {
        years--;
        months = DateTime.monthsPerYear - 1;
        days = TimeTools.datesInMonth(
              fromDate.year + years,
              ((fromDate.month + months - 1) % DateTime.monthsPerYear) + 1,
            ) +
            endDate.day -
            fromDate.day;
      } else {
        days = endDate.day - fromDate.day;
      }
    } else {
      months = endDate.month - fromDate.month;

      if (fromDate.day > endDate.day) {
        months--;
        days = TimeTools.datesInMonth(
              fromDate.year + years,
              fromDate.month + months,
            ) +
            endDate.day -
            fromDate.day;
      } else {
        days = endDate.day - fromDate.day;
      }
    }

    if (fromDate.hour > endDate.hour) {
      days--;
      hours = 24 - fromDate.hour + endDate.hour;
    } else {
      hours = endDate.hour - fromDate.hour;
    }

    if (fromDate.minute > endDate.minute) {
      hours--;
      minutes = 60 - fromDate.minute + endDate.minute;
    } else {
      minutes = endDate.minute - fromDate.minute;
    }

    return _AgeInternal(
      years: years,
      days: days,
      months: months,
      hours: hours,
      minutes: minutes,
    );
  }

  /// add method
  DateTime add({
    required DateTime date,
    required _AgeInternal duration,
  }) {
    int years = date.year + duration.years;
    years += (date.month + duration.months) ~/ DateTime.monthsPerYear;
    final int months = (date.month + duration.months) % DateTime.monthsPerYear;

    final int days = date.day + duration.days - 1;

    return DateTime(years, months).add(Duration(days: days));
  }

  _AgeInternal ageAtDate(DateTime day) => timeDifference(
        fromDate: dob,
        toDate: day,
      );

  _AgeInternal get ageNow => ageAtDate(DateTime.now());
  _AgeInternal get timeUntilNextBirthdayFromNow =>
      timeUntilNextBirthday(DateTime.now());

  _AgeInternal timeUntilNextBirthday(DateTime fromDate) {
    final DateTime endDate = fromDate;
    final DateTime tempDate = DateTime(endDate.year, dob.month, dob.day);
    final DateTime nextBirthdayDate = tempDate.isBefore(endDate)
        ? add(date: tempDate, duration: _AgeInternal(years: 1))
        : tempDate;
    return timeDifference(fromDate: endDate, toDate: nextBirthdayDate);
  }
}

class _AgeInternal {
  _AgeInternal({
    this.days = 0,
    this.months = 0,
    this.years = 0,
    this.hours = 0,
    this.minutes = 0,
  });
  int days;
  int months;
  int years;
  int hours;
  int minutes;
}
