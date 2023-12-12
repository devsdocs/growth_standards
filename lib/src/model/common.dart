import 'package:who_growth_chart/src/const.dart';
import 'package:who_growth_chart/src/math.dart';
import 'package:who_growth_chart/src/types.dart';

class AgeInDays {
  AgeInDays(this.value);
  final num value;

  int get inYears => rounding(inMonths / 12).toInt();
  int get inMonths => rounding(value / daysInMonth).toInt();
}

class Age {
  Age(DateOfBirth dateOfBirth)
      : assert(assertDateOfBirth(dateOfBirth)),
        _dobCount = _TimeIntervalCount(
          dateOfBirth.year,
          dateOfBirth.month.number,
          dateOfBirth.date,
        );

  factory Age.fromMonths(int months) {
    return Age(DateOfBirth.fromMonths(months));
  }
  factory Age.fromDays(int days) {
    return Age(DateOfBirth.fromDays(days));
  }

  final _TimeIntervalCount _dobCount;

  _Age get _ageNowIn => _dobCount.ageNow;

  int get years => _ageNowIn.years;
  int get months => _ageNowIn.months;
  int get days => _ageNowIn.days;

  int get totalMonths => years * 12 + months;
  int get totalDays => rounding(totalMonths * daysInMonth).toInt() + days;
}

class DateOfBirth {
  DateOfBirth({required this.year, required this.month, required this.date});

  factory DateOfBirth.fromDays(int days) {
    final calc = DateTime.now().subtract(Duration(days: days));
    return DateOfBirth(
      year: calc.year,
      month:
          Months.values.singleWhere((element) => element.number == calc.month),
      date: calc.day,
    );
  }

  factory DateOfBirth.fromMonths(int months) {
    final calc = DateTime.now()
        .subtract(Duration(days: rounding(months * daysInMonth).toInt()));
    return DateOfBirth(
      year: calc.year,
      month:
          Months.values.singleWhere((element) => element.number == calc.month),
      date: calc.day,
    );
  }

  final int year;
  final Months month;
  final int date;
}

bool assertDateOfBirth(DateOfBirth dob) {
  if (dob.date > _TimeTools._datesInMonth(dob.year, dob.month.number)) {
    return false;
  }
  return true;
}

class _TimeTools {
  /// _daysInMonth cost contains days per months; daysInMonth method to be used instead.
  static final List<int> _daysInMonth = [
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
  static bool _isLeapYear(int year) =>
      (year % 4 == 0) && ((year % 100 != 0) || (year % 400 == 0));

  /// daysInMonth method
  static int _datesInMonth(int year, int month) =>
      (month == DateTime.february && _isLeapYear(year))
          ? 29
          : _daysInMonth[month - 1];
}

class _TimeIntervalCount {
  _TimeIntervalCount(
    int year, [
    int month = 1,
    int date = 1,
    int hours = 0,
    int minutes = 0,
  ]) : _dob = DateTime(
          year,
          month,
          date,
          hours,
          minutes,
        ) {
    if (date > _TimeTools._datesInMonth(year, month)) {
      throw Exception('Days exceeded');
    }
  }

  final DateTime _dob;

  _Age _timeDifference({
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
        days = _TimeTools._datesInMonth(
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
        days = _TimeTools._datesInMonth(
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
        days = _TimeTools._datesInMonth(
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

    return _Age(
      days: days,
      months: months,
      years: years,
      hours: hours,
      minutes: minutes,
    );
  }

  /// add method
  DateTime _add({
    required DateTime date,
    required _Age duration,
  }) {
    int years = date.year + duration.years;
    years += (date.month + duration.months) ~/ DateTime.monthsPerYear;
    final int months = (date.month + duration.months) % DateTime.monthsPerYear;

    final int days = date.day + duration.days - 1;

    return DateTime(years, months).add(Duration(days: days));
  }

  _Age _ageAtDate(DateTime day) {
    return _timeDifference(
      fromDate: _dob,
      toDate: day,
    );
  }

  _Age get ageNow => _ageAtDate(DateTime.now());
  _Age get timeUntilNextBirthdayFromNow =>
      _timeUntilNextBirthday(DateTime.now());

  _Age _timeUntilNextBirthday(DateTime fromDate) {
    final DateTime endDate = fromDate;
    final DateTime tempDate = DateTime(endDate.year, _dob.month, _dob.day);
    final DateTime nextBirthdayDate = tempDate.isBefore(endDate)
        ? _add(date: tempDate, duration: _Age(years: 1))
        : tempDate;
    return _timeDifference(fromDate: endDate, toDate: nextBirthdayDate);
  }
}

class _Age {
  _Age({
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

class MeasurementResult {
  MeasurementResult(this.value);
  final num value;
}
