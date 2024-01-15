import 'package:reusable_tools/reusable_tools.dart';
import 'package:super_measurement/super_measurement.dart';

extension NumPrecision on num {
  num precision(Precision precision) => precision == Precision.none
      ? this
      : toDouble().toPrecision(precision.value);
}
