# Comprehensive Measurement Verification Report

This report documents the manual cross-check of each measurement across all growth standards in the `who_growth_chart` package. The purpose is to ensure that source data is accurately mapped in the runtime models, preventing misinterpretation of units, sexes, or ages when computing Z-scores and percentiles.

## 1. WHO Standards (Birth to 5 Years & 5-19 Years)
**Sex Mapping**: `k1 == 1 ? Sex.male : Sex.female` (Verified across all WHO `.dart` models).
**LMS Method**: Box-Cox power exponential method `((X/M)^L - 1) / (L*S)`.

| Measurement | Source Data Unit | Runtime Implementation | Status |
| :--- | :--- | :--- | :--- |
| **Weight-for-Age** | Kilograms (kg) | `weight.toKilogram.value.toDouble()` | ✅ Verified |
| **Length/Height-for-Age** | Centimeters (cm) | `_adjustedLength.value.toDouble()` | ✅ Verified |
| **Weight-for-Length/Height** | Kilograms (kg) | `weight.toKilogram.value.toDouble()` | ✅ Verified |
| **BMI-for-Age** | kg/m² | `measurementResultInDefaultUnit` (double) | ✅ Verified |
| **Head Circumference** | Centimeters (cm) | `measurementResult.toCentimeter.value.toDouble()` | ✅ Verified |
| **Arm Circumference** | Centimeters (cm) | `measurementResult.toCentimeter.value.toDouble()` | ✅ Verified |
| **Skinfolds (Triceps/Subscapular)** | Millimeters (mm) | `measurementResult.toMillimeter.value.toDouble()` | ✅ Verified |
| **Velocities (Weight/Length/HC)** | kg/cm per interval | Evaluates difference over specified interval | ✅ Verified |

**Notes on Runtime Adjustments:**
- `_adjustedLength` correctly adds 0.7 cm for standing measurement in children < 24 months, and subtracts 0.7 cm for recumbent measurement in children >= 24 months.

## 2. CDC 2000 Growth Charts
**Sex Mapping**: `k1 == 1 ? Sex.male : Sex.female` (Verified).
**Age Handling**: CDC defines `Agemos` as completed months + 0.5 (e.g., exactly 2 years = 24.5 `Agemos`).

| Measurement | Source Data Unit | Runtime Implementation | Status |
| :--- | :--- | :--- | :--- |
| **Weight-for-Age (Infant & Older)** | Kilograms (kg) | `weight.toKilogram.value.toDouble()` | ✅ Verified |
| **Length/Stature-for-Age** | Centimeters (cm) | `_adjustedLength.value.toDouble()` | ✅ Verified |
| **Weight-for-Length/Stature** | Kilograms (kg) | `weight.toKilogram.value.toDouble()` | ✅ Verified |
| **BMI-for-Age** | kg/m² | `measurementResultInDefaultUnit` (double) | ✅ Verified |
| **Head Circumference** | Centimeters (cm) | `measurementResult.toCentimeter.value.toDouble()` | ✅ Verified |

**Notes on Runtime Adjustments:**
- `_adjustedLength` correctly adds 0.8 cm for standing measurement in children < 24 months, and subtracts 0.8 cm for recumbent measurement in children >= 24 months (per CDC guidelines).

## 3. Fenton Preterm Growth Charts
**Sex Mapping**: Explicit lists for boys (`fentonBoysWfA`) and girls (`fentonGirlsWfA`).
**Age Handling**: `PostmenstrualAge` (weeks/days mapped to total fractional weeks).

| Measurement | Source Data Unit | Runtime Implementation | Status |
| :--- | :--- | :--- | :--- |
| **Weight-for-Age** | **Grams (g)** | `weight.toGram.value.toDouble()` | ✅ Verified |
| **Length-for-Age** | Centimeters (cm) | `_adjustedLength.value.toDouble()` | ✅ Verified |
| **Head Circumference** | Centimeters (cm) | `measurementResult.toCentimeter.value.toDouble()` | ✅ Verified |

**Important Discovery:**
Fenton Weight-for-Age explicitly maps to **Grams (g)**. This prevents issues like passing `3000` (which implies 3000 kg if not wrapped properly). By using `super_measurement`'s `Mass$Kilogram(3.0)`, the package safely normalizes the value to `3000` grams internally, eliminating runtime user error.

## 4. INTERGROWTH-21st Standards
**Sex Mapping**: Explicit `_grow_newborn_boys_hc` or mapped as `Sex.male: map, Sex.female: map` (for gender-neutral pregnancy markers).
**Age Handling**: Uses `GestationalAge` (converted to fractional weeks or days, depending on the standard).

| Measurement | Source Data Unit | Runtime Implementation | Status |
| :--- | :--- | :--- | :--- |
| **Fetal Head Circumference** | **Millimeters (mm)** | `measurementResult.toMillimeter.value.toDouble()` | ✅ Verified |
| **Fetal Biparietal Diameter** | Millimeters (mm) | `measurementResult.toMillimeter.value.toDouble()` | ✅ Verified |
| **Fetal Occipitofrontal Diameter** | Millimeters (mm) | `measurementResult.toMillimeter.value.toDouble()` | ✅ Verified |
| **Fetal Abdominal Circumference** | Millimeters (mm) | `measurementResult.toMillimeter.value.toDouble()` | ✅ Verified |
| **Fetal Femur Length** | Millimeters (mm) | `measurementResult.toMillimeter.value.toDouble()` | ✅ Verified |
| **Early Pregnancy Dating (CRL)** | Millimeters (mm) | Uses CRL to calculate `GestationalAge` in days | ✅ Verified |
| **Symphysis-Fundal Height** | Centimeters (cm) | `measurementResult.toCentimeter.value.toDouble()` | ✅ Verified |
| **Gestational Weight Gain** | Kilograms (kg) | `weight.toKilogram.value.toDouble()` | ✅ Verified |
| **Newborn Weight** | Kilograms (kg) | `weight.toKilogram.value.toDouble()` | ✅ Verified |
| **Newborn Length** | Centimeters (cm) | `measurementResult.toCentimeter.value.toDouble()` | ✅ Verified |
| **Newborn Head Circumference** | Centimeters (cm) | `measurementResult.toCentimeter.value.toDouble()` | ✅ Verified |
| **Newborn Weight-Length Ratio** | Ratio (kg/m) | `measurementResult.value.toDouble()` | ✅ Verified |
| **Preterm Postnatal Weight** | Kilograms (kg) | `weight.toKilogram.value.toDouble()` | ✅ Verified |
| **Preterm Postnatal Length** | Centimeters (cm) | `measurementResult.toCentimeter.value.toDouble()` | ✅ Verified |
| **Preterm Postnatal HC** | Centimeters (cm) | `measurementResult.toCentimeter.value.toDouble()` | ✅ Verified |

**Important Discovery:**
Intergrowth uses **Millimeters (mm)** for almost all fetal ultrasound measurements. The runtime maps these exactly using `toMillimeter`, preventing issues if a clinician inputs `27.0` centimeters (the package safely normalizes this to `270` millimeters internally).

---
## Summary of Safeguards
1. **Strong Typing via `super_measurement`:** Every entry point forces the caller to declare the unit (e.g., `Length$Centimeter(27.0)` vs `Length$Millimeter(270.0)`). 
2. **Immutable Unit Coercion:** The getters `measurementResultInDefaultUnit` forcibly cast the strongly-typed wrappers into the exact unit required by the official LMS lookup tables.
3. **Sex Explicit Definitions:** `1` -> `Sex.male`, `2` -> `Sex.female` aligns with WHO/CDC raw data syntax perfectly.

**Conclusion**: The runtime models are perfectly mapped to the source definitions. No misinterpretation of measurements can occur due to the robust typing limits enforced.
