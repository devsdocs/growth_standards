import 'package:growth_standards/src/visualization/growth_chart_theme.dart';

/// Specifies whether the chart displays Standard Deviation Z-Scores or Percentiles
enum GrowthChartDisplayMode { zScore, percentile }

/// Configuration options for rendering growth charts
class GrowthChartConfig {
  const GrowthChartConfig({
    this.width = 900.0,
    this.height = 650.0,
    this.title,
    this.subtitle,
    this.xLabel,
    this.yLabel,
    this.theme,
    this.displayMode = GrowthChartDisplayMode.zScore,
    this.showGridLines = true,
    this.showLegend = true,
    this.showResultCallout = true,
    this.showTrajectoryLine = true,
    this.customXMin,
    this.customXMax,
    this.customYMin,
    this.customYMax,
    this.zScoreLines = const [-3, -2, -1, 0, 1, 2, 3],
    this.percentileLines = const [3, 15, 50, 85, 97],
  });

  final double width;
  final double height;
  final String? title;
  final String? subtitle;
  final String? xLabel;
  final String? yLabel;
  final GrowthChartTheme? theme;
  final GrowthChartDisplayMode displayMode;
  final bool showGridLines;
  final bool showLegend;
  final bool showResultCallout;
  final bool showTrajectoryLine;
  final double? customXMin;
  final double? customXMax;
  final double? customYMin;
  final double? customYMax;
  final List<int> zScoreLines;
  final List<num> percentileLines;

  GrowthChartConfig copyWith({
    double? width,
    double? height,
    String? title,
    String? subtitle,
    String? xLabel,
    String? yLabel,
    GrowthChartTheme? theme,
    GrowthChartDisplayMode? displayMode,
    bool? showGridLines,
    bool? showLegend,
    bool? showResultCallout,
    bool? showTrajectoryLine,
    double? customXMin,
    double? customXMax,
    double? customYMin,
    double? customYMax,
    List<int>? zScoreLines,
    List<num>? percentileLines,
  }) {
    return GrowthChartConfig(
      width: width ?? this.width,
      height: height ?? this.height,
      title: title ?? this.title,
      subtitle: subtitle ?? this.subtitle,
      xLabel: xLabel ?? this.xLabel,
      yLabel: yLabel ?? this.yLabel,
      theme: theme ?? this.theme,
      displayMode: displayMode ?? this.displayMode,
      showGridLines: showGridLines ?? this.showGridLines,
      showLegend: showLegend ?? this.showLegend,
      showResultCallout: showResultCallout ?? this.showResultCallout,
      showTrajectoryLine: showTrajectoryLine ?? this.showTrajectoryLine,
      customXMin: customXMin ?? this.customXMin,
      customXMax: customXMax ?? this.customXMax,
      customYMin: customYMin ?? this.customYMin,
      customYMax: customYMax ?? this.customYMax,
      zScoreLines: zScoreLines ?? this.zScoreLines,
      percentileLines: percentileLines ?? this.percentileLines,
    );
  }
}
