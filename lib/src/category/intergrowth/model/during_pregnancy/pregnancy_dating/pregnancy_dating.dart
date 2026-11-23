part of '../../../intergrowth.dart';

/// INTERGROWTH-21st ultrasound pregnancy dating equation used to produce an
/// [IntergrowthPregnancyDatingEstimate].
enum IntergrowthDatingMethod {
  /// Early pregnancy dating from Crown-Rump Length (15–100 mm; Papageorghiou et al., UOG 2014).
  crl,

  /// Late pregnancy dating from Head Circumference + Femur Length (Papageorghiou et al., UOG 2016).
  hcAndFl,

  /// Late pregnancy dating from Head Circumference alone when FL is unavailable (Papageorghiou et al., UOG 2016).
  hcOnly,
}

/// Estimated gestational age and due date from INTERGROWTH-21st ultrasound dating equations.
@freezed
sealed class IntergrowthPregnancyDatingEstimate
    with _$IntergrowthPregnancyDatingEstimate {
  factory IntergrowthPregnancyDatingEstimate({
    required IntergrowthDatingMethod method,
    required double exactDays,
    required double sdDays,
    Date? examinationDate,
  }) = _IntergrowthPregnancyDatingEstimate;

  const IntergrowthPregnancyDatingEstimate._();

  factory IntergrowthPregnancyDatingEstimate.fromJson(
    Map<String, dynamic> json,
  ) => _$IntergrowthPregnancyDatingEstimateFromJson(json);

  /// Exact gestational age in decimal weeks.
  double get exactWeeks => exactDays / DateTime.daysPerWeek;

  /// Completed gestational weeks (floor).
  int get completedWeeks => exactDays ~/ DateTime.daysPerWeek;

  /// Remaining fractional days beyond [completedWeeks].
  double get remainingDays => exactDays - completedWeeks * DateTime.daysPerWeek;

  /// Nearest whole-day [GestationalAge].
  GestationalAge get gestationalAge {
    final roundedDays = exactDays.round();
    return GestationalAge(
      weeks: roundedDays ~/ DateTime.daysPerWeek,
      days: roundedDays % DateTime.daysPerWeek,
    );
  }

  /// 95% prediction interval (±1.96 SD) in days.
  ({double lowerDays, double upperDays}) get predictionInterval95 => (
    lowerDays: exactDays - 1.96 * sdDays,
    upperDays: exactDays + 1.96 * sdDays,
  );

  /// Ultrasound-estimated due date (EDD = examinationDate + 280 - GA days),
  /// or `null` if [examinationDate] was omitted.
  Date? get estimatedDueDate =>
      examinationDate?.addDays((280 - exactDays).round());
}
