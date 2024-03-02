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

extension NullableIterableExtension<T> on Iterable<T?> {
  List<T> get removeNull =>
      (toList()..removeWhere((e) => e == null)).map((e) => e!).toList();
}

extension IterableNullableExtension<T> on Iterable<T>? {
  bool get nullOrEmpty {
    if (this == null) return true;
    if (this!.isEmpty) return true;
    return false;
  }

  bool get notNullAndNotEmpty => !nullOrEmpty;

  bool get notNullAndMoreThan1Element {
    if (this == null) return false;
    if (this!.isEmpty || this!.length == 1) return false;
    return true;
  }
}
