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
  /// Creates a [GrowthChartModel] from a list of calculation results and config
  factory GrowthChartModel.fromResults(
    List<Result> results, {
    GrowthChartConfig? config,
  }) {
    if (results.isEmpty) {
      throw ArgumentError('results list cannot be empty');
    }

    final firstResult = results.first;
    final cfg = _resolveConfig(config, firstResult);

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
      double yVal = r.measurementResultInDefaultUnit.toDouble();
      if (r is FentonWeightForAge) {
        yVal /= 1000.0;
      }
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

    // Sort by X so trajectories render monotonically and obsPoints.last is latest
    obsPoints.sort((a, b) => a.x.compareTo(b.x));

    // Subtitle summary
    final subtitle =
        cfg.subtitle ??
        (obsPoints.isNotEmpty
            ? 'Value: ${obsPoints.last.formattedY} at ${obsPoints.last.formattedX} | '
                  'Z-Score: ${obsPoints.last.zScore.isFinite ? "${obsPoints.last.zScore > 0 ? "+" : ""}${obsPoints.last.zScore.toStringAsFixed(2)} SD" : "N/A"} | '
                  'Percentile: ${obsPoints.last.percentile.isFinite ? "${obsPoints.last.percentile.toStringAsFixed(1)}%" : "N/A"}'
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
    final isFentonWeight = firstResult is FentonWeightForAge;
    final curves = <ChartCurve>[];
    if (cfg.displayMode == GrowthChartDisplayMode.zScore) {
      for (final sd in cfg.zScoreLines!) {
        final pts = <ChartPoint>[];
        for (final k in sortedXKeys) {
          if (k >= xMin && k <= xMax) {
            final lmsCtx = sexData[k] ?? sexData[k.toInt()];
            if (lmsCtx != null) {
              double yVal = lmsCtx.valueAtZScore(sd).toDouble();
              if (isFentonWeight) {
                yVal /= 1000.0;
              }
              if (yVal.isFinite) {
                pts.add(ChartPoint(k, yVal));
              }
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
      for (final p in cfg.percentileLines!) {
        final pts = <ChartPoint>[];
        final zForP = qnorm(p / 100);
        for (final k in sortedXKeys) {
          if (k >= xMin && k <= xMax) {
            final lmsCtx = sexData[k] ?? sexData[k.toInt()];
            if (lmsCtx != null) {
              double yVal = lmsCtx.valueAtZScore(zForP).toDouble();
              if (isFentonWeight) {
                yVal /= 1000.0;
              }
              if (yVal.isFinite) {
                pts.add(ChartPoint(k, yVal));
              }
            }
          }
        }
        GrowthChartColor c;
        if (p == 50) {
          c = theme.medianCurveColor;
        } else if (p == 15 || p == 85 || p == 25 || p == 75) {
          c = theme.normalCurveColor;
        } else if (p == 5 || p == 95 || p == 10 || p == 90) {
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

    if (minY == double.infinity) {
      minY = 0.0;
      maxY = 1.0;
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
    var cfg = config ?? const GrowthChartConfig();
    if (cfg.zScoreLines == null || cfg.percentileLines == null) {
      cfg = cfg.copyWith(
        zScoreLines: cfg.zScoreLines ?? const [-3, -2, -1, 0, 1, 2, 3],
        percentileLines: cfg.percentileLines ?? const [3, 15, 50, 85, 97],
      );
    }

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
        ? cfg.zScoreLines!
        : cfg.percentileLines!;

    for (final sd in sdLines) {
      curvesMap[sd] = [];
    }

    for (final vm in sortedIntervals) {
      final midX = (vm.low + vm.high) / 2.0;
      final label = '${vm.low}–${vm.high}m';
      xTicks.add(ChartTick(value: midX, label: label));

      final lmsHolder = incMonthsMap[vm];
      if (lmsHolder != null) {
        final lmsCtx = lmsHolder as LMSContext;
        final lms = lmsCtx.lms;
        final delta = lmsCtx.delta.toDouble();
        for (final val in sdLines) {
          double rawY = 0.0;
          if (cfg.displayMode == GrowthChartDisplayMode.zScore) {
            rawY = lms.standardDeviation(val).toDouble() - delta;
          } else {
            rawY = lms.standardDeviation(qnorm(val / 100)).toDouble() - delta;
          }
          final yVal = isWeight ? rawY / 1000.0 : rawY;
          if (yVal.isFinite) {
            curvesMap[val]?.add(ChartPoint(midX, yVal));
          }
        }
      }
    }

    final obsPoints = <ChartDataPoint>[];
    final measuredMap = zpMap[activeIncrement];
    if (measuredMap != null) {
      measuredMap.forEach((vm, zp) {
        if (!zp.zScore.isFinite) return;
        final midX = (vm.low + vm.high) / 2.0;
        final lmsHolder = incMonthsMap[vm];
        double yVal = 0.0;
        if (lmsHolder != null) {
          final lmsCtx = lmsHolder as LMSContext;
          final rawY =
              _valueFromAdjustedZScore(lmsCtx.lms, zp.zScore) -
              lmsCtx.delta.toDouble();
          yVal = isWeight ? rawY / 1000.0 : rawY;
        }
        if (!yVal.isFinite) return;

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

    obsPoints.sort((a, b) => a.x.compareTo(b.x));

    final subtitle =
        cfg.subtitle ??
        (obsPoints.isNotEmpty
            ? 'Gain: ${obsPoints.last.formattedY} | Z: ${obsPoints.last.zScore > 0 ? "+" : ""}${obsPoints.last.zScore.toStringAsFixed(2)} SD (${obsPoints.last.percentile.toStringAsFixed(1)}%ile)'
            : 'Velocity Standards');

    final curves = <ChartCurve>[];
    if (cfg.displayMode == GrowthChartDisplayMode.zScore) {
      for (final sd in cfg.zScoreLines!) {
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
      for (final p in cfg.percentileLines!) {
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

    final firstResult = velocityResults.first;
    var cfg = config ?? const GrowthChartConfig();
    if (cfg.zScoreLines == null || cfg.percentileLines == null) {
      cfg = cfg.copyWith(
        zScoreLines: cfg.zScoreLines ?? const [-3, -2, -1, 0, 1, 2, 3],
        percentileLines: cfg.percentileLines ?? const [3, 15, 50, 85, 97],
      );
    }

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

    // Determine the active increment from the first non-empty velocity result
    VelocityIncrement activeIncrement = VelocityIncrement.$2;
    bool foundIncrement = false;
    for (final vr in velocityResults) {
      final zpMap = vr.zScorePercentileMap();
      if (zpMap.isNotEmpty) {
        activeIncrement = zpMap.keys.first;
        foundIncrement = true;
        break;
      }
    }
    if (!foundIncrement && velocityData != null && velocityData.isNotEmpty) {
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
        ? cfg.zScoreLines!
        : cfg.percentileLines!;

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
        final lmsCtx = lmsHolder as LMSContext;
        final lms = lmsCtx.lms;
        final delta = lmsCtx.delta.toDouble();
        for (final val in sdLines) {
          double rawY = 0.0;
          if (cfg.displayMode == GrowthChartDisplayMode.zScore) {
            rawY = lms.standardDeviation(val).toDouble() - delta;
          } else {
            rawY = lms.standardDeviation(qnorm(val / 100)).toDouble() - delta;
          }
          final yVal = isWeight ? rawY / 1000.0 : rawY;
          if (yVal.isFinite) {
            curvesMap[val]?.add(ChartPoint(midX, yVal));
          }
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
          if (!zp.zScore.isFinite) return;
          final midX = (vm.low + vm.high) / 2.0;
          final lmsHolder = incMonthsMap[vm];
          double yVal = 0.0;
          if (lmsHolder != null) {
            final lmsCtx = lmsHolder as LMSContext;
            final rawY =
                _valueFromAdjustedZScore(lmsCtx.lms, zp.zScore) -
                lmsCtx.delta.toDouble();
            yVal = isWeight ? rawY / 1000.0 : rawY;
          }
          if (!yVal.isFinite) return;

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
      for (final sd in cfg.zScoreLines!) {
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
      for (final p in cfg.percentileLines!) {
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

  static bool _isCDC(Result r) =>
      r is CDCBodyMassIndexForAge ||
      r is CDCWeightForAge ||
      r is CDCStatureForAge ||
      r is CDCWeightForStature ||
      r is CDCInfantHeadCircumferenceForAge ||
      r is CDCInfantLengthForAge ||
      r is CDCInfantWeightForAge ||
      r is CDCInfantWeightForLength;

  static bool _isFenton(Result r) =>
      r is FentonWeightForAge ||
      r is FentonLengthForAge ||
      r is FentonHeadCircumferenceForAge;

  // Inverts WHO adjustedZScoreCalculation (piecewise linear outside ±3 SD).
  static double _valueFromAdjustedZScore(LMS lms, num zScore) {
    if (zScore > 3) {
      final sd3Pos = lms.standardDeviation(3).toDouble();
      final sd2Pos = lms.standardDeviation(2).toDouble();
      if (sd3Pos.isFinite && sd2Pos.isFinite) {
        return sd3Pos + (zScore - 3) * (sd3Pos - sd2Pos);
      }
    } else if (zScore < -3) {
      final sd3Neg = lms.standardDeviation(-3).toDouble();
      final sd2Neg = lms.standardDeviation(-2).toDouble();
      if (sd3Neg.isFinite && sd2Neg.isFinite) {
        return sd3Neg + (zScore + 3) * (sd2Neg - sd3Neg);
      }
    }
    return lms.standardDeviation(zScore).toDouble();
  }

  static GrowthChartConfig _resolveConfig(GrowthChartConfig? config, Result r) {
    final c = config ?? const GrowthChartConfig();
    if (c.zScoreLines == null || c.percentileLines == null) {
      final typeStr = r.runtimeType.toString();
      const List<int> zLines = [-3, -2, -1, 0, 1, 2, 3];
      List<num> pLines = const [3, 15, 50, 85, 97]; // Default WHO

      if (_isCDC(r)) {
        pLines = const [3, 10, 25, 50, 75, 90, 97];
      } else if (_isFenton(r) || typeStr.contains('Intergrowth')) {
        pLines = const [3, 10, 50, 90, 97];
      }

      return c.copyWith(
        zScoreLines: c.zScoreLines ?? zLines,
        percentileLines: c.percentileLines ?? pLines,
      );
    }
    return c;
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
      final unit = r.contextData is LengthBasedData
          ? (r.contextData as LengthBasedData).unit
          : null;
      if (unit.toString().contains('mm') ||
          unit.toString().contains('millimeter')) {
        return r.lengthAtObservationDate.toMillimeter.value.toDouble();
      }
      return r.lengthAtObservationDate.toCentimeter.value.toDouble();
    } else if (r is PostmenstrualAgeBasedResult) {
      final unit = r.contextData is AgeBasedData
          ? (r.contextData as AgeBasedData).unit
          : TimeUnit.weeks;
      if (unit == TimeUnit.days) {
        return r.postmenstrualAgeAtObservation.totalDays.toDouble();
      }
      return r.postmenstrualAgeAtObservation.exactWeeks.toDouble();
    } else if (r is GestationalAgeBasedResult) {
      final unit = r.contextData is AgeBasedData
          ? (r.contextData as AgeBasedData).unit
          : TimeUnit.weeks;
      if (unit == TimeUnit.days) {
        return r.gestationalAgeAtObservation.totalDays.toDouble();
      }
      return r.gestationalAgeAtObservation.exactWeeks.toDouble();
    }
    return 0.0;
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
      final unit = r.contextData is AgeBasedData
          ? (r.contextData as AgeBasedData).unit
          : TimeUnit.days;
      final typeStr = r.runtimeType.toString();
      if (unit == TimeUnit.weeks ||
          typeStr.contains('IntergrowthFetalCrownRumpLength')) {
        final wks = days / 7.0;
        return '${wks.toStringAsFixed(1)} wks (${days}d)';
      }
      if (days == 0) return 'Birth';
      if (days < 30) return '$days days';
      final months = days / 30.4375;
      if (days < 730) {
        return '${months.toStringAsFixed(1)} mo (${days}d)';
      }
      final years = days / 365.25;
      return '${months.toStringAsFixed(1)} mo (${years.toStringAsFixed(1)}y)';
    } else if (r is LengthBasedResult) {
      final unit = r.contextData is LengthBasedData
          ? (r.contextData as LengthBasedData).unit
          : null;
      if (unit.toString().contains('mm') ||
          unit.toString().contains('millimeter')) {
        return '${xVal.toStringAsFixed(1)} mm';
      }
      return '${xVal.toStringAsFixed(1)} cm';
    } else if (r is PostmenstrualAgeBasedResult) {
      final wks = r.postmenstrualAgeAtObservation.exactWeeks;
      return '${wks.toStringAsFixed(1)} wks PMA';
    } else if (r is GestationalAgeBasedResult) {
      final wks = r.gestationalAgeAtObservation.exactWeeks;
      return '${wks.toStringAsFixed(1)} wks GA';
    }
    return xVal.toStringAsFixed(1);
  }

  static String _formatYValue(Result r, double yVal) {
    final typeStr = r.runtimeType.toString();
    if (typeStr.contains('WeightForLengthRatio')) {
      return '${yVal.toStringAsFixed(2)} kg/m';
    } else if (typeStr.contains('EstimatedFetalWeight')) {
      return '${yVal.toStringAsFixed(0)} g';
    } else if (typeStr.contains('EarlyPregnancyDatingForCRL')) {
      return '${yVal.toStringAsFixed(1)} days';
    } else if (typeStr.contains('Weight')) {
      return '${yVal.toStringAsFixed(2)} kg';
    } else if (typeStr.contains('IntergrowthFetal')) {
      return '${yVal.toStringAsFixed(1)} mm';
    } else if (typeStr.contains('Length') ||
        typeStr.contains('Height') ||
        typeStr.contains('Circumference') ||
        typeStr.contains('Diameter') ||
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
    if (typeStr.contains('WeightForLengthRatio')) {
      yLabel = 'Weight-for-Length Ratio (kg/m)';
    } else if (typeStr.contains('EstimatedFetalWeight')) {
      yLabel = 'Estimated Fetal Weight (g)';
    } else if (typeStr.contains('EarlyPregnancyDatingForCRL')) {
      yLabel = 'Gestational Age (days)';
    } else if (typeStr.contains('GestationalWeightGain')) {
      yLabel = 'Weight Gain (kg)';
    } else if (typeStr.contains('SymphysisFundalHeight')) {
      yLabel = 'Symphysis-Fundal Height (cm)';
    } else if (typeStr.contains('Weight')) {
      yLabel = 'Weight (kg)';
    } else if (typeStr.contains('HeadCircumference')) {
      yLabel = typeStr.contains('IntergrowthFetal')
          ? 'Head Circumference (mm)'
          : 'Head Circumference (cm)';
    } else if (typeStr.contains('ArmCircumference')) {
      yLabel = 'Arm Circumference (cm)';
    } else if (typeStr.contains('AbdominalCircumference')) {
      yLabel = 'Abdominal Circumference (mm)';
    } else if (typeStr.contains('BiparietalDiameter')) {
      yLabel = 'Biparietal Diameter (mm)';
    } else if (typeStr.contains('OccipitoFrontalDiameter')) {
      yLabel = 'Occipito-Frontal Diameter (mm)';
    } else if (typeStr.contains('FemurLength')) {
      yLabel = 'Femur Length (mm)';
    } else if (typeStr.contains('CrownRumpLength')) {
      yLabel = 'Crown-Rump Length (mm)';
    } else if (typeStr.contains('Length') ||
        typeStr.contains('Height') ||
        typeStr.contains('Stature')) {
      yLabel = 'Length / Height (cm)';
    } else if (typeStr.contains('BodyMassIndex') || typeStr.contains('BMI')) {
      yLabel = 'BMI (kg/m²)';
    } else if (typeStr.contains('Skinfold')) {
      yLabel = 'Skinfold (mm)';
    }

    String xLabel = 'X Axis';
    if (r is AgeBasedResult) {
      final unit = (r.contextData as AgeBasedData).unit;
      xLabel =
          (unit == TimeUnit.weeks ||
              typeStr.contains('IntergrowthFetalCrownRumpLength'))
          ? 'Age (weeks)'
          : 'Age (months)';
    } else if (r is LengthBasedResult) {
      final unit = r.contextData is LengthBasedData
          ? (r.contextData as LengthBasedData).unit
          : null;
      if (unit.toString().contains('mm') ||
          unit.toString().contains('millimeter')) {
        xLabel = 'Length / Height (mm)';
      } else {
        xLabel = 'Length / Height (cm)';
      }
    } else if (r is PostmenstrualAgeBasedResult) {
      xLabel = 'Postmenstrual Age (weeks)';
    } else if (r is GestationalAgeBasedResult) {
      xLabel = 'Gestational Age (weeks)';
    }

    String standardName = 'Growth Standard';
    if (typeStr.contains('WHO')) {
      standardName = 'WHO';
    } else if (_isCDC(r)) {
      standardName = 'CDC';
    } else if (_isFenton(r)) {
      standardName = 'Fenton';
    } else if (typeStr.contains('Intergrowth')) {
      standardName = 'INTERGROWTH-21st';
    }

    String measurementName = 'Measurement';
    if (r is CDCStatureForAge) {
      measurementName = 'Stature-for-Age';
    } else if (typeStr.contains('WeightForLengthRatio')) {
      measurementName = 'Weight-to-Length Ratio';
    } else if (typeStr.contains('HadlockEstimatedFetalWeight')) {
      measurementName = 'Estimated Fetal Weight (Hadlock)';
    } else if (typeStr.contains('EstimatedFetalWeight')) {
      measurementName = 'Estimated Fetal Weight';
    } else if (typeStr.contains('EarlyPregnancyDatingForCRL')) {
      measurementName = 'CRL Pregnancy Dating';
    } else if (typeStr.contains('CrownRumpLength')) {
      measurementName = 'Fetal CRL-for-Age';
    } else if (typeStr.contains('AbdominalCircumference')) {
      measurementName = 'Fetal Abdominal Circumference';
    } else if (typeStr.contains('BiparietalDiameter')) {
      measurementName = 'Fetal Biparietal Diameter';
    } else if (typeStr.contains('FemurLength')) {
      measurementName = 'Fetal Femur Length';
    } else if (typeStr.contains('OccipitoFrontalDiameter')) {
      measurementName = 'Fetal Occipito-Frontal Diameter';
    } else if (typeStr.contains('IntergrowthFetal') &&
        typeStr.contains('HeadCircumference')) {
      measurementName = 'Fetal Head Circumference';
    } else if (typeStr.contains('SymphysisFundalHeight')) {
      measurementName = 'Symphysis-Fundal Height';
    } else if (typeStr.contains('GestationalWeightGain')) {
      measurementName = 'Gestational Weight Gain';
    } else if (typeStr.contains('SubscapularSkinfold')) {
      measurementName = 'Subscapular Skinfold-for-Age';
    } else if (typeStr.contains('TricepsSkinfold')) {
      measurementName = 'Triceps Skinfold-for-Age';
    } else if (typeStr.contains('WeightForAge')) {
      measurementName = 'Weight-for-Age';
    } else if (typeStr.contains('LengthForAge')) {
      measurementName = 'Length-for-Age';
    } else if (typeStr.contains('StatureForAge')) {
      measurementName = 'Stature-for-Age';
    } else if (typeStr.contains('HeightForAge')) {
      measurementName = 'Height-for-Age';
    } else if (typeStr.contains('BMIForAge') ||
        typeStr.contains('BodyMassIndexForAge')) {
      measurementName = 'BMI-for-Age';
    } else if (typeStr.contains('HeadCircumferenceForAge') ||
        typeStr.contains('HeadCircumference')) {
      measurementName = 'Head Circumference-for-Age';
    } else if (typeStr.contains('ArmCircumferenceForAge')) {
      measurementName = 'MUAC-for-Age';
    } else if (typeStr.contains('WeightForLength')) {
      measurementName = 'Weight-for-Length';
    } else if (typeStr.contains('WeightForHeight')) {
      measurementName = 'Weight-for-Height';
    } else if (typeStr.contains('WeightForStature')) {
      measurementName = 'Weight-for-Stature';
    } else if (typeStr.contains('WeightVelocity')) {
      measurementName = 'Weight Velocity';
    } else if (typeStr.contains('LengthVelocity')) {
      measurementName = 'Length Velocity';
    } else if (typeStr.contains('HeadCircumferenceVelocity')) {
      measurementName = 'Head Circumference Velocity';
    }

    final String title = r.sex == null
        ? '$standardName $measurementName'
        : '$standardName $measurementName — $sexStr';

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

      if (unit == TimeUnit.days &&
          r.runtimeType.toString().contains('IntergrowthFetalCrownRumpLength')) {
        final startWeek = (xMin / 7.0).ceil();
        final endWeek = (xMax / 7.0).floor();
        for (int w = startWeek; w <= endWeek; w++) {
          ticks.add(ChartTick(value: (w * 7).toDouble(), label: '${w}w'));
        }
        if (ticks.isNotEmpty) return ticks;
      }

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
        if (ticks.isNotEmpty) return ticks;
      } else if (unit == TimeUnit.months && xMax >= 20) {
        // CDC / WHO reference (in months) -> align ticks to exact year multiples
        final monthInterval = (xMax - xMin) > 60 ? 24 : 12;
        final startMonth = (xMin / monthInterval).ceil() * monthInterval;
        for (double m = startMonth.toDouble(); m <= xMax; m += monthInterval) {
          final yrs = m ~/ 12;
          ticks.add(ChartTick(value: m, label: '${yrs}y'));
        }
        return ticks;
      }
    } else if (r is PostmenstrualAgeBasedResult ||
        r is GestationalAgeBasedResult) {
      final unit = r.contextData is AgeBasedData
          ? (r.contextData as AgeBasedData).unit
          : TimeUnit.weeks;

      if (unit == TimeUnit.days) {
        // Preterm standards using days but charting by weeks
        final weekInterval = (xMax - xMin) > 100
            ? 4
            : 2; // e.g. every 4 weeks if long range
        final startWeek = (xMin / 7.0).ceil();
        final endWeek = (xMax / 7.0).floor();

        for (int w = startWeek; w <= endWeek; w++) {
          if (w % weekInterval == 0) {
            ticks.add(ChartTick(value: (w * 7).toDouble(), label: '${w}w'));
          }
        }
        return ticks;
      } else {
        final weekInterval = (xMax - xMin) > 20 ? 4 : 2;
        final startWeek = xMin.ceil();
        final endWeek = xMax.floor();

        for (int w = startWeek; w <= endWeek; w++) {
          if (w % weekInterval == 0) {
            ticks.add(ChartTick(value: w.toDouble(), label: '${w}w'));
          }
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
