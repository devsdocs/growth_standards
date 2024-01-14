import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:growth_standards/src/common/model/age.part.dart';
import 'package:growth_standards/src/common/types.dart';

part 'age.freezed.dart';
part 'age.g.dart';

Months _monthFromNumber(int number) => _reverseMonthsEnum[number]!;

final _reverseMonthsEnum = _$MonthsEnumMap.map((k, v) => MapEntry(v, k));

@freezed
class Age with _$Age {
  @Assert(
    '!(DateTime(DateTimeUtils.now().year, DateTimeUtils.now().month, DateTimeUtils.now().day).difference(DateTime(dateOfBirth.year,dateOfBirth.month.number,dateOfBirth.date,),).isNegative)',
    'Age is impossible',
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

  TimeIntervalCount get _dobCount => TimeIntervalCount(
        dateOfBirth.year,
        dateOfBirth.month.number,
        dateOfBirth.date,
      );

  AgeInYearMonthsWeeksDays timeUntilNextBirthdayFromDate(Date date) {
    final timeUntilNextBirthday =
        _dobCount.timeUntilNextBirthday(date.toDateTime());
    return AgeInYearMonthsWeeksDays(
      years: timeUntilNextBirthday.years,
      months: timeUntilNextBirthday.months,
      weeks: timeUntilNextBirthday.weeks,
      days: timeUntilNextBirthday.days,
    );
  }

  bool _checkDate(Date date) => date.isSameOrBefore(dateOfBirth);

  AgeInYearMonthsWeeksDays yearsMonthsWeeksDaysOfAgeAtDate(Date date) {
    if (_checkDate(date)) {
      return AgeInYearMonthsWeeksDays();
    }
    final ageAtDate = _dobCount.ageAtDate(date.toDateTime());
    return AgeInYearMonthsWeeksDays(
      years: ageAtDate.years,
      months: ageAtDate.months,
      days: ageAtDate.days,
      weeks: ageAtDate.weeks,
    );
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

  AgeInYearMonthsWeeksDays get timeUntilNextBirtdayByNow =>
      timeUntilNextBirthdayFromDate(Date.today());

  AgeInYearMonthsWeeksDays get yearsMonthsWeeksDaysOfAgeByNow =>
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

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is Age && other.dateOfBirth == dateOfBirth;

  @override
  int get hashCode => dateOfBirth.hashCode;
}

@freezed
class Date with _$Date implements Comparable<Date> {
  @Assert(
    'year > 0 || date > 0 || date < 32',
    'Date impossible, use \${Date.fromDateTime} for safety, in cost of increased risk of wrong growth calculation',
  )
  @Assert(
    'date <= DateTimeUtils.datesInMonth(year, month.number)',
    'Date exceeded, max date is at \${DateTimeUtils.datesInMonth(year, month.number)} in \${month.text} \$year',
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

  Duration difference(Date other) => Duration(
        days: DateTimeUtils.getDaysDifference(toDateTime(), other.toDateTime()),
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
