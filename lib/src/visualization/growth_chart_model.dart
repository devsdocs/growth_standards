import 'dart:math';

import 'package:growth_standards/growth_standards.dart';

/// A tick mark on an axis
class ChartTick {
  const ChartTick({required this.value, required this.label});
  final double value;
  final String label;
}

/// A 2D point on the chart (in data coordinates)
class ChartPoint {
  const ChartPoint(this.x, this.y);
  final double x;
  final double y;
}

/// A curve (e.g., SD line or Percentile line) containing data points
class ChartCurve {
  const ChartCurve({
    required this.id,
    required this.label,
    required this.value,
    required this.color,
    required this.points,
    this.isMedian = false,
    this.isDashed = false,
  });

  final String id;
  final String label;
  final num value; // Z-score or Percentile value
  final GrowthChartColor color;
  final List<ChartPoint> points;
  final bool isMedian;
  final bool isDashed;
}

/// Represents a user observation point on the chart
class ChartDataPoint {
  const ChartDataPoint({
    required this.x,
    required this.y,
    required this.zScore,
    required this.percentile,
    required this.formattedX,
    required this.formattedY,
    required this.result,
  });

  final double x;
  final double y;
  final double zScore;
  final double percentile;
  final String formattedX;
  final String formattedY;
  final Result result;
}

/// Consolidated layout and dataset model for rendering growth charts
class GrowthChartModel {
  GrowthChartModel._({
    required this.sex,
    required this.title,
    required this.subtitle,
    required this.xLabel,
    required this.yLabel,
    required this.theme,
    required this.config,
    required this.xMin,
    required this.xMax,
    required this.yMin,
    required this.yMax,
    required this.xTicks,
    required this.yTicks,
    required this.curves,
    required this.observationPoints,
  });

  /// Creates a [GrowthChartModel] from a list of calculation results and config
  factory GrowthChartModel.fromResults(
    List<Result> results, {
    GrowthChartConfig? config,
  }) {
    final cfg = config ?? const GrowthChartConfig();
    final firstResult = results.first;

    // Extract sex
    final sex = firstResult.sex ?? Sex.male;

    final theme = cfg.theme ?? GrowthChartTheme.forSex(sex);
    final contextData = firstResult.contextData;

    // Determine indicator title and axis labels
    final indicatorInfo = _getIndicatorInfo(firstResult, sex);
    final title = cfg.title ?? indicatorInfo.title;
    final xLabel = cfg.xLabel ?? indicatorInfo.xLabel;
    final yLabel = cfg.yLabel ?? indicatorInfo.yLabel;

    // Extract observation points
    final obsPoints = <ChartDataPoint>[];
    for (final r in results) {
      final xVal = _extractXValue(r);
      final yVal = r.measurementResultInDefaultUnit.toDouble();
      final z = r.zScore().toDouble();
      final p = r.percentile().toDouble();

      final formattedX = _formatXValue(r, xVal);
      final formattedY = _formatYValue(r, yVal);

      obsPoints.add(
        ChartDataPoint(
          x: xVal,
          y: yVal,
          zScore: z,
          percentile: p,
          formattedX: formattedX,
          formattedY: formattedY,
          result: r,
        ),
      );
    }

    // Subtitle summary
    final subtitle =
        cfg.subtitle ??
        (obsPoints.isNotEmpty
            ? 'Value: ${obsPoints.last.formattedY} at ${obsPoints.last.formattedX} | Z-Score: ${obsPoints.last.zScore > 0 ? "+" : ""}${obsPoints.last.zScore.toStringAsFixed(2)} SD | Percentile: ${obsPoints.last.percentile.toStringAsFixed(1)}%'
            : '');

    // Dataset Map for curves
    final sexData = contextData.data[sex] ?? contextData.data.values.first;
    final sortedXKeys = sexData.keys.map((k) => k.toDouble()).toList()..sort();

    final dataXMin = sortedXKeys.first;
    final dataXMax = sortedXKeys.last;

    double xMin = cfg.customXMin ?? dataXMin;
    double xMax = cfg.customXMax ?? dataXMax;

    // Expand X range if user points exceed bounds
    for (final pt in obsPoints) {
      if (pt.x < xMin) xMin = pt.x;
      if (pt.x > xMax) xMax = pt.x;
    }

    // Compute curve points
    final curves = <ChartCurve>[];
    if (cfg.displayMode == GrowthChartDisplayMode.zScore) {
      for (final sd in cfg.zScoreLines) {
        final pts = <ChartPoint>[];
        for (final k in sortedXKeys) {
          if (k >= xMin && k <= xMax) {
            final lmsCtx = sexData[k] ?? sexData[k.toInt()];
            if (lmsCtx != null) {
              final yVal = lmsCtx.lms.standardDeviation(sd).toDouble();
              pts.add(ChartPoint(k, yVal));
            }
          }
        }
        GrowthChartColor c;
        if (sd == 0) {
          c = theme.medianCurveColor;
        } else if (sd.abs() == 1) {
          c = theme.normalCurveColor;
        } else if (sd.abs() == 2) {
          c = theme.warningCurveColor;
        } else {
          c = theme.alertCurveColor;
        }
        curves.add(
          ChartCurve(
            id: 'SD $sd',
            label: sd == 0 ? '0 (Median)' : '${sd > 0 ? "+" : ""}$sd SD',
            value: sd,
            color: c,
            points: pts,
            isMedian: sd == 0,
            isDashed: sd.abs() == 3,
          ),
        );
      }
    } else {
      // Percentile mode
      for (final p in cfg.percentileLines) {
        final pts = <ChartPoint>[];
        final zForP = qnorm(p / 100);
        for (final k in sortedXKeys) {
          if (k >= xMin && k <= xMax) {
            final lmsCtx = sexData[k] ?? sexData[k.toInt()];
            if (lmsCtx != null) {
              final yVal = lmsCtx.lms.standardDeviation(zForP).toDouble();
              pts.add(ChartPoint(k, yVal));
            }
          }
        }
        GrowthChartColor c;
        if (p == 50) {
          c = theme.medianCurveColor;
        } else if (p == 15 || p == 85) {
          c = theme.normalCurveColor;
        } else if (p == 5 || p == 95) {
          c = theme.warningCurveColor;
        } else {
          c = theme.alertCurveColor;
        }
        curves.add(
          ChartCurve(
            id: 'P$p',
            label: '${p}th',
            value: p,
            color: c,
            points: pts,
            isMedian: p == 50,
            isDashed: p == 3 || p == 97,
          ),
        );
      }
    }

    // Determine Y bounds across all curve points and observation points
    double minY = double.infinity;
    double maxY = double.negativeInfinity;

    for (final c in curves) {
      for (final pt in c.points) {
        if (pt.y < minY) minY = pt.y;
        if (pt.y > maxY) maxY = pt.y;
      }
    }
    for (final pt in obsPoints) {
      if (pt.y < minY) minY = pt.y;
      if (pt.y > maxY) maxY = pt.y;
    }

    final yPadding = (maxY - minY) * 0.08;
    double yMin = cfg.customYMin ?? (minY - yPadding);
    final double yMax = cfg.customYMax ?? (maxY + yPadding);
    if (yMin < 0 && minY >= 0) yMin = 0; // Keep 0 floor if non-negative

    // Generate ticks
    final xTicks = _generateXTicks(firstResult, xMin, xMax);
    final yTicks = _generateYTicks(yMin, yMax);

    return GrowthChartModel._(
      sex: sex,
      title: title,
      subtitle: subtitle,
      xLabel: xLabel,
      yLabel: yLabel,
      theme: theme,
      config: cfg,
      xMin: xMin,
      xMax: xMax,
      yMin: yMin,
      yMax: yMax,
      xTicks: xTicks,
      yTicks: yTicks,
      curves: curves,
      observationPoints: obsPoints,
    );
  }

  /// Factory constructor to build a [GrowthChartModel] for growth velocity calculations
  factory GrowthChartModel.fromVelocityResult(
    VelocityBasedResult velocityResult, {
    GrowthChartConfig? config,
  }) {
    final cfg = config ?? const GrowthChartConfig();

    final typeStr = velocityResult.runtimeType.toString();
    final isWeight = typeStr.contains('Weight');
    final unitLabel = isWeight ? 'kg' : 'cm';

    Sex sex = Sex.male;
    if (velocityResult is WHOGrowthStandardsWeightVelocityForAge) {
      sex = velocityResult.sex;
    } else if (velocityResult is WHOGrowthStandardsLengthVelocityForAge) {
      sex = velocityResult.sex;
    } else if (velocityResult
        is WHOGrowthStandardsHeadCircumferenceVelocityForAge) {
      sex = velocityResult.sex;
    }

    final theme = cfg.theme ?? GrowthChartTheme.forSex(sex);
    final sexTitle = getSexTitleStr(sex);

    Map<VelocityIncrement, Map<VelocityMonths, dynamic>>? velocityData;
    if (velocityResult is WHOGrowthStandardsWeightVelocityForAge) {
      velocityData = velocityResult.contextData.data[sex];
    } else if (velocityResult is WHOGrowthStandardsLengthVelocityForAge) {
      velocityData = velocityResult.contextData.data[sex];
    } else if (velocityResult
        is WHOGrowthStandardsHeadCircumferenceVelocityForAge) {
      velocityData = velocityResult.contextData.data[sex];
    }

    final zpMap = velocityResult.zScorePercentileMap();

    VelocityIncrement activeIncrement = VelocityIncrement.$2;
    if (zpMap.isNotEmpty) {
      activeIncrement = zpMap.keys.first;
    } else if (velocityData != null && velocityData.isNotEmpty) {
      activeIncrement = velocityData.keys.first;
    }

    final incMonthsMap =
        (velocityData != null && velocityData.containsKey(activeIncrement))
        ? velocityData[activeIncrement]!
        : <VelocityMonths, dynamic>{};

    final incName = _formatVelocityIncrementName(activeIncrement);
    final title =
        cfg.title ??
        'WHO ${_humanizeClassName(typeStr)} ($incName) — $sexTitle';
    final xLabel = cfg.xLabel ?? 'Age Interval (months)';
    final yLabel = cfg.yLabel ?? 'Velocity Gain ($unitLabel)';

    final sortedIntervals = incMonthsMap.keys.toList();
    final xTicks = <ChartTick>[];
    final curvesMap = <num, List<ChartPoint>>{};

    final sdLines = cfg.displayMode == GrowthChartDisplayMode.zScore
        ? cfg.zScoreLines
        : cfg.percentileLines;

    for (final sd in sdLines) {
      curvesMap[sd] = [];
    }

    for (final vm in sortedIntervals) {
      final midX = (vm.low + vm.high) / 2.0;
      final label = '${vm.low}–${vm.high}m';
      xTicks.add(ChartTick(value: midX, label: label));

      final lmsHolder = incMonthsMap[vm];
      if (lmsHolder != null) {
        final lms = (lmsHolder as LMSContext).lms;
        for (final val in sdLines) {
          double rawY = 0.0;
          if (cfg.displayMode == GrowthChartDisplayMode.zScore) {
            rawY = lms.standardDeviation(val).toDouble();
          } else {
            rawY = lms.standardDeviation(qnorm(val / 100)).toDouble();
          }
          final yVal = isWeight ? rawY / 1000.0 : rawY;
          curvesMap[val]?.add(ChartPoint(midX, yVal));
        }
      }
    }

    final obsPoints = <ChartDataPoint>[];
    final measuredMap = zpMap[activeIncrement];
    if (measuredMap != null) {
      measuredMap.forEach((vm, zp) {
        final midX = (vm.low + vm.high) / 2.0;
        final lmsHolder = incMonthsMap[vm];
        double yVal = 0.0;
        if (lmsHolder != null) {
          final lms = (lmsHolder as LMSContext).lms;
          final rawY = lms.standardDeviation(zp.zScore).toDouble();
          yVal = isWeight ? rawY / 1000.0 : rawY;
        }

        final formattedX = '${vm.low}–${vm.high} mo';
        final formattedY = '${yVal.toStringAsFixed(2)} $unitLabel';

        obsPoints.add(
          ChartDataPoint(
            x: midX,
            y: yVal,
            zScore: zp.zScore.toDouble(),
            percentile: zp.percentile.toDouble(),
            formattedX: formattedX,
            formattedY: formattedY,
            result: DummyVelocityResult(sex),
          ),
        );
      });
    }

    final subtitle =
        cfg.subtitle ??
        (obsPoints.isNotEmpty
            ? 'Gain: ${obsPoints.last.formattedY} | Z: ${obsPoints.last.zScore > 0 ? "+" : ""}${obsPoints.last.zScore.toStringAsFixed(2)} SD (${obsPoints.last.percentile.toStringAsFixed(1)}%ile)'
            : 'Velocity Standards');

    final curves = <ChartCurve>[];
    if (cfg.displayMode == GrowthChartDisplayMode.zScore) {
      for (final sd in cfg.zScoreLines) {
        final pts = curvesMap[sd] ?? [];
        final isMedian = sd == 0;
        final color = isMedian
            ? theme.medianCurveColor
            : (sd.abs() == 1
                  ? theme.normalCurveColor
                  : (sd.abs() == 2
                        ? theme.warningCurveColor
                        : theme.alertCurveColor));
        final label = sd == 0 ? '0 SD' : '${sd > 0 ? "+" : ""}$sd SD';
        curves.add(
          ChartCurve(
            id: 'sd_$sd',
            label: label,
            value: sd,
            color: color,
            points: pts,
            isMedian: isMedian,
            isDashed: sd.abs() >= 2,
          ),
        );
      }
    } else {
      for (final p in cfg.percentileLines) {
        final pts = curvesMap[p] ?? [];
        final isMedian = p == 50;
        final color = isMedian
            ? theme.medianCurveColor
            : ((p == 15 || p == 85)
                  ? theme.normalCurveColor
                  : ((p == 3 || p == 97)
                        ? theme.alertCurveColor
                        : theme.warningCurveColor));
        curves.add(
          ChartCurve(
            id: 'p_$p',
            label: '$p%',
            value: p,
            color: color,
            points: pts,
            isMedian: isMedian,
            isDashed: p != 50,
          ),
        );
      }
    }

    double minY = double.infinity;
    double maxY = double.negativeInfinity;

    for (final c in curves) {
      for (final pt in c.points) {
        if (pt.y < minY) minY = pt.y;
        if (pt.y > maxY) maxY = pt.y;
      }
    }
    for (final pt in obsPoints) {
      if (pt.y < minY) minY = pt.y;
      if (pt.y > maxY) maxY = pt.y;
    }

    if (minY == double.infinity) {
      minY = 0.0;
      maxY = 1.0;
    }

    final yPadding = (maxY - minY) * 0.08;
    double yMin = cfg.customYMin ?? (minY - yPadding);
    final double yMax = cfg.customYMax ?? (maxY + yPadding);
    if (yMin < 0 && minY >= 0) yMin = 0;

    double xMin = sortedIntervals.isNotEmpty
        ? (sortedIntervals.first.low + sortedIntervals.first.high) / 2.0 - 1.0
        : 0.0;
    final double xMax = sortedIntervals.isNotEmpty
        ? (sortedIntervals.last.low + sortedIntervals.last.high) / 2.0 + 1.0
        : 12.0;

    if (xMin < 0) xMin = 0;

    final yTicks = _generateYTicks(yMin, yMax);

    return GrowthChartModel._(
      sex: sex,
      title: title,
      subtitle: subtitle,
      xLabel: xLabel,
      yLabel: yLabel,
      theme: theme,
      config: cfg,
      xMin: xMin,
      xMax: xMax,
      yMin: yMin,
      yMax: yMax,
      xTicks: xTicks,
      yTicks: yTicks,
      curves: curves,
      observationPoints: obsPoints,
    );
  }

  /// Factory constructor to build a [GrowthChartModel] for velocity trajectory calculations
  factory GrowthChartModel.fromVelocityResults(
    List<VelocityBasedResult> velocityResults, {
    GrowthChartConfig? config,
  }) {
    if (velocityResults.isEmpty) {
      throw ArgumentError('velocityResults list cannot be empty');
    }

    final cfg = config ?? const GrowthChartConfig();
    final firstResult = velocityResults.first;

    final typeStr = firstResult.runtimeType.toString();
    final isWeight = typeStr.contains('Weight');
    final unitLabel = isWeight ? 'kg' : 'cm';

    Sex sex = Sex.male;
    if (firstResult is WHOGrowthStandardsWeightVelocityForAge) {
      sex = firstResult.sex;
    } else if (firstResult is WHOGrowthStandardsLengthVelocityForAge) {
      sex = firstResult.sex;
    } else if (firstResult
        is WHOGrowthStandardsHeadCircumferenceVelocityForAge) {
      sex = firstResult.sex;
    }

    final theme = cfg.theme ?? GrowthChartTheme.forSex(sex);
    final sexTitle = getSexTitleStr(sex);

    Map<VelocityIncrement, Map<VelocityMonths, dynamic>>? velocityData;
    if (firstResult is WHOGrowthStandardsWeightVelocityForAge) {
      velocityData = firstResult.contextData.data[sex];
    } else if (firstResult is WHOGrowthStandardsLengthVelocityForAge) {
      velocityData = firstResult.contextData.data[sex];
    } else if (firstResult
        is WHOGrowthStandardsHeadCircumferenceVelocityForAge) {
      velocityData = firstResult.contextData.data[sex];
    }

    // Determine the active increment from the first result
    final firstZpMap = firstResult.zScorePercentileMap();
    VelocityIncrement activeIncrement = VelocityIncrement.$2;
    if (firstZpMap.isNotEmpty) {
      activeIncrement = firstZpMap.keys.first;
    } else if (velocityData != null && velocityData.isNotEmpty) {
      activeIncrement = velocityData.keys.first;
    }

    final incMonthsMap =
        (velocityData != null && velocityData.containsKey(activeIncrement))
        ? velocityData[activeIncrement]!
        : <VelocityMonths, dynamic>{};

    final incName = _formatVelocityIncrementName(activeIncrement);
    final title =
        cfg.title ??
        'WHO ${_humanizeClassName(typeStr)} Trajectory ($incName) — $sexTitle';
    final xLabel = cfg.xLabel ?? 'Age Interval (months)';
    final yLabel = cfg.yLabel ?? 'Velocity Gain ($unitLabel)';

    final sortedIntervals = incMonthsMap.keys.toList();
    final xTicks = <ChartTick>[];
    final curvesMap = <num, List<ChartPoint>>{};

    final sdLines = cfg.displayMode == GrowthChartDisplayMode.zScore
        ? cfg.zScoreLines
        : cfg.percentileLines;

    for (final sd in sdLines) {
      curvesMap[sd] = [];
    }

    // Generate standard curves
    for (final vm in sortedIntervals) {
      final midX = (vm.low + vm.high) / 2.0;
      final label = '${vm.low}–${vm.high}m';
      xTicks.add(ChartTick(value: midX, label: label));

      final lmsHolder = incMonthsMap[vm];
      if (lmsHolder != null) {
        final lms = (lmsHolder as LMSContext).lms;
        for (final val in sdLines) {
          double rawY = 0.0;
          if (cfg.displayMode == GrowthChartDisplayMode.zScore) {
            rawY = lms.standardDeviation(val).toDouble();
          } else {
            rawY = lms.standardDeviation(qnorm(val / 100)).toDouble();
          }
          final yVal = isWeight ? rawY / 1000.0 : rawY;
          curvesMap[val]?.add(ChartPoint(midX, yVal));
        }
      }
    }

    // Extract observation points from all velocity results
    final obsPoints = <ChartDataPoint>[];
    for (final velocityResult in velocityResults) {
      final zpMap = velocityResult.zScorePercentileMap();
      final measuredMap = zpMap[activeIncrement];
      
      if (measuredMap != null) {
        measuredMap.forEach((vm, zp) {
          final midX = (vm.low + vm.high) / 2.0;
          final lmsHolder = incMonthsMap[vm];
          double yVal = 0.0;
          if (lmsHolder != null) {
            final lms = (lmsHolder as LMSContext).lms;
            final rawY = lms.standardDeviation(zp.zScore).toDouble();
            yVal = isWeight ? rawY / 1000.0 : rawY;
          }

          final formattedX = '${vm.low}–${vm.high} mo';
          final formattedY = '${yVal.toStringAsFixed(2)} $unitLabel';

          obsPoints.add(
            ChartDataPoint(
              x: midX,
              y: yVal,
              zScore: zp.zScore.toDouble(),
              percentile: zp.percentile.toDouble(),
              formattedX: formattedX,
              formattedY: formattedY,
              result: DummyVelocityResult(sex),
            ),
          );
        });
      }
    }

    // Sort observation points by x value for proper trajectory display
    obsPoints.sort((a, b) => a.x.compareTo(b.x));

    final subtitle =
        cfg.subtitle ??
        (obsPoints.isNotEmpty
            ? '${obsPoints.length} measurements | Latest: ${obsPoints.last.formattedY} | Z: ${obsPoints.last.zScore > 0 ? "+" : ""}${obsPoints.last.zScore.toStringAsFixed(2)} SD (${obsPoints.last.percentile.toStringAsFixed(1)}%ile)'
            : 'Velocity Standards');

    final curves = <ChartCurve>[];
    if (cfg.displayMode == GrowthChartDisplayMode.zScore) {
      for (final sd in cfg.zScoreLines) {
        final pts = curvesMap[sd] ?? [];
        final isMedian = sd == 0;
        final color = isMedian
            ? theme.medianCurveColor
            : (sd.abs() == 1
                  ? theme.normalCurveColor
                  : (sd.abs() == 2
                        ? theme.warningCurveColor
                        : theme.alertCurveColor));
        final label = sd == 0 ? '0 SD' : '${sd > 0 ? "+" : ""}$sd SD';
        curves.add(
          ChartCurve(
            id: 'sd_$sd',
            label: label,
            value: sd,
            color: color,
            points: pts,
            isMedian: isMedian,
            isDashed: sd.abs() >= 2,
          ),
        );
      }
    } else {
      for (final p in cfg.percentileLines) {
        final pts = curvesMap[p] ?? [];
        final isMedian = p == 50;
        final color = isMedian
            ? theme.medianCurveColor
            : ((p == 15 || p == 85)
                  ? theme.normalCurveColor
                  : ((p == 3 || p == 97)
                        ? theme.alertCurveColor
                        : theme.warningCurveColor));
        curves.add(
          ChartCurve(
            id: 'p_$p',
            label: '$p%',
            value: p,
            color: color,
            points: pts,
            isMedian: isMedian,
            isDashed: p != 50,
          ),
        );
      }
    }

    double minY = double.infinity;
    double maxY = double.negativeInfinity;

    for (final c in curves) {
      for (final pt in c.points) {
        if (pt.y < minY) minY = pt.y;
        if (pt.y > maxY) maxY = pt.y;
      }
    }
    for (final pt in obsPoints) {
      if (pt.y < minY) minY = pt.y;
      if (pt.y > maxY) maxY = pt.y;
    }

    if (minY == double.infinity) {
      minY = 0.0;
      maxY = 1.0;
    }

    final yPadding = (maxY - minY) * 0.08;
    double yMin = cfg.customYMin ?? (minY - yPadding);
    final double yMax = cfg.customYMax ?? (maxY + yPadding);
    if (yMin < 0 && minY >= 0) yMin = 0;

    double xMin = sortedIntervals.isNotEmpty
        ? (sortedIntervals.first.low + sortedIntervals.first.high) / 2.0 - 1.0
        : 0.0;
    final double xMax = sortedIntervals.isNotEmpty
        ? (sortedIntervals.last.low + sortedIntervals.last.high) / 2.0 + 1.0
        : 12.0;

    if (xMin < 0) xMin = 0;

    final yTicks = _generateYTicks(yMin, yMax);

    return GrowthChartModel._(
      sex: sex,
      title: title,
      subtitle: subtitle,
      xLabel: xLabel,
      yLabel: yLabel,
      theme: theme,
      config: cfg,
      xMin: xMin,
      xMax: xMax,
      yMin: yMin,
      yMax: yMax,
      xTicks: xTicks,
      yTicks: yTicks,
      curves: curves,
      observationPoints: obsPoints,
    );
  }

  static String _formatVelocityIncrementName(VelocityIncrement inc) {
    switch (inc) {
      case VelocityIncrement.$1:
        return '1-Month Increment';
      case VelocityIncrement.$2:
        return '2-Month Increment';
      case VelocityIncrement.$3:
        return '3-Month Increment';
      case VelocityIncrement.$4:
        return '4-Month Increment';
      case VelocityIncrement.$6:
        return '6-Month Increment';
    }
  }

  final Sex sex;
  final String title;
  final String subtitle;
  final String xLabel;
  final String yLabel;
  final GrowthChartTheme theme;
  final GrowthChartConfig config;
  final double xMin;
  final double xMax;
  final double yMin;
  final double yMax;
  final List<ChartTick> xTicks;
  final List<ChartTick> yTicks;
  final List<ChartCurve> curves;
  final List<ChartDataPoint> observationPoints;

  static double _extractXValue(Result r) {
    if (r is AgeBasedResult) {
      final unit = r.contextData is AgeBasedData
          ? (r.contextData as AgeBasedData).unit
          : TimeUnit.days;
      return r.ageAtObservationDate.ageInTotalByUnit(unit).toDouble();
    } else if (r is LengthBasedResult) {
      return r.lengthAtObservationDate.toCentimeter.value.toDouble();
    } else if (r is PostmenstrualAgeBasedResult) {
      return r.postmenstrualAgeAtObservation.weeks.toDouble();
    } else if (r is GestationalAgeBasedResult) {
      return r.gestationalAgeAtObservation.weeks.toDouble();
    }
    return 0.0;
  }

  static String getSexBadge(Sex sex, [Result? r]) {
    final isPediatric = r == null || _isPediatricResult(r);
    if (sex == Sex.male) {
      return isPediatric ? 'BOY' : 'MALE';
    } else {
      return isPediatric ? 'GIRL' : 'FEMALE';
    }
  }

  static String getSexTitleStr(Sex sex, [Result? r]) {
    final isPediatric = r == null || _isPediatricResult(r);
    if (sex == Sex.male) {
      return isPediatric ? 'Boys' : 'Males';
    } else {
      return isPediatric ? 'Girls' : 'Females';
    }
  }

  static bool _isPediatricResult(Result r) {
    if (r is AgeBasedResult) {
      return r.ageAtObservationDate.ageInTotalDaysByNow < 6575; // 18 years
    }
    return true; // Preterm / Infant / Newborn standards are pediatric
  }

  static String _formatXValue(Result r, double xVal) {
    if (r is AgeBasedResult) {
      final days = r.ageAtObservationDate.ageInTotalDaysByNow;
      if (days == 0) return 'Birth';
      if (days < 30) return '$days days';
      final months = days / 30.4375;
      if (days < 730) {
        return '${months.toStringAsFixed(1)} mo (${days}d)';
      }
      final years = days / 365.25;
      return '${months.toStringAsFixed(1)} mo (${years.toStringAsFixed(1)}y)';
    } else if (r is LengthBasedResult) {
      return '${xVal.toStringAsFixed(1)} cm';
    } else if (r is PostmenstrualAgeBasedResult) {
      return '${xVal.toStringAsFixed(1)} wks PMA';
    } else if (r is GestationalAgeBasedResult) {
      return '${xVal.toStringAsFixed(1)} wks GA';
    }
    return xVal.toStringAsFixed(1);
  }

  static String _formatYValue(Result r, double yVal) {
    final typeStr = r.runtimeType.toString();
    if (typeStr.contains('Weight')) {
      return '${yVal.toStringAsFixed(2)} kg';
    } else if (typeStr.contains('Length') ||
        typeStr.contains('Height') ||
        typeStr.contains('Circumference') ||
        typeStr.contains('Stature')) {
      return '${yVal.toStringAsFixed(1)} cm';
    } else if (typeStr.contains('BodyMassIndex') || typeStr.contains('BMI')) {
      return '${yVal.toStringAsFixed(2)} kg/m²';
    } else if (typeStr.contains('Skinfold')) {
      return '${yVal.toStringAsFixed(1)} mm';
    }
    return yVal.toStringAsFixed(2);
  }

  static _IndicatorInfo _getIndicatorInfo(Result r, Sex sex) {
    final typeStr = r.runtimeType.toString();
    final sexStr = getSexTitleStr(sex, r);

    String yLabel = 'Measurement';
    if (typeStr.contains('Weight')) {
      yLabel = 'Weight (kg)';
    } else if (typeStr.contains('Length') ||
        typeStr.contains('Height') ||
        typeStr.contains('Stature')) {
      yLabel = 'Length / Height (cm)';
    } else if (typeStr.contains('BodyMassIndex') || typeStr.contains('BMI')) {
      yLabel = 'BMI (kg/m²)';
    } else if (typeStr.contains('HeadCircumference')) {
      yLabel = 'Head Circumference (cm)';
    } else if (typeStr.contains('ArmCircumference')) {
      yLabel = 'Arm Circumference (cm)';
    } else if (typeStr.contains('Skinfold')) {
      yLabel = 'Skinfold (mm)';
    }

    String xLabel = 'X Axis';
    if (r is AgeBasedResult) {
      xLabel = 'Age';
    } else if (r is LengthBasedResult) {
      xLabel = 'Length / Height (cm)';
    } else if (r is PostmenstrualAgeBasedResult) {
      xLabel = 'Postmenstrual Age (weeks)';
    } else if (r is GestationalAgeBasedResult) {
      xLabel = 'Gestational Age (weeks)';
    }

    String title = 'Growth Standard — $sexStr';

    if (typeStr.contains('WHOGrowthStandardsWeightForAge')) {
      title = 'WHO Weight-for-Age (0 to 5 Years) — $sexStr';
      xLabel = 'Age (months)';
      yLabel = 'Weight (kg)';
    } else if (typeStr.contains('WHOGrowthStandardsLengthForAge')) {
      title = 'WHO Length-for-Age (0 to 5 Years) — $sexStr';
      xLabel = 'Age (months)';
      yLabel = 'Length (cm)';
    } else if (typeStr.contains('WHOGrowthStandardsWeightForLength')) {
      title = 'WHO Weight-for-Length (45 to 110 cm) — $sexStr';
      xLabel = 'Length (cm)';
      yLabel = 'Weight (kg)';
    } else if (typeStr.contains('WHOGrowthStandardsWeightForHeight')) {
      title = 'WHO Weight-for-Height (65 to 120 cm) — $sexStr';
      xLabel = 'Height (cm)';
      yLabel = 'Weight (kg)';
    } else if (typeStr.contains('WHOGrowthStandardsBodyMassIndexForAge')) {
      title = 'WHO BMI-for-Age (0 to 5 Years) — $sexStr';
      xLabel = 'Age (months)';
      yLabel = 'BMI (kg/m²)';
    } else if (typeStr.contains('WHOGrowthStandardsHeadCircumferenceForAge')) {
      title = 'WHO Head Circumference-for-Age — $sexStr';
      xLabel = 'Age (months)';
      yLabel = 'Head Circumference (cm)';
    } else if (typeStr.contains('WHOGrowthStandardsArmCircumferenceForAge')) {
      title = 'WHO MUAC-for-Age — $sexStr';
      xLabel = 'Age (months)';
      yLabel = 'Arm Circumference (cm)';
    } else if (typeStr.contains('WHOGrowthReferenceHeightForAge')) {
      title = 'WHO Height-for-Age (5 to 19 Years) — $sexStr';
      xLabel = 'Age (years)';
      yLabel = 'Height (cm)';
    } else if (typeStr.contains('WHOGrowthReferenceWeightForAge')) {
      title = 'WHO Weight-for-Age (5 to 10 Years) — $sexStr';
      xLabel = 'Age (years)';
      yLabel = 'Weight (kg)';
    } else if (typeStr.contains('WHOGrowthReferenceBodyMassIndexForAge')) {
      title = 'WHO BMI-for-Age (5 to 19 Years) — $sexStr';
      xLabel = 'Age (years)';
      yLabel = 'BMI (kg/m²)';
    } else if (typeStr.contains('CDC')) {
      title = 'CDC Growth Standard: ${_humanizeClassName(typeStr)} — $sexStr';
    } else if (typeStr.contains('Fenton')) {
      title =
          'Fenton Preterm Standard: ${_humanizeClassName(typeStr)} — $sexStr';
    } else if (typeStr.contains('Intergrowth')) {
      title =
          'Intergrowth-21st Standard: ${_humanizeClassName(typeStr)} — $sexStr';
    }

    return _IndicatorInfo(title: title, xLabel: xLabel, yLabel: yLabel);
  }

  static String _humanizeClassName(String name) {
    var clean = name.replaceAll(
      RegExp(
        '^_?CDC|^_?Fenton|^_?Intergrowth|^_?WHOGrowthStandards|^_?WHOGrowthReference',
      ),
      '',
    );
    clean = clean.replaceAll('Data', '').replaceAll('Impl', '');
    return clean.replaceAllMapped(RegExp('([A-Z])'), (m) => ' ${m[1]}').trim();
  }

  static List<ChartTick> _generateXTicks(Result r, double xMin, double xMax) {
    final ticks = <ChartTick>[];
    if (r is AgeBasedResult) {
      final unit = r.contextData is AgeBasedData
          ? (r.contextData as AgeBasedData).unit
          : TimeUnit.days;

      if (unit == TimeUnit.days && xMax <= 1856) {
        // WHO 0-5 years (in days) -> display ticks in months (0, 6, 12, 18, 24, 36, 48, 60)
        final monthTicks = [0, 6, 12, 18, 24, 30, 36, 42, 48, 54, 60];
        for (final m in monthTicks) {
          final dayVal = m == 0 ? 0.0 : m * 30.4375;
          if (dayVal >= xMin && dayVal <= xMax) {
            String label;
            if (m == 0) {
              label = 'Birth';
            } else if (m % 12 == 0) {
              label = '${m ~/ 12}y';
            } else {
              label = '${m}m';
            }
            ticks.add(ChartTick(value: dayVal, label: label));
          }
        }
        return ticks;
      } else if (unit == TimeUnit.months && xMax >= 20) {
        // CDC / WHO reference (in months) -> display ticks in years or months
        final monthInterval = (xMax - xMin) > 60 ? 24 : 12;
        for (double m = xMin; m <= xMax; m += monthInterval) {
          final yrs = (m / 12).toStringAsFixed(0);
          ticks.add(ChartTick(value: m, label: '${yrs}y'));
        }
        return ticks;
      }
    }

    // Default numeric ticks
    final range = xMax - xMin;
    final step = _computeNiceStep(range, 8);
    final start = (xMin / step).ceil() * step;
    for (double x = start; x <= xMax; x += step) {
      ticks.add(
        ChartTick(value: x, label: x.toStringAsFixed(x % 1 == 0 ? 0 : 1)),
      );
    }
    return ticks;
  }

  static List<ChartTick> _generateYTicks(double yMin, double yMax) {
    final ticks = <ChartTick>[];
    final range = yMax - yMin;
    final step = _computeNiceStep(range, 8);
    final start = (yMin / step).ceil() * step;

    for (double y = start; y <= yMax; y += step) {
      ticks.add(
        ChartTick(
          value: y,
          label: y.toStringAsFixed(step < 1 ? 2 : (step % 1 == 0 ? 0 : 1)),
        ),
      );
    }
    return ticks;
  }

  static double _computeNiceStep(double range, int targetTicks) {
    if (range <= 0) return 1.0;
    final roughStep = range / targetTicks;
    final exponent = (log(roughStep) / ln10).floor();
    final power = pow(10, exponent).toDouble();
    final normalized = roughStep / power;

    double niceNormalized;
    if (normalized < 1.5) {
      niceNormalized = 1.0;
    } else if (normalized < 3.0) {
      niceNormalized = 2.0;
    } else if (normalized < 7.0) {
      niceNormalized = 5.0;
    } else {
      niceNormalized = 10.0;
    }
    return niceNormalized * power;
  }
}

class _IndicatorInfo {
  const _IndicatorInfo({
    required this.title,
    required this.xLabel,
    required this.yLabel,
  });
  final String title;
  final String xLabel;
  final String yLabel;
}
