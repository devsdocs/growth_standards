import 'dart:io';

import 'package:growth_standards/growth_standards.dart';
import 'package:growth_standards/src/visualization/renderers/svg_renderer.dart';

/// Entry point for visualizing growth standard calculation results to SVG
abstract final class GrowthChartVisualizer {
  static const _svgRenderer = SvgRenderer();

  /// Renders a single [Result] calculation into an SVG vector graphic string
  static String toSvg(Result result, {GrowthChartConfig? config}) {
    final model = GrowthChartModel.fromResults([result], config: config);
    return _svgRenderer.render(model);
  }

  /// Renders a list of [Result] calculations (growth trajectory) into an SVG string
  static String toSvgList(List<Result> results, {GrowthChartConfig? config}) {
    if (results.isEmpty) {
      throw ArgumentError('results list cannot be empty');
    }
    final model = GrowthChartModel.fromResults(results, config: config);
    return _svgRenderer.render(model);
  }

  /// Saves a single [Result] calculation as an SVG file at [filePath]
  static File saveSvg(
    Result result,
    String filePath, {
    GrowthChartConfig? config,
  }) {
    final svgStr = toSvg(result, config: config);
    final file = File(filePath);
    file.writeAsStringSync(svgStr);
    return file;
  }

  /// Saves a list of [Result] calculations as an SVG file at [filePath]
  static File saveSvgList(
    List<Result> results,
    String filePath, {
    GrowthChartConfig? config,
  }) {
    final svgStr = toSvgList(results, config: config);
    final file = File(filePath);
    file.writeAsStringSync(svgStr);
    return file;
  }

  /// Renders a [VelocityBasedResult] calculation into an SVG string
  static String renderVelocitySvg(
    VelocityBasedResult velocityResult, {
    GrowthChartConfig? config,
  }) {
    final model = GrowthChartModel.fromVelocityResult(
      velocityResult,
      config: config,
    );
    return _svgRenderer.render(model);
  }

  /// Saves a [VelocityBasedResult] calculation as an SVG file at [filePath]
  static File saveVelocitySvg(
    VelocityBasedResult velocityResult,
    String filePath, {
    GrowthChartConfig? config,
  }) {
    final svgStr = renderVelocitySvg(velocityResult, config: config);
    final file = File(filePath);
    file.writeAsStringSync(svgStr);
    return file;
  }

  /// Renders a list of [VelocityBasedResult] calculations (velocity trajectory) into an SVG string
  static String renderVelocitySvgList(
    List<VelocityBasedResult> velocityResults, {
    GrowthChartConfig? config,
  }) {
    if (velocityResults.isEmpty) {
      throw ArgumentError('velocityResults list cannot be empty');
    }
    final model = GrowthChartModel.fromVelocityResults(
      velocityResults,
      config: config,
    );
    return _svgRenderer.render(model);
  }

  /// Saves a list of [VelocityBasedResult] calculations as an SVG file at [filePath]
  static File saveVelocitySvgList(
    List<VelocityBasedResult> velocityResults,
    String filePath, {
    GrowthChartConfig? config,
  }) {
    final svgStr = renderVelocitySvgList(velocityResults, config: config);
    final file = File(filePath);
    file.writeAsStringSync(svgStr);
    return file;
  }
}
