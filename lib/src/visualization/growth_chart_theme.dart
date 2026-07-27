import 'package:growth_standards/src/common/types.dart';

/// Representation of color for growth chart styling
class GrowthChartColor {
  const GrowthChartColor(this.r, this.g, this.b, [this.a = 1.0]);

  factory GrowthChartColor.fromHex(String hex, [double a = 1.0]) {
    final clean = hex.replaceAll('#', '');
    if (clean.length == 6) {
      final r = int.parse(clean.substring(0, 2), radix: 16);
      final g = int.parse(clean.substring(2, 4), radix: 16);
      final b = int.parse(clean.substring(4, 6), radix: 16);
      return GrowthChartColor(r, g, b, a);
    } else if (clean.length == 8) {
      final aVal = int.parse(clean.substring(0, 2), radix: 16) / 255.0;
      final r = int.parse(clean.substring(2, 4), radix: 16);
      final g = int.parse(clean.substring(4, 6), radix: 16);
      final b = int.parse(clean.substring(6, 8), radix: 16);
      return GrowthChartColor(r, g, b, aVal);
    }
    return GrowthChartColor(0, 0, 0, a);
  }

  final int r;
  final int g;
  final int b;
  final double a;

  String toSvgRgb() => 'rgb($r, $g, $b)';
  String toSvgRgba() => 'rgba($r, $g, $b, ${a.toStringAsFixed(2)})';

  String toHex() {
    final rHex = r.toRadixString(16).padLeft(2, '0');
    final gHex = g.toRadixString(16).padLeft(2, '0');
    final bHex = b.toRadixString(16).padLeft(2, '0');
    return '#$rHex$gHex$bHex';
  }

  /// Preset standard colors
  static const white = GrowthChartColor(255, 255, 255);
  static const black = GrowthChartColor(0, 0, 0);
  static const transparent = GrowthChartColor(0, 0, 0, 0.0);
  static const lightGray = GrowthChartColor(245, 247, 250);
  static const borderGray = GrowthChartColor(220, 224, 230);
  static const gridGray = GrowthChartColor(230, 235, 240);
  static const textDark = GrowthChartColor(33, 37, 41);
  static const textMuted = GrowthChartColor(108, 117, 125);

  /// Curve colors
  static const sd3Red = GrowthChartColor(211, 47, 47); // #D32F2F
  static const sd2Orange = GrowthChartColor(245, 124, 0); // #F57C00
  static const sd1YellowGreen = GrowthChartColor(124, 179, 66); // #7CB342
  static const sd0MedianGreen = GrowthChartColor(46, 125, 50); // #2E7D32
}

/// Theme configuration for growth chart rendering
class GrowthChartTheme {
  const GrowthChartTheme({
    required this.backgroundColor,
    required this.chartBackgroundColor,
    required this.headerAccentColor,
    required this.headerLightBgColor,
    required this.titleColor,
    required this.subtitleColor,
    required this.gridColor,
    required this.axisColor,
    required this.axisTextColor,
    required this.medianCurveColor,
    required this.normalCurveColor,
    required this.warningCurveColor,
    required this.alertCurveColor,
    required this.pointMarkerColor,
    required this.pointMarkerFill,
    required this.pointTrajectoryColor,
    required this.calloutBgColor,
    required this.calloutBorderColor,
    required this.calloutTextColor,
    this.fontFamily = 'system-ui, -apple-system, sans-serif',
  });

  /// Preset theme for male (boys) pediatric growth charts
  factory GrowthChartTheme.boy() => const GrowthChartTheme(
    backgroundColor: GrowthChartColor.white,
    chartBackgroundColor: GrowthChartColor(250, 252, 255),
    headerAccentColor: GrowthChartColor(25, 118, 210), // #1976D2
    headerLightBgColor: GrowthChartColor(227, 242, 253), // #E3F2FD
    titleColor: GrowthChartColor(13, 71, 161), // #0D47A1
    subtitleColor: GrowthChartColor(21, 101, 192), // #1565C0
    gridColor: GrowthChartColor(225, 235, 245),
    axisColor: GrowthChartColor(144, 164, 174),
    axisTextColor: GrowthChartColor(55, 71, 79),
    medianCurveColor: GrowthChartColor.sd0MedianGreen,
    normalCurveColor: GrowthChartColor.sd1YellowGreen,
    warningCurveColor: GrowthChartColor.sd2Orange,
    alertCurveColor: GrowthChartColor.sd3Red,
    pointMarkerColor: GrowthChartColor(2, 136, 209), // #0288D1
    pointMarkerFill: GrowthChartColor.white,
    pointTrajectoryColor: GrowthChartColor(2, 136, 209, 0.8),
    calloutBgColor: GrowthChartColor.white,
    calloutBorderColor: GrowthChartColor(2, 136, 209),
    calloutTextColor: GrowthChartColor.textDark,
  );

  /// Preset theme for female (girls) pediatric growth charts
  factory GrowthChartTheme.girl() => const GrowthChartTheme(
    backgroundColor: GrowthChartColor.white,
    chartBackgroundColor: GrowthChartColor(255, 250, 252),
    headerAccentColor: GrowthChartColor(194, 24, 91), // #C2185B
    headerLightBgColor: GrowthChartColor(252, 228, 236), // #FCE4EC
    titleColor: GrowthChartColor(136, 14, 79), // #880E4F
    subtitleColor: GrowthChartColor(173, 20, 87), // #AD1457
    gridColor: GrowthChartColor(245, 225, 235),
    axisColor: GrowthChartColor(176, 144, 164),
    axisTextColor: GrowthChartColor(79, 55, 71),
    medianCurveColor: GrowthChartColor.sd0MedianGreen,
    normalCurveColor: GrowthChartColor.sd1YellowGreen,
    warningCurveColor: GrowthChartColor.sd2Orange,
    alertCurveColor: GrowthChartColor.sd3Red,
    pointMarkerColor: GrowthChartColor(216, 27, 96), // #D81B60
    pointMarkerFill: GrowthChartColor.white,
    pointTrajectoryColor: GrowthChartColor(216, 27, 96, 0.8),
    calloutBgColor: GrowthChartColor.white,
    calloutBorderColor: GrowthChartColor(216, 27, 96),
    calloutTextColor: GrowthChartColor.textDark,
  );

  /// Preset neutral theme
  factory GrowthChartTheme.neutral() => const GrowthChartTheme(
    backgroundColor: GrowthChartColor.white,
    chartBackgroundColor: GrowthChartColor(250, 250, 250),
    headerAccentColor: GrowthChartColor(55, 71, 79), // #37474F
    headerLightBgColor: GrowthChartColor(236, 239, 241), // #ECEFF1
    titleColor: GrowthChartColor(38, 50, 56), // #263238
    subtitleColor: GrowthChartColor(69, 90, 100), // #455A64
    gridColor: GrowthChartColor.gridGray,
    axisColor: GrowthChartColor(176, 190, 197),
    axisTextColor: GrowthChartColor(55, 71, 79),
    medianCurveColor: GrowthChartColor.sd0MedianGreen,
    normalCurveColor: GrowthChartColor.sd1YellowGreen,
    warningCurveColor: GrowthChartColor.sd2Orange,
    alertCurveColor: GrowthChartColor.sd3Red,
    pointMarkerColor: GrowthChartColor(0, 137, 123), // #00897B
    pointMarkerFill: GrowthChartColor.white,
    pointTrajectoryColor: GrowthChartColor(0, 137, 123, 0.8),
    calloutBgColor: GrowthChartColor.white,
    calloutBorderColor: GrowthChartColor(0, 137, 123),
    calloutTextColor: GrowthChartColor.textDark,
  );

  /// Helper to get theme for given sex
  factory GrowthChartTheme.forSex(Sex? sex) {
    if (sex == Sex.male) return GrowthChartTheme.boy();
    if (sex == Sex.female) return GrowthChartTheme.girl();
    return GrowthChartTheme.neutral();
  }

  final GrowthChartColor backgroundColor;
  final GrowthChartColor chartBackgroundColor;
  final GrowthChartColor headerAccentColor;
  final GrowthChartColor headerLightBgColor;
  final GrowthChartColor titleColor;
  final GrowthChartColor subtitleColor;
  final GrowthChartColor gridColor;
  final GrowthChartColor axisColor;
  final GrowthChartColor axisTextColor;
  final GrowthChartColor medianCurveColor;
  final GrowthChartColor normalCurveColor;
  final GrowthChartColor warningCurveColor;
  final GrowthChartColor alertCurveColor;
  final GrowthChartColor pointMarkerColor;
  final GrowthChartColor pointMarkerFill;
  final GrowthChartColor pointTrajectoryColor;
  final GrowthChartColor calloutBgColor;
  final GrowthChartColor calloutBorderColor;
  final GrowthChartColor calloutTextColor;
  final String fontFamily;
}
