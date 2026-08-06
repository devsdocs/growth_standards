// ignore_for_file: avoid_print

import 'package:growth_standards/growth_standards.dart';
import 'package:test/test.dart';

void main() {
  group('Custom SVG Text Visualization Tests', () {
    test('SVG renders with patientInfo and watermarkText', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final result = gs.weightForAge(
        sex: Sex.male,
        age: Age.byMonthsAgo(12),
        weight: Mass$Kilogram(9.5),
      );

      const customPatientInfo = 'Patient: Jane Doe | ID: 98765';
      const customWatermark = 'CONFIDENTIAL';

      const config = GrowthChartConfig(
        patientInfo: customPatientInfo,
        watermarkText: customWatermark,
      );

      final svg = result.toSvg(config: config);

      expect(svg, isNotEmpty);
      expect(svg.contains('<svg'), true);

      // Check that patient info is inserted correctly and escaped
      expect(svg.contains('Patient: Jane Doe | ID: 98765'), true);

      // Check that watermark is inserted correctly and escaped
      expect(svg.contains('CONFIDENTIAL'), true);

      // Sanity checks for element rendering
      expect(svg.contains('<!-- Watermark -->'), true);
      expect(svg.contains('opacity="0.6"'), true);

      print(
        '✓ SVG properly rendered custom patientInfo and watermarkText attributes',
      );
    });

    test('SVG safely escapes malicious XML strings in custom text', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final result = gs.weightForAge(
        sex: Sex.male,
        age: Age.byMonthsAgo(12),
        weight: Mass$Kilogram(9.5),
      );

      const maliciousText = '<script>alert("hack")</script>';

      const config = GrowthChartConfig(
        patientInfo: maliciousText,
        watermarkText: maliciousText,
      );

      final svg = result.toSvg(config: config);

      expect(svg.contains('<script>'), false);
      expect(
        svg.contains('&lt;script&gt;alert(&quot;hack&quot;)&lt;/script&gt;'),
        true,
      );

      print(
        '✓ SVG properly escapes malicious input in patientInfo and watermarkText',
      );
    });

    test('SVG excludes watermark when property is empty', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final result = gs.weightForAge(
        sex: Sex.male,
        age: Age.byMonthsAgo(12),
        weight: Mass$Kilogram(9.5),
      );

      const config = GrowthChartConfig(patientInfo: '', watermarkText: '');

      final svg = result.toSvg(config: config);

      expect(svg.contains('<!-- Watermark -->'), false);
      expect(
        svg.contains('font-size="12" font-weight="600"'),
        false,
      ); // Patient Info specific styles

      print(
        '✓ SVG cleanly omits watermark and patientInfo when empty strings are provided',
      );
    });

    test('SVG renders only patientInfo without watermarkText', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final result = gs.weightForAge(
        sex: Sex.male,
        age: Age.byMonthsAgo(12),
        weight: Mass$Kilogram(9.5),
      );

      const config = GrowthChartConfig(patientInfo: 'ID: 12345');

      final svg = result.toSvg(config: config);

      expect(svg.contains('ID: 12345'), true);
      expect(svg.contains('<!-- Watermark -->'), false);

      print('✓ SVG correctly renders patientInfo in isolation');
    });

    test('SVG renders correctly with extremely long title and patientInfo', () {
      final gs = GrowthStandard.who.fromBirthTo5Years;
      final result = gs.weightForAge(
        sex: Sex.male,
        age: Age.byMonthsAgo(12),
        weight: Mass$Kilogram(9.5),
      );

      const longTitle =
          'WHO Weight Velocity from birth to 60 months (Boy) - Extended version for testing overlapping elements';

      const config = GrowthChartConfig(
        title: longTitle,
        patientInfo: 'Patient: Alex Smith | ID: 12345-A',
      );

      final svg = result.toSvg(config: config);

      expect(svg.contains(longTitle), true);
      expect(svg.contains('Patient: Alex Smith | ID: 12345-A'), true);
      // Verify patient info is shifted up (y="-16") to prevent overlap
      expect(svg.contains('y="-16" text-anchor="end"'), true);

      print(
        '✓ SVG correctly positions patientInfo to avoid long title overlap',
      );
    });
  });
}
