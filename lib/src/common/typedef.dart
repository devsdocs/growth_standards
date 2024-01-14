import 'package:growth_standards/src/common/types.dart';

typedef LMS = ({num l, num m, num s});

typedef ZScorePercentile = ({num zScore, num percentile});
typedef VelocityMonths = ({int low, int high});

typedef ZScoreCutOff = Map<ZScoreValue, num>;
typedef PercentileCutOff = Map<PercentileValue, num>;
