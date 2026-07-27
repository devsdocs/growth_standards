import 'dart:io';
import 'dart:typed_data';

import 'package:growth_standards/growth_standards.dart';
import 'package:growth_standards/src/visualization/renderers/png_renderer.dart';
import 'package:growth_standards/src/visualization/renderers/svg_renderer.dart';

/// Entry point for visualizing growth standard calculation results to SVG and PNG
abstract final class GrowthChartVisualizer {
  static const _svgRenderer = SvgRenderer();
  static const _pngRenderer = PngRenderer();

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

  /// Renders a single [Result] calculation into PNG image bytes
  static Uint8List toPng(Result result, {GrowthChartConfig? config}) {
    final model = GrowthChartModel.fromResults([result], config: config);
    return _pngRenderer.render(model);
  }

  /// Renders a list of [Result] calculations into PNG image bytes
  static Uint8List toPngList(
    List<Result> results, {
    GrowthChartConfig? config,
  }) {
    if (results.isEmpty) {
      throw ArgumentError('results list cannot be empty');
    }
    final model = GrowthChartModel.fromResults(results, config: config);
    return _pngRenderer.render(model);
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

  /// Saves a single [Result] calculation as a PNG file at [filePath]
  static File savePng(
    Result result,
    String filePath, {
    GrowthChartConfig? config,
  }) {
    final pngBytes = toPng(result, config: config);
    final file = File(filePath);
    file.writeAsBytesSync(pngBytes);
    return file;
  }

  /// Saves a list of [Result] calculations as a PNG file at [filePath]
  static File savePngList(
    List<Result> results,
    String filePath, {
    GrowthChartConfig? config,
  }) {
    final pngBytes = toPngList(results, config: config);
    final file = File(filePath);
    file.writeAsBytesSync(pngBytes);
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

  /// Renders a [VelocityBasedResult] calculation into PNG image bytes
  static Uint8List renderVelocityPng(
    VelocityBasedResult velocityResult, {
    GrowthChartConfig? config,
  }) {
    final model = GrowthChartModel.fromVelocityResult(
      velocityResult,
      config: config,
    );
    return _pngRenderer.render(model);
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

  /// Saves a [VelocityBasedResult] calculation as a PNG file at [filePath]
  static File saveVelocityPng(
    VelocityBasedResult velocityResult,
    String filePath, {
    GrowthChartConfig? config,
  }) {
    final pngBytes = renderVelocityPng(velocityResult, config: config);
    final file = File(filePath);
    file.writeAsBytesSync(pngBytes);
    return file;
  }
}
