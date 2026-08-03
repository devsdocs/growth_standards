import 'package:growth_standards/src/visualization/growth_chart_config.dart';
import 'package:growth_standards/src/visualization/growth_chart_model.dart';

/// SVG Renderer for generating standardized vector growth charts
class SvgRenderer {
  const SvgRenderer();

  /// Renders a [GrowthChartModel] into a standardized SVG XML string
  String render(GrowthChartModel model) {
    final buffer = StringBuffer();
    final cfg = model.config;
    final theme = model.theme;

    final width = cfg.width;
    final height = cfg.height;

    // Layout Margins (extra bottom row reserved for the legend when shown)
    const marginLeft = 80.0;
    const marginRight = 90.0;
    const marginTop = 100.0;
    final marginBottom = cfg.showLegend ? 96.0 : 64.0;

    final plotWidth = width - marginLeft - marginRight;
    final plotHeight = height - marginTop - marginBottom;

    // Coordinate mapping functions
    double mapX(double x) {
      if (model.xMax == model.xMin) return marginLeft + plotWidth / 2;
      return marginLeft +
          ((x - model.xMin) / (model.xMax - model.xMin)) * plotWidth;
    }

    double mapY(double y) {
      if (model.yMax == model.yMin) return marginTop + plotHeight / 2;
      return marginTop +
          plotHeight -
          ((y - model.yMin) / (model.yMax - model.yMin)) * plotHeight;
    }

    // SVG Header
    buffer.writeln('<?xml version="1.0" encoding="UTF-8"?>');
    buffer.writeln(
      '<svg xmlns="http://www.w3.org/2000/svg" viewBox="0 0 $width $height" width="$width" height="$height">',
    );

    // Styles
    buffer.writeln('''
  <style>
    .bg { fill: ${theme.backgroundColor.toSvgRgb()}; }
    .chart-bg { fill: ${theme.chartBackgroundColor.toSvgRgb()}; }
    .title { font-family: ${theme.fontFamily}; font-size: 20px; font-weight: 700; fill: ${theme.titleColor.toSvgRgb()}; }
    .subtitle { font-family: ${theme.fontFamily}; font-size: 13px; font-weight: 500; fill: ${theme.subtitleColor.toSvgRgb()}; }
    .axis-title { font-family: ${theme.fontFamily}; font-size: 13px; font-weight: 600; fill: ${theme.axisTextColor.toSvgRgb()}; }
    .tick-label { font-family: ${theme.fontFamily}; font-size: 11px; fill: ${theme.axisTextColor.toSvgRgb()}; }
    .curve-label { font-family: ${theme.fontFamily}; font-size: 11px; font-weight: 600; }
    .grid-line { stroke: ${theme.gridColor.toSvgRgb()}; stroke-width: 1; stroke-dasharray: 3,3; }
    .axis-line { stroke: ${theme.axisColor.toSvgRgb()}; stroke-width: 1.5; }
    .callout-box { fill: ${theme.calloutBgColor.toSvgRgba()}; stroke: ${theme.calloutBorderColor.toSvgRgb()}; stroke-width: 1.5; rx: 6; ry: 6; filter: drop-shadow(0px 2px 4px rgba(0,0,0,0.1)); }
    .callout-text-bold { font-family: ${theme.fontFamily}; font-size: 12px; font-weight: 700; fill: ${theme.calloutTextColor.toSvgRgb()}; }
    .callout-text { font-family: ${theme.fontFamily}; font-size: 11px; font-weight: 500; fill: ${theme.calloutTextColor.toSvgRgb()}; }
    .badge-bg { fill: ${theme.headerLightBgColor.toSvgRgb()}; rx: 12; ry: 12; }
    .badge-text { font-family: ${theme.fontFamily}; font-size: 11px; font-weight: 700; fill: ${theme.headerAccentColor.toSvgRgb()}; }
  </style>
''');

    // Background
    buffer.writeln('  <rect class="bg" width="$width" height="$height"/>');

    // Header Title & Subtitle
    buffer.writeln('  <!-- Header -->');
    buffer.writeln('  <g transform="translate($marginLeft, 35)">');
    buffer.writeln(
      '    <text class="title" x="0" y="0">${_escapeXml(model.title)}</text>',
    );
    if (model.subtitle.isNotEmpty) {
      buffer.writeln(
        '    <text class="subtitle" x="0" y="22">${_escapeXml(model.subtitle)}</text>',
      );
    }
    buffer.writeln('  </g>');

    // Chart Area Background
    buffer.writeln('  <!-- Chart Grid Area -->');
    buffer.writeln(
      '  <rect class="chart-bg" x="$marginLeft" y="$marginTop" width="$plotWidth" height="$plotHeight"/>',
    );

    // Grid Lines & Ticks
    if (cfg.showGridLines) {
      // X Grid Lines
      for (final tick in model.xTicks) {
        final px = mapX(tick.value);
        if (px >= marginLeft && px <= marginLeft + plotWidth) {
          buffer.writeln(
            '  <line class="grid-line" x1="$px" y1="$marginTop" x2="$px" y2="${marginTop + plotHeight}"/>',
          );
        }
      }
      // Y Grid Lines
      for (final tick in model.yTicks) {
        final py = mapY(tick.value);
        if (py >= marginTop && py <= marginTop + plotHeight) {
          buffer.writeln(
            '  <line class="grid-line" x1="$marginLeft" y1="$py" x2="${marginLeft + plotWidth}" y2="$py"/>',
          );
        }
      }
    }

    // Chart Border Box
    buffer.writeln(
      '  <rect class="axis-line" fill="none" x="$marginLeft" y="$marginTop" width="$plotWidth" height="$plotHeight"/>',
    );

    // X Axis Ticks & Labels (labels that would collide with the previous
    // rendered label are skipped to avoid overlapping text on dense axes)
    const tickCharWidth = 6.2;
    var lastLabelEndX = double.negativeInfinity;
    for (final tick in model.xTicks) {
      final px = mapX(tick.value);
      if (px >= marginLeft && px <= marginLeft + plotWidth) {
        buffer.writeln(
          '  <line class="axis-line" x1="$px" y1="${marginTop + plotHeight}" x2="$px" y2="${marginTop + plotHeight + 6}"/>',
        );
        final labelHalfWidth = tick.label.length * tickCharWidth / 2;
        if (px - labelHalfWidth >= lastLabelEndX + 8) {
          buffer.writeln(
            '  <text class="tick-label" x="$px" y="${marginTop + plotHeight + 20}" text-anchor="middle">${_escapeXml(tick.label)}</text>',
          );
          lastLabelEndX = px + labelHalfWidth;
        }
      }
    }
    // X Axis Title (fixed offset below tick labels, above the legend row)
    buffer.writeln(
      '  <text class="axis-title" x="${marginLeft + plotWidth / 2}" y="${marginTop + plotHeight + 44}" text-anchor="middle">${_escapeXml(model.xLabel)}</text>',
    );

    // Y Axis Ticks & Labels
    for (final tick in model.yTicks) {
      final py = mapY(tick.value);
      if (py >= marginTop && py <= marginTop + plotHeight) {
        buffer.writeln(
          '  <line class="axis-line" x1="${marginLeft - 6}" y1="$py" x2="$marginLeft" y2="$py"/>',
        );
        buffer.writeln(
          '  <text class="tick-label" x="${marginLeft - 12}" y="${py + 4}" text-anchor="end">${_escapeXml(tick.label)}</text>',
        );
      }
    }
    // Y Axis Title (Rotated)
    buffer.writeln(
      '  <text class="axis-title" x="0" y="0" transform="translate(25, ${marginTop + plotHeight / 2}) rotate(-90)" text-anchor="middle">${_escapeXml(model.yLabel)}</text>',
    );

    // Standard Curves
    buffer.writeln('  <!-- Percentile / Z-Score Curves -->');
    for (final curve in model.curves) {
      if (curve.points.isEmpty) continue;

      final strokeWidth = curve.isMedian ? 3.0 : 1.8;
      final strokeDash = curve.isDashed ? 'stroke-dasharray="6,4"' : '';
      final strokeColor = curve.color.toSvgRgb();

      final pathData = StringBuffer();
      for (int i = 0; i < curve.points.length; i++) {
        final pt = curve.points[i];
        final px = mapX(pt.x);
        final py = mapY(pt.y);

        if (i == 0) {
          pathData.write('M ${px.toStringAsFixed(1)} ${py.toStringAsFixed(1)}');
        } else {
          pathData.write(
            ' L ${px.toStringAsFixed(1)} ${py.toStringAsFixed(1)}',
          );
        }
      }

      buffer.writeln(
        '  <path d="$pathData" fill="none" stroke="$strokeColor" stroke-width="$strokeWidth" $strokeDash stroke-linecap="round" stroke-linejoin="round"/>',
      );

      // Curve Label at right end
      final lastPt = curve.points.last;
      final endPx = mapX(lastPt.x);
      final endPy = mapY(lastPt.y);
      if (endPy >= marginTop - 10 && endPy <= marginTop + plotHeight + 10) {
        buffer.writeln(
          '  <text class="curve-label" x="${endPx + 8}" y="${endPy + 4}" fill="$strokeColor">${_escapeXml(curve.label)}</text>',
        );
      }
    }

    // Trajectory line if multiple points exist
    if (cfg.showTrajectoryLine && model.observationPoints.length > 1) {
      buffer.writeln('  <!-- Observation Trajectory -->');
      final trajData = StringBuffer();
      for (int i = 0; i < model.observationPoints.length; i++) {
        final pt = model.observationPoints[i];
        final px = mapX(pt.x);
        final py = mapY(pt.y);
        if (i == 0) {
          trajData.write('M ${px.toStringAsFixed(1)} ${py.toStringAsFixed(1)}');
        } else {
          trajData.write(
            ' L ${px.toStringAsFixed(1)} ${py.toStringAsFixed(1)}',
          );
        }
      }
      final trajColor = theme.pointTrajectoryColor.toSvgRgba();
      buffer.writeln(
        '  <path d="$trajData" fill="none" stroke="$trajColor" stroke-width="2.5" stroke-dasharray="6,4"/>',
      );
    }

    // Observation Point Markers
    buffer.writeln('  <!-- Calculated Result Markers -->');
    for (int i = 0; i < model.observationPoints.length; i++) {
      final pt = model.observationPoints[i];
      final px = mapX(pt.x);
      final py = mapY(pt.y);

      final isLatest = i == model.observationPoints.length - 1;
      final rOuter = isLatest ? 8.0 : 6.0;
      final rInner = isLatest ? 3.0 : 2.0;

      buffer.writeln('  <g transform="translate($px, $py)">');
      // Outer translucent halo
      buffer.writeln(
        '    <circle r="${rOuter + 4}" fill="${theme.pointMarkerColor.toSvgRgba()}" opacity="0.25"/>',
      );
      // Outer circle border
      buffer.writeln(
        '    <circle r="$rOuter" fill="${theme.pointMarkerFill.toSvgRgb()}" stroke="${theme.pointMarkerColor.toSvgRgb()}" stroke-width="2.5"/>',
      );
      // Inner solid dot
      buffer.writeln(
        '    <circle r="$rInner" fill="${theme.pointMarkerColor.toSvgRgb()}"/>',
      );
      buffer.writeln('  </g>');
    }

    // Header Result Callout Card (positioned in header to avoid obscuring curves)
    if (cfg.showResultCallout && model.observationPoints.isNotEmpty) {
      buffer.writeln('  <!-- Header Callout Card -->');
      final lastPt = model.observationPoints.last;

      const cardW = 220.0;
      const cardH = 46.0;
      final cardX = width - marginRight - cardW;
      const cardY = 44.0;

      buffer.writeln('  <g transform="translate($cardX, $cardY)">');
      buffer.writeln(
        '    <rect class="callout-box" width="$cardW" height="$cardH"/>',
      );
      buffer.writeln(
        '    <text class="callout-text-bold" x="10" y="18">Result: ${_escapeXml(lastPt.formattedY)}</text>',
      );
      buffer.writeln(
        '    <text class="callout-text" x="10" y="34">Age/X: ${_escapeXml(lastPt.formattedX)}</text>',
      );
      final zStr =
          '${lastPt.zScore > 0 ? "+" : ""}${lastPt.zScore.toStringAsFixed(2)} SD';
      final pStr = '${lastPt.percentile.toStringAsFixed(1)}th %ile';
      buffer.writeln(
        '    <text class="callout-text-bold" x="${cardW - 10}" y="18" text-anchor="end">$zStr</text>',
      );
      buffer.writeln(
        '    <text class="callout-text" x="${cardW - 10}" y="34" text-anchor="end">$pStr</text>',
      );
      buffer.writeln('  </g>');
    }

    // Legend Row at Bottom (dynamically laid out and centered so items never
    // overlap each other or the x-axis title)
    if (cfg.showLegend) {
      buffer.writeln('  <!-- Legend -->');
      final legendY = height - 20.0;
      final isPercentile = cfg.displayMode == GrowthChartDisplayMode.percentile;

      final items = <_LegendItem>[
        _LegendItem(
          kind: _LegendSwatch.solidLine,
          color: theme.medianCurveColor.toSvgRgb(),
          strokeWidth: 3,
          label: isPercentile ? '50th (Median)' : '0 SD (Median)',
        ),
        _LegendItem(
          kind: _LegendSwatch.solidLine,
          color: theme.normalCurveColor.toSvgRgb(),
          strokeWidth: 2,
          label: isPercentile ? '15th / 85th' : '\u00B11 SD',
        ),
        _LegendItem(
          kind: _LegendSwatch.dashedLine,
          color: theme.alertCurveColor.toSvgRgb(),
          strokeWidth: 2,
          label: isPercentile ? '3rd / 97th' : '\u00B12 / \u00B13 SD',
        ),
        if (cfg.showTrajectoryLine && model.observationPoints.length > 1)
          _LegendItem(
            kind: _LegendSwatch.dashedLine,
            color: theme.pointTrajectoryColor.toSvgRgb(),
            strokeWidth: 2.5,
            label: 'Trajectory',
          ),
        const _LegendItem(
          kind: _LegendSwatch.marker,
          color: '',
          strokeWidth: 0,
          label: 'Calculated Result',
        ),
      ];

      // Approximate text width for the 11px tick-label font
      const charWidth = 6.2;
      const swatchGap = 7.0;
      const itemGap = 30.0;

      double itemWidth(_LegendItem item) =>
          item.kind.swatchWidth + swatchGap + item.label.length * charWidth;

      final totalWidth =
          items.fold<double>(0, (sum, it) => sum + itemWidth(it)) +
          itemGap * (items.length - 1);
      var cursorX = ((width - totalWidth) / 2).clamp(12.0, double.infinity);

      buffer.writeln('  <g>');
      for (final item in items) {
        final swatchMidY = legendY - 4;
        switch (item.kind) {
          case _LegendSwatch.solidLine:
            buffer.writeln(
              '    <line x1="$cursorX" y1="$swatchMidY" x2="${cursorX + item.kind.swatchWidth}" y2="$swatchMidY" stroke="${item.color}" stroke-width="${item.strokeWidth}"/>',
            );
          case _LegendSwatch.dashedLine:
            buffer.writeln(
              '    <line x1="$cursorX" y1="$swatchMidY" x2="${cursorX + item.kind.swatchWidth}" y2="$swatchMidY" stroke="${item.color}" stroke-width="${item.strokeWidth}" stroke-dasharray="4,3"/>',
            );
          case _LegendSwatch.marker:
            final cx = cursorX + item.kind.swatchWidth / 2;
            buffer.writeln(
              '    <circle cx="$cx" cy="$swatchMidY" r="5" fill="${theme.pointMarkerColor.toSvgRgba()}" opacity="0.3"/>',
            );
            buffer.writeln(
              '    <circle cx="$cx" cy="$swatchMidY" r="3" fill="${theme.pointMarkerFill.toSvgRgb()}" stroke="${theme.pointMarkerColor.toSvgRgb()}" stroke-width="1.5"/>',
            );
            buffer.writeln(
              '    <circle cx="$cx" cy="$swatchMidY" r="1.5" fill="${theme.pointMarkerColor.toSvgRgb()}"/>',
            );
        }
        buffer.writeln(
          '    <text class="tick-label" x="${cursorX + item.kind.swatchWidth + swatchGap}" y="$legendY">${_escapeXml(item.label)}</text>',
        );
        cursorX += itemWidth(item) + itemGap;
      }
      buffer.writeln('  </g>');
    }

    buffer.writeln('</svg>');
    return buffer.toString();
  }

  static String _escapeXml(String input) {
    return input
        .replaceAll('&', '&amp;')
        .replaceAll('<', '&lt;')
        .replaceAll('>', '&gt;')
        .replaceAll('"', '&quot;')
        .replaceAll("'", '&apos;');
  }
}

enum _LegendSwatch {
  solidLine(22),
  dashedLine(22),
  marker(14);

  const _LegendSwatch(this.swatchWidth);

  final double swatchWidth;
}

class _LegendItem {
  const _LegendItem({
    required this.kind,
    required this.color,
    required this.strokeWidth,
    required this.label,
  });

  final _LegendSwatch kind;
  final String color;
  final double strokeWidth;
  final String label;
}
