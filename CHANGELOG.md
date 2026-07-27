## 5.0.0
- **BREAKING — SVG-only chart output**: Removed the PNG renderer and all PNG APIs (`toPng()`, `savePng()`, `toPngList()`, `savePngList()`, `renderVelocityPng()`, `saveVelocityPng()`). Charts are now rendered exclusively as SVG; convert to raster formats externally (e.g. `rsvg-convert`, Inkscape, or a browser).
- **BREAKING — dropped `image` dependency**: The package no longer depends on `package:image`.
- **Redesigned chart legend**: Legend items are now dynamically measured, evenly spaced, and horizontally centered on a dedicated bottom row, eliminating text overlap with the x-axis title and between entries.
  - Legend labels adapt to the display mode (`0 SD (Median)` / `±1 SD` / `±2 / ±3 SD` for Z-scores; `50th (Median)` / `15th / 85th` / `3rd / 97th` for percentiles).
  - A `Trajectory` legend entry is shown automatically for multi-point longitudinal charts.
  - The x-axis title now sits at a fixed offset below the tick labels with dedicated space reserved for the legend row.
- **X-axis tick label overlap guard**: Tick labels that would collide with the previous label (e.g. dense velocity interval labels like `10–12m`) are automatically skipped.

## 4.6.0
- **Growth Chart Visualizer Engine**: Pure Dart rendering engine generating vector SVG and high-resolution PNG growth charts.
  - Supports WHO (0-5y & 5-18y), CDC (2-20y & 0-36m), Fenton 2013 Preterm, and WHO Growth Velocity charts.
  - Pixel-perfect layout alignment between SVG and PNG renderers.
  - Includes custom themes (`GrowthChartTheme.boy()`, `GrowthChartTheme.girl()`), display modes (Z-scores vs. Percentiles), legend rows, grid lines, and top-right callout result banners.
  - Direct extension methods on `Result`, `List<Result>`, `VelocityBasedResult`, and `GrowthTrajectory` (`toSvg()`, `toPng()`, `saveSvg()`, `savePng()`).
- **Core `GrowthTrajectory` API**: Decoupled longitudinal child growth tracking helper available at core library level (`lib/src/common/trajectory.dart`).
  - Added 24 trajectory factory constructors covering WHO, CDC, Fenton, and INTERGROWTH-21st standards.
  - Accepts `LengthMassObservation` paired visit measurements and returns `Result` calculations on `add()`.
  - Added trajectory analytic getters (`zScores`, `percentiles`, `latestResult`, `firstResult`).
- **WHO Growth Velocity Visualization**: Render interval growth velocity charts for weight, length, and head circumference gain across 1, 2, 3, 4, and 6-month increments.
- **Pediatric Age & Sex Semantics**: Standardized sex labels (`BOY`/`GIRL` and `Boys`/`Girls` for pediatric age < 18y; `MALE`/`FEMALE` and `Males`/`Females` for adult age ≥ 18y).
- **Expanded Modular Example Suite**: Added dedicated, runnable scripts under `example/` for every growth measurement type.

## 4.5.0
- Add sex-specific Fenton 2013 LMS datasets for boys and girls (`wfa`, `lfa`, `hcfa`)
- Require typed `PostmenstrualAge` for Fenton and `GestationalAge` for INTERGROWTH newborn models
- Fix WHO growth velocity month classification for day-based clinical visit gaps (`days / 30.4375`)
- Fix CDC Agemos mid-month `n + 0.5` grid lookups across endpoint months
- Add WHO WFL (≤730 days) and WFH (>730 days) runtime age gates
- Implement LMS $L=0$ limit form ($Z = \ln(y/M)/S$) and non-positive measurement guards in math core
- Fix `DateFormatExtension.format` month name (`MMM`) token replacement order and export from package root
- Fix `ageAtPastDate` DOB handling and standing/recumbent length adjustments
- Add mathematical golden vector test suite (`test/golden_vectors_test.dart`)

## 4.4.1
- Fix bug in growth velocity data parser
- Add conversion unit symbol in length based growth measurement assertion

## 4.4.0
- Set default value for `countObservationDate` to  `true` in `Age`
- Improve performance by change source data to map literal instead of `json` string

## 4.3.1
- Add latest Symphisis-Fundal Height score update

## 4.3.0
- Fix intergrowth source data error

## 4.2.1
- Dependencies bump

## 4.2.0
- Add `countObservationDate` to `Age` with default value to `false`

## 4.1.5

- Same as previous version, but support for `freezed` v2

## 4.1.4

- Set default decimal `Precision` to `Precision.two`

## 4.1.3

- Same as previous version, but support for `freezed` v2

## 4.1.2

- Minor performance improvements

## 4.1.1
- Exportinng `pnorm` and `qnorm`

## 4.1.0 
- Add missing `TimeUnit`

## 4.0.0
- Remove `Sex.both` enum.
- Remove `Sex` parameter from `Fenton` measurement.
- Add `Intergrowth-21` measurements.

## 3.0.6
- Same as previous version
- Use this version if your dependencies has not supported `freezed` version 3

## 3.0.5

- Remove data sorting as the data is sorted by default

## 3.0.4

- Same as previous version
- Use this version if your dependencies has not supported `freezed` version 3

## 3.0.2

- Exporting `TimeUnit`

## 3.0.1

- Same as previous version
- Use this version if your dependencies has not supported `freezed` version 3

## 3.0.0

- Add `Sex.both` to replace for sex-agnostic data
- Exposing `contextData` for directly accessing statistical data
- Unified assertion for non velocity measurement
- Removing `observationDate` on Length-based measurement
- Move `observationDate` into `Age` `observedDate` field

## 2.2.1

- Same as previous version
- Use this version if your dependencies has not supported `freezed` version 3

## 2.2.0

- Unified `ageData` and `lengthData` into `lmsData`

## 2.1.5

- Export additional typedef

## 2.1.4

- Fix measurement conversion in `WHOGrowthStandardsTricepsSkinfoldForAge` and `WHOGrowthStandardsSubscapularSkinfoldForAge`

## 2.1.3

- Expose `lengthAtObservationDate` for length based measurement
- Use this version if your dependencies has supported `freezed` version 3

## 2.1.2

- Expose `lengthAtObservationDate` for length based measurement
- Use this version if your dependencies has not supported `freezed` version 3

## 2.1.1

- Simplify `LMS` 
- Fix bug at measurement of `WHOGrowthStandardsArmCircumferenceForAge`
- Update dependencies
- Expose `measurementResultInDefaultUnit`
- Use this version if your dependencies has supported `freezed` version 3

## 2.1.0

- Simplify `LMS` 
- Fix bug at measurement of `WHOGrowthStandardsArmCircumferenceForAge`
- Update dependencies
- Expose `measurementResultInDefaultUnit`
- Use this version if your dependencies has not supported `freezed` version 3

## 2.0.1

- Exposing ageAtObservationDate field for age based measurement
- Add various base class 
- Use this version if your dependencies has supported `freezed` version 3

## 2.0.0

- Exposing ageAtObservationDate field for age based measurement
- Add various base class 
- Use this version if your dependencies has not supported `freezed` version 3

## 1.5.1

- Exposing `ageData` for more easy access
- Use this version if your dependencies has supported `freezed` version 3

## 1.5.0

- Exposing `ageData` for more easy access
- Use this version if your dependencies has not supported `freezed` version 3

## 1.4.3
 
- Fix pub static analysis issues

## 1.4.2

- Bump `freezed` version.
- Use this version if your dependencies has supported `freezed` version 3

## 1.4.1

- Lowering `freezed` version.
- Use this version if your dependencies has not supported `freezed` version 3

## 1.4.0

- Bump `super_measurement`
- Removed `Precision.none`

## 1.3.0
- Bump `freezed`

## 1.2.2
- Bump Dart SDK

## 1.2.1
- Add support for web

## 1.2.1
- Add Oedema field to weight based measurement
- Fix age miscalculation

## 1.1.4
- Dependency update
- Some measurement API changes

## 1.1.3
- Bug fix
- Minor refractor

## 1.1.2
- Dependencies update

## 1.1.1

- Various bug fix

## 1.1.0

- Refactoring
- Bug fix
- Improved API

## 1.0.7

- API fix
- Remove some unused code
- More test

## 1.0.6

- Several Bug fix
- Add WHO Growth Velocity

## 1.0.5

- Add Fenton preterm growth standards

## 1.0.4

- Add CDC measurement

## 1.0.3

- Exposing additional types

## 1.0.2

- Exposing data API

## 1.0.1

- Some minor refactoring

## 1.0.0

- Initial version.
