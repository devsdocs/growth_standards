import 'package:growth_standards/growth_standards.dart';
import 'package:growth_standards/src/who/typedef.dart';

abstract class VelocityBasedResult {
  const VelocityBasedResult();
  Map<VelocityIncrement, Map<VelocityMonths, ZScorePercentile>>
      zScorePercentileMap([Precision precision = Precision.ten]);
}
