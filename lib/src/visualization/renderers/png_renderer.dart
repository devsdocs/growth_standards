import 'dart:typed_data';

import 'package:growth_standards/src/visualization/growth_chart_model.dart';
import 'package:growth_standards/src/visualization/growth_chart_theme.dart';
import 'package:image/image.dart' as img;

/// PNG Renderer for producing high-resolution raster growth charts
class PngRenderer {
  const PngRenderer();

  /// Converts a [GrowthChartColor] to [img.ColorRgba8]
  static img.ColorRgba8 _toImgColor(GrowthChartColor color) {
    return img.ColorRgba8(color.r, color.g, color.b, (color.a * 255).round());
  }

  /// Renders a [GrowthChartModel] into PNG image bytes
  Uint8List render(GrowthChartModel model) {
    final cfg = model.config;
    final theme = model.theme;

    final width = cfg.width.toInt();
    final height = cfg.height.toInt();

    final image = img.Image(width: width, height: height, numChannels: 4);

    // Fill canvas background
    img.fill(image, color: _toImgColor(theme.backgroundColor));

    // Layout Margins
    const marginLeft = 80.0;
    const marginRight = 90.0;
    const marginTop = 100.0;
    const marginBottom = 70.0;

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

    // Header Title
    img.drawString(
      image,
      model.title,
      font: img.arial24,
      x: marginLeft.toInt(),
      y: 20,
      color: _toImgColor(theme.titleColor),
    );

    // Subtitle
    if (model.subtitle.isNotEmpty) {
      img.drawString(
        image,
        model.subtitle,
        font: img.arial14,
        x: marginLeft.toInt(),
        y: 55,
        color: _toImgColor(theme.subtitleColor),
      );
    }

    // Sex Badge (BOY / GIRL / MALE / FEMALE)
    final sexText = GrowthChartModel.getSexBadge(
      model.sex,
      model.observationPoints.isNotEmpty
          ? model.observationPoints.first.result
          : null,
    );
    final badgeX = (width - marginRight - 70).toInt();
    img.fillRect(
      image,
      x1: badgeX,
      y1: 20,
      x2: badgeX + 70,
      y2: 44,
      color: _toImgColor(theme.headerLightBgColor),
    );
    final textOffset = ((70 - sexText.length * 8) / 2).round();
    img.drawString(
      image,
      sexText,
      font: img.arial14,
      x: badgeX + textOffset,
      y: 25,
      color: _toImgColor(theme.headerAccentColor),
    );

    // Chart Grid Fill
    img.fillRect(
      image,
      x1: marginLeft.toInt(),
      y1: marginTop.toInt(),
      x2: (marginLeft + plotWidth).toInt(),
      y2: (marginTop + plotHeight).toInt(),
      color: _toImgColor(theme.chartBackgroundColor),
    );

    // Grid Lines
    if (cfg.showGridLines) {
      final gridColor = _toImgColor(theme.gridColor);
      // X grid
      for (final tick in model.xTicks) {
        final px = mapX(tick.value).toInt();
        if (px >= marginLeft && px <= marginLeft + plotWidth) {
          img.drawLine(
            image,
            x1: px,
            y1: marginTop.toInt(),
            x2: px,
            y2: (marginTop + plotHeight).toInt(),
            color: gridColor,
          );
        }
      }
      // Y grid
      for (final tick in model.yTicks) {
        final py = mapY(tick.value).toInt();
        if (py >= marginTop && py <= marginTop + plotHeight) {
          img.drawLine(
            image,
            x1: marginLeft.toInt(),
            y1: py,
            x2: (marginLeft + plotWidth).toInt(),
            y2: py,
            color: gridColor,
          );
        }
      }
    }

    // Chart Border Box
    img.drawRect(
      image,
      x1: marginLeft.toInt(),
      y1: marginTop.toInt(),
      x2: (marginLeft + plotWidth).toInt(),
      y2: (marginTop + plotHeight).toInt(),
      color: _toImgColor(theme.axisColor),
      thickness: 2,
    );

    // X Axis Ticks & Labels
    final axisTextColor = _toImgColor(theme.axisTextColor);
    for (final tick in model.xTicks) {
      final px = mapX(tick.value).toInt();
      if (px >= marginLeft && px <= marginLeft + plotWidth) {
        img.drawLine(
          image,
          x1: px,
          y1: (marginTop + plotHeight).toInt(),
          x2: px,
          y2: (marginTop + plotHeight + 6).toInt(),
          color: _toImgColor(theme.axisColor),
          thickness: 2,
        );
        img.drawString(
          image,
          tick.label,
          font: img.arial14,
          x: px - (tick.label.length * 4),
          y: (marginTop + plotHeight + 12).toInt(),
          color: axisTextColor,
        );
      }
    }

    // X Axis Title
    img.drawString(
      image,
      model.xLabel,
      font: img.arial14,
      x: (marginLeft + plotWidth / 2 - (model.xLabel.length * 4)).toInt(),
      y: height - 35,
      color: axisTextColor,
    );

    // Y Axis Ticks & Labels
    for (final tick in model.yTicks) {
      final py = mapY(tick.value).toInt();
      if (py >= marginTop && py <= marginTop + plotHeight) {
        img.drawLine(
          image,
          x1: (marginLeft - 6).toInt(),
          y1: py,
          x2: marginLeft.toInt(),
          y2: py,
          color: _toImgColor(theme.axisColor),
          thickness: 2,
        );
        img.drawString(
          image,
          tick.label,
          font: img.arial14,
          x: (marginLeft - 12 - (tick.label.length * 8)).toInt(),
          y: py - 7,
          color: axisTextColor,
        );
      }
    }

    // Y Axis Title
    img.drawString(
      image,
      model.yLabel,
      font: img.arial14,
      x: 10,
      y: 75,
      color: axisTextColor,
    );

    // Standard Curves
    for (final curve in model.curves) {
      if (curve.points.isEmpty) continue;

      final curveColor = _toImgColor(curve.color);
      final thickness = curve.isMedian ? 3 : 2;

      for (int i = 0; i < curve.points.length - 1; i++) {
        final p1 = curve.points[i];
        final p2 = curve.points[i + 1];

        img.drawLine(
          image,
          x1: mapX(p1.x).toInt(),
          y1: mapY(p1.y).toInt(),
          x2: mapX(p2.x).toInt(),
          y2: mapY(p2.y).toInt(),
          color: curveColor,
          thickness: thickness,
          antialias: true,
        );
      }

      // End Label
      final lastPt = curve.points.last;
      final endPx = mapX(lastPt.x).toInt();
      final endPy = mapY(lastPt.y).toInt();
      if (endPy >= marginTop - 10 && endPy <= marginTop + plotHeight + 10) {
        img.drawString(
          image,
          curve.label,
          font: img.arial14,
          x: endPx + 8,
          y: endPy - 7,
          color: curveColor,
        );
      }
    }

    // Trajectory Line
    if (cfg.showTrajectoryLine && model.observationPoints.length > 1) {
      final trajColor = _toImgColor(theme.pointTrajectoryColor);
      for (int i = 0; i < model.observationPoints.length - 1; i++) {
        final p1 = model.observationPoints[i];
        final p2 = model.observationPoints[i + 1];

        img.drawLine(
          image,
          x1: mapX(p1.x).toInt(),
          y1: mapY(p1.y).toInt(),
          x2: mapX(p2.x).toInt(),
          y2: mapY(p2.y).toInt(),
          color: trajColor,
          thickness: 3,
          antialias: true,
        );
      }
    }

    // Observation Point Markers
    final markerColor = _toImgColor(theme.pointMarkerColor);
    final markerFill = _toImgColor(theme.pointMarkerFill);

    for (int i = 0; i < model.observationPoints.length; i++) {
      final pt = model.observationPoints[i];
      final px = mapX(pt.x).toInt();
      final py = mapY(pt.y).toInt();

      final isLatest = i == model.observationPoints.length - 1;
      final radius = isLatest ? 8 : 6;

      img.fillCircle(
        image,
        x: px,
        y: py,
        radius: radius,
        color: markerColor,
        antialias: true,
      );
      img.fillCircle(
        image,
        x: px,
        y: py,
        radius: radius - 2,
        color: markerFill,
        antialias: true,
      );
      img.fillCircle(
        image,
        x: px,
        y: py,
        radius: 3,
        color: markerColor,
        antialias: true,
      );
    }

    // Header Result Callout Card (consistent with SVG layout)
    if (cfg.showResultCallout && model.observationPoints.isNotEmpty) {
      final lastPt = model.observationPoints.last;

      const cardW = 220;
      const cardH = 46;
      final cardX = (width - marginRight - cardW).toInt();
      const cardY = 46;

      img.fillRect(
        image,
        x1: cardX,
        y1: cardY,
        x2: cardX + cardW,
        y2: cardY + cardH,
        color: _toImgColor(theme.calloutBgColor),
      );
      img.drawRect(
        image,
        x1: cardX,
        y1: cardY,
        x2: cardX + cardW,
        y2: cardY + cardH,
        color: _toImgColor(theme.calloutBorderColor),
        thickness: 2,
      );

      final textColor = _toImgColor(theme.calloutTextColor);
      final resText = 'Result: ${lastPt.formattedY}';
      img.drawString(
        image,
        resText,
        font: img.arial14,
        x: cardX + 8,
        y: cardY + 6,
        color: textColor,
      );

      final ageText = 'Age/X: ${lastPt.formattedX}';
      img.drawString(
        image,
        ageText,
        font: img.arial14,
        x: cardX + 8,
        y: cardY + 24,
        color: textColor,
      );

      final zStr =
          '${lastPt.zScore > 0 ? "+" : ""}${lastPt.zScore.toStringAsFixed(2)} SD';
      img.drawString(
        image,
        zStr,
        font: img.arial14,
        x: cardX + cardW - 8 - zStr.length * 8,
        y: cardY + 6,
        color: textColor,
      );

      final pStr = '${lastPt.percentile.toStringAsFixed(1)}%ile';
      img.drawString(
        image,
        pStr,
        font: img.arial14,
        x: cardX + cardW - 8 - pStr.length * 8,
        y: cardY + 24,
        color: textColor,
      );
    }

    // Legend Row at Bottom
    if (cfg.showLegend) {
      final legendY = height - 18;

      // Item 1: Median Line
      img.drawLine(
        image,
        x1: 165,
        y1: legendY,
        x2: 185,
        y2: legendY,
        color: _toImgColor(theme.medianCurveColor),
        thickness: 3,
      );
      img.drawString(
        image,
        '0 SD (Median)',
        font: img.arial14,
        x: 190,
        y: legendY - 7,
        color: axisTextColor,
      );

      // Item 2: ±1 SD Line
      img.drawLine(
        image,
        x1: 295,
        y1: legendY,
        x2: 315,
        y2: legendY,
        color: _toImgColor(theme.normalCurveColor),
        thickness: 2,
      );
      img.drawString(
        image,
        '±1 SD (15th/85th)',
        font: img.arial14,
        x: 320,
        y: legendY - 7,
        color: axisTextColor,
      );

      // Item 3: ±2/±3 SD Line
      img.drawLine(
        image,
        x1: 445,
        y1: legendY,
        x2: 465,
        y2: legendY,
        color: _toImgColor(theme.alertCurveColor),
        thickness: 2,
      );
      img.drawString(
        image,
        '±2/±3 SD (3rd/97th)',
        font: img.arial14,
        x: 470,
        y: legendY - 7,
        color: axisTextColor,
      );

      // Item 4: Result Point Marker
      img.fillCircle(
        image,
        x: 610,
        y: legendY,
        radius: 5,
        color: _toImgColor(theme.pointMarkerColor),
      );
      img.fillCircle(
        image,
        x: 610,
        y: legendY,
        radius: 3,
        color: _toImgColor(theme.pointMarkerFill),
      );
      img.fillCircle(
        image,
        x: 610,
        y: legendY,
        radius: 1,
        color: _toImgColor(theme.pointMarkerColor),
      );
      img.drawString(
        image,
        'Calculated Result',
        font: img.arial14,
        x: 622,
        y: legendY - 7,
        color: axisTextColor,
      );
    }

    return img.encodePng(image);
  }
}
