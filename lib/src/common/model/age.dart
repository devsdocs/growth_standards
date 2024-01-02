import 'package:clock/clock.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/common/typedef.dart';
import 'package:growth_standards/src/common/types.dart';

part 'age.freezed.dart';
part 'age.g.dart';
part 'date_utils.dart';

Months _monthFromNumber(int number) =>
    Months.values.singleWhere((element) => element.number == number);

@freezed
class Age with _$Age {
  @Assert(
    '!(DateTime(DTU.now().year, DTU.now().month, DTU.now().day).difference(DateTime(dateOfBirth.year,dateOfBirth.month.number,dateOfBirth.date,),).isNegative)',
    'Age is impossible',
  )
  factory Age(Date dateOfBirth, bool checkMonth) = _Age;

  const Age._();

  factory Age.byYearsAgo(int years) => Age(Date.yearsAgoByNow(years), false);

  factory Age.byMonthsAgo(int months) =>
      Age(Date.monthsAgoByNow(months), checkMonths(months));

  factory Age.byDaysAgo(int days) => Age(Date.daysAgoByNow(days), false);

  factory Age.byDate(Date date) => Age(date, false);

  factory Age.fromJson(Map<String, dynamic> json) => _$AgeFromJson(json);

  TimeIntervalCount get _dobCount => TimeIntervalCount(
        dateOfBirth.year,
        dateOfBirth.month.number,
        dateOfBirth.date,
      );

  AgeInternal get _ageNowIn => _dobCount.ageNow;

  YearsMonthsDays get yearsMonthsDaysOfAge =>
      (years: _ageNowIn.years, months: _ageNowIn.months, days: _ageNowIn.days);

  int get ageInTotalMonthsByNow {
    final months =
        (yearsMonthsDaysOfAge.years * 12) + yearsMonthsDaysOfAge.months;
    return checkMonth == true ? months + 1 : months;
  }

  int get ageInTotalDaysByNow =>
      DTU.getDaysDifference(DTU.now(), _dobCount.dob);

  int get ageInTotalWeeksByNow =>
      ageInTotalDaysByNow < 7 ? 0 : ageInTotalDaysByNow ~/ 7;

  Date dateAtDaysAfterBirth(int daysAfterBirth) => Date.fromDateTime(
        DTU.addDays(dateOfBirth.toDateTime(), daysAfterBirth),
      );

  Date dateAtMonthsAfterBirth(int monthsAfterBirth) => Date.fromDateTime(
        DTU.addMonths(dateOfBirth.toDateTime(), monthsAfterBirth),
      );

  Age ageAtPastDate(Date date) {
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

  factory Date.today() => Date.fromDateTime(DTU.now());

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
