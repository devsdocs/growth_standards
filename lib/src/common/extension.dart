import 'package:growth_standards/src/common/model/age.dart';
import 'package:reusable_tools/reusable_tools.dart';
import 'package:super_measurement/super_measurement.dart';

extension NumPrecision on num {
  num precision(Precision precision) => precision == Precision.none
      ? this
      : toDouble().toPrecision(precision.value);
}

extension DateTimeToDate on DateTime {
  Date get toDate => Date.fromDateTime(this);
}

extension IterableExtension<T> on Iterable<T> {
  bool containsAnyOf(Iterable<T> iter) => any((e) => iter.any((x) => e == x));
}
