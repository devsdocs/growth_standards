import 'ordinal_parser.dart';

void main() {
  // Parse ordinal numbers to integers
  try {
    print('1st -> ${OrdinalParser.parse('1st')}'); // 1
    print('2nd -> ${OrdinalParser.parse('2nd')}'); // 2
    print('3rd -> ${OrdinalParser.parse('3rd')}'); // 3
    print('4th -> ${OrdinalParser.parse('4th')}'); // 4
    print('11th -> ${OrdinalParser.parse('11th')}'); // 11
    print('21st -> ${OrdinalParser.parse('21st')}'); // 21
    print('22nd -> ${OrdinalParser.parse('22nd')}'); // 22
    print('23rd -> ${OrdinalParser.parse('23rd')}'); // 23
    print('101st -> ${OrdinalParser.parse('101st')}'); // 101

    // This will throw an exception
    // print('2rd -> ${OrdinalParser.parse('2rd')}');
  } catch (e) {
    print('Error: $e');
  }

  // Convert integers to ordinal strings
  for (int i = 1; i <= 25; i++) {
    print('$i -> ${OrdinalParser.toOrdinal(i)}');
  }
}
