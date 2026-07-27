import 'dart:io';

import 'package:growth_standards/src/common/base.dart';
import 'package:growth_standards/src/common/trajectory.dart';
import 'package:growth_standards/src/visualization/growth_chart_config.dart';
import 'package:growth_standards/src/visualization/growth_chart_visualizer.dart';

/// Extension on [Result] to enable direct visualization methods
extension GrowthChartResultVisualizationExtension on Result {
  /// Render calculation result into an SVG vector graphic string
  String toSvg({GrowthChartConfig? config}) =>
      GrowthChartVisualizer.toSvg(this, config: config);

  /// Save calculation result to an SVG file
  File saveSvg(String filePath, {GrowthChartConfig? config}) =>
      GrowthChartVisualizer.saveSvg(this, filePath, config: config);
}

/// Extension on [List<Result>] for rendering multi-point growth trajectories
extension GrowthChartResultListVisualizationExtension on List<Result> {
  /// Render multiple calculation results (growth trajectory) into an SVG string
  String toSvg({GrowthChartConfig? config}) =>
      GrowthChartVisualizer.toSvgList(this, config: config);

  /// Save growth trajectory to an SVG file
  File saveSvg(String filePath, {GrowthChartConfig? config}) =>
      GrowthChartVisualizer.saveSvgList(this, filePath, config: config);
}

/// Extension on [VelocityBasedResult] for rendering growth velocity charts
extension VelocityBasedResultVisualizationExtension on VelocityBasedResult {
  /// Render growth velocity calculation into an SVG vector graphic string
  String toSvg({GrowthChartConfig? config}) =>
      GrowthChartVisualizer.renderVelocitySvg(this, config: config);

  /// Save growth velocity calculation to an SVG file
  File saveSvg(String filePath, {GrowthChartConfig? config}) =>
      GrowthChartVisualizer.saveVelocitySvg(this, filePath, config: config);
}

/// Extension on [GrowthTrajectory] for direct chart rendering
extension GrowthTrajectoryVisualizationExtension on GrowthTrajectory {
  /// Render growth trajectory into an SVG vector graphic string
  String toSvg({GrowthChartConfig? config}) => results.toSvg(config: config);

  /// Save growth trajectory to an SVG file
  File saveSvg(String filePath, {GrowthChartConfig? config}) =>
      results.saveSvg(filePath, config: config);
}
