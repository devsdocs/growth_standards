import 'package:growth_standards/src/common/types.dart';

typedef LMS = ({num l, num m, num s});
typedef YearsMonthsDays = ({int years, int months, int days});
typedef YearsMonths = ({int years, int months});
typedef ZScorePercentile = ({num zScore, num percentile});
typedef WeeksMonths = ({
  WeeksMonthsEntry? weeksMonths,
  WeeksMonthsEntry? weeks,
  WeeksMonthsEntry? months
});
typedef WeeksMonthsEntry = ({num low, num high});

typedef ZScoreCutOff = Map<ZScoreValue, num>;
typedef PercentileCutOff = Map<PercentileValue, num>;
