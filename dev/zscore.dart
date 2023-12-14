// ignore_for_file: avoid_print

import 'package:reusable_tools/reusable_tools.dart';

double maxpscore(double z) {
  double y;
  double x;
  double w;
  if (z == 0.0) {
    x = 0.0;
  } else {
    y = 0.5 * z.abs();
    if (y > (sMmaximum * 0.5)) {
      x = 1.0;
    } else if (y < 1.0) {
      w = y * y;
      x = ((((((((0.000124818987 * w - 0.001075204047) * w + 0.005198775019) *
                                                          w -
                                                      0.019198292004) *
                                                  w +
                                              0.059054035642) *
                                          w -
                                      0.151968751364) *
                                  w +
                              0.319152932694) *
                          w -
                      0.531923007300) *
                  w +
              0.797884560593) *
          y *
          2.0;
    } else {
      y -= 2.0;
      x = (((((((((((((-0.000045255659 * y + 0.000152529290) * y - 0.000019538132) * y - 0.000676904986) * y + 0.001390604284) * y - 0.000794620820) *
                                                                              y -
                                                                          0.002034254874) *
                                                                      y +
                                                                  0.006549791214) *
                                                              y -
                                                          0.010557625006) *
                                                      y +
                                                  0.011630447319) *
                                              y -
                                          0.009279453341) *
                                      y +
                                  0.005353579108) *
                              y -
                          0.002141268741) *
                      y +
                  0.000535310849) *
              y +
          0.999936657524;
    }
  }
  return z > 0.0 ? ((x + 1.0) * 0.5) : ((1.0 - x) * 0.5);
}

// Assuming s_maximum is defined somewhere in your code
const double sMmaximum = 6; // Replace this with the actual value of s_maximum

void call(double zScore) {
  print('Z-score: $zScore, Percentile: ${(maxpscore(zScore) * 100).toPrecision(2)}%');
}
