# REFERENCES

This document provides comprehensive references for all growth standards implemented in this library, including official documentation, scientific publications, and data sources.

## Table of Contents

- [WHO Child Growth Standards (2006)](#who-child-growth-standards-2006)
- [WHO Growth Reference (2007) - 5-19 Years](#who-growth-reference-2007---5-19-years)
- [CDC Growth Charts (2000)](#cdc-growth-charts-2000)
- [Fenton Growth Charts (2013)](#fenton-growth-charts-2013)
- [INTERGROWTH-21st Standards](#intergrowth-21st-standards)
- [Statistical Methods (LMS)](#statistical-methods-lms)
- [Software and Tools](#software-and-tools)

---

## WHO Child Growth Standards (2006)

### Official Documentation

**WHO Child Growth Standards: Length/height-for-age, weight-for-age, weight-for-length, weight-for-height and body mass index-for-age: Methods and development**

- **Authors**: World Health Organization Multicentre Growth Reference Study Group (MGRS)
- **Published**: 2006
- **Publisher**: World Health Organization, Geneva
- **ISBN**: 9789241546930
- **Pages**: 312
- **DOI**: 10.1542/peds.113.2.593
- **URL**: https://www.who.int/tools/child-growth-standards/standards
- **PDF**: https://www.who.int/publications/i/item/9789241546930

**Key Features:**
- Multicentre Growth Reference Study (MGRS) data from 6 countries (Brazil, Ghana, India, Norway, Oman, USA)
- 8,440 healthy breastfed infants and young children
- Normative standard (prescriptive) - how children SHOULD grow under optimal conditions
- Age range: Birth to 5 years (0-60 months)
- Indicators: Length/height-for-age, weight-for-age, weight-for-length, weight-for-height, BMI-for-age, head circumference-for-age, arm circumference-for-age, triceps skinfold-for-age, subscapular skinfold-for-age
- Methodology: Box-Cox power exponential (BCPE) and LMS method

### Scientific Publications

**1. de Onis M, Garza C, Onyango AW, Martorell R. (Eds.) WHO Child Growth Standards: Length/height-for-age, weight-for-age, weight-for-length, weight-for-height and body mass index-for-age: Methods and development. Geneva: World Health Organization, 2006.**

- **Citations**: 3,576+
- **Open Access**: Yes
- **URL**: https://scispace.com/papers/who-child-growth-standards-length-height-for-age-weight-for-4748oe1ful

**2. World Health Organization. World Health Organization releases new Child Growth Standards. Press Release, 27 April 2006.**

- **URL**: https://www.who.int/news/item/27-04-2006-world-health-organization-releases-new-child-growth-standards

**3. de Onis M, Onyango AW, Borghi E, Siyam A, Nishida C, Siekmann J. Development of a WHO growth reference for school-aged children and adolescents. Bulletin of the World Health Organization. 2007;85(9):660-667.**

- **DOI**: 10.2471/BLT.07.043497
- **PMID**: 18026621
- **PMCID**: PMC2636412
- **URL**: https://www.who.int/tools/growth-reference-data-for-5to19-years

### Data Sources

**WHO Child Growth Standards Data Files (CDC Mirror)**

- **URL**: https://www.cdc.gov/growthcharts/who-data-files.htm
- **Files Available**:
  - WHO-Boys-Weight-for-age-Percentiles.csv
  - WHO-Girls-Weight-for-age Percentiles.csv
  - WHO-Boys-Length-for-age-Percentiles.csv
  - WHO-Girls-Length-for-age-Percentiles.csv
  - WHO-Boys-Weight-for-length-Percentiles.csv
  - WHO-Girls-Weight-for-length-Percentiles.csv
  - WHO-Boys-Head-Circumference-for-age-Percentiles.csv
  - WHO-Girls-Head-Circumference-for-age-Percentiles.csv
  - WHO-Boys-BMI-for-age-Percentiles.csv
  - WHO-Girls-BMI-for-age-Percentiles.csv

**GitHub Data Repository**

- **Repository**: rcpch/growth-references
- **URL**: https://github.com/rcpch/growth-references/blob/main/who2006/WHO2006.csv
- **Description**: LMS parameters for WHO 2006 standards

### Software and Tools

**WHO Anthro (PC Software)**

- **Version**: 3.2.2
- **Platform**: Windows
- **URL**: https://www.who.int/tools/child-growth-standards/software
- **Manual**: https://cdn.who.int/media/docs/default-source/child-growth/child-growth-standards/software/anthro-pc-manual-v322.pdf
- **Precision**: Double precision (64-bit), display rounded to 2 decimals

**WHO AnthroPlus (PC Software)**

- **Version**: 1.0.4
- **Platform**: Windows
- **URL**: https://www.who.int/tools/child-growth-standards/software
- **Manual**: https://www.who.int/docs/default-source/child-growth/growth-reference-5-19-years/who-anthroplus-manual.pdf
- **Age Range**: 5-19 years

**WHO Igrowup (SPSS Macro)**

- **Platform**: SPSS
- **URL**: https://www.who.int/tools/child-growth-standards/software
- **Manual**: https://cdn.who.int/media/docs/default-source/child-growth/child-growth-standards/software/readme-spss.pdf

**WHO Igrowup (SAS Macro)**

- **Platform**: SAS
- **URL**: https://www.who.int/tools/child-growth-standards/software
- **Manual**: https://cdn.who.int/media/docs/default-source/child-growth/child-growth-standards/software/readme-sas.pdf

**WHO Igrowup (Stata Macro)**

- **Platform**: Stata
- **URL**: https://www.who.int/tools/child-growth-standards/software
- **Repository**: https://github.com/unicef-drp/igrowup_update

**R Package: anthro**

- **CRAN**: https://cran.r-project.org/package=anthro
- **URL**: https://rdrr.io/cran/anthro/
- **Description**: R implementation of WHO growth standards

**R Package: zscorer**

- **CRAN**: https://cran.r-project.org/package=zscorer
- **URL**: https://rdrr.io/cran/zscorer/
- **Description**: Simplified z-score calculation using WHO standards

**R Package: gigs**

- **Repository**: https://github.com/ropensci/gigs
- **URL**: https://researchonline.lshtm.ac.uk/id/eprint/4679554/1/parker-et-al-2025-gigs-a-package-for-standardizing-fetal-neonatal-and-child-growth-assessment-with-extensions-to-egen.pdf
- **Description**: Package for standardizing fetal, neonatal, and child growth assessment

---

## WHO Growth Reference (2007) - 5-19 Years

### Official Documentation

**Development of a WHO growth reference for school-aged children and adolescents**

- **Authors**: de Onis M, Onyango AW, Borghi E, Siyam A, Nishida C, Siekmann J
- **Published**: 2007
- **Journal**: Bulletin of the World Health Organization
- **Volume**: 85(9)
- **Pages**: 660-667
- **DOI**: 10.2471/BLT.07.043497
- **PMID**: 18026621
- **PMCID**: PMC2636412
- **URL**: https://www.who.int/tools/growth-reference-data-for-5to19-years

**Key Features:**
- Reconstructed 1977 NCHS/WHO reference (5-19 years)
- Supplemented with WHO Child Growth Standards data (under-fives)
- Same statistical methodology as WHO 2006 standards (BCPE method)
- Descriptive reference - how children DID grow in US population
- Age range: 5-19 years (61-228 months)
- Indicators: Height-for-age, weight-for-age, BMI-for-age
- Smooth transition at 5 years with WHO 2006 standards

### Data Sources

**WHO Growth Reference Data Files (5-19 Years)**

- **URL**: https://www.who.int/tools/growth-reference-data-for-5to19-years
- **Files Available**:
  - Weight-for-age (boys and girls)
  - Height-for-age (boys and girls)
  - BMI-for-age (boys and girls)

---

## CDC Growth Charts (2000)

### Official Documentation

**CDC Growth Charts: United States**

- **Authors**: Kuczmarski RJ, Ogden CL, Grummer-Strawn LM
- **Published**: December 2000
- **Series**: Advance Data from Vital and Health Statistics
- **Number**: 314
- **Pages**: 28
- **URL**: https://www.cdc.gov/nchs/data/ad/ad314.pdf
- **PubMed**: 11183293

**2000 CDC Growth Charts for the United States: Methods and Development**

- **Authors**: Kuczmarski RJ, Ogden CL, Guo SS, Grummer-Strawn LM, Flegal KM, Mei Z, Wei R, Curtin LR, Roche AF, Johnson CL
- **Published**: May 2002
- **Series**: Vital and Health Statistics. Series 11
- **Number**: 246
- **Pages**: 190
- **DHHS Publication**: (PHS) 2002-1696
- **URL**: https://stacks.cdc.gov/view/cdc/6451
- **PubMed**: 12043359

**Key Features:**
- Data from five national health examination surveys (1963-1994)
- 14 NCHS growth charts revised
- New BMI-for-age charts created
- Age range: Birth to 20 years
- Two-stage smoothing approach
- Descriptive reference - how children DID grow in US population
- Racial/ethnic diversity represented
- Combined breast- and formula-fed infants

### Scientific Publications

**1. Kuczmarski RJ, Ogden CL, Grummer-Strawn LM, et al. CDC growth charts: United States. Advance Data. 2000;(314):1-28.**

- **Citations**: 5,175+
- **PubMed**: 11183293
- **URL**: https://pubmed.ncbi.nlm.nih.gov/11183293/

**2. Kuczmarski RJ, Ogden CL, Guo SS, et al. 2000 CDC growth charts for the United States: methods and development. Vital Health Stat 11. 2002;(246):1-190.**

- **Citations**: 3,736+
- **PubMed**: 12043359
- **URL**: https://pubmed.ncbi.nlm.nih.gov/12043359/

### Data Sources

**CDC Growth Charts Data Files**

- **URL**: https://www.cdc.gov/growthcharts/cdc-data-files.htm
- **Files Available**:
  - Boys: Weight-for-age, Length-for-age, Weight-for-length, Weight-for-stature, BMI-for-age, Head circumference-for-age
  - Girls: Weight-for-age, Length-for-age, Weight-for-length, Weight-for-stature, BMI-for-age, Head circumference-for-age
- **Format**: Excel and CSV files with LMS parameters

**SAS Program for CDC Growth Charts**

- **URL**: http://med.iiab.me/modules/en-cdc/www.cdc.gov/nccdphp/dnpao/growthcharts/resources/sas.htm
- **Description**: SAS program to calculate percentiles and z-scores based on CDC growth charts

---

## Fenton Growth Charts (2013)

### Official Documentation

**A systematic review and meta-analysis to revise the Fenton growth chart for preterm infants**

- **Authors**: Fenton TR, Kim JH
- **Published**: 20 April 2013
- **Journal**: BMC Pediatrics
- **Volume**: 13
- **Article Number**: 59
- **DOI**: 10.1186/1471-2431-13-59
- **URL**: https://link.springer.com/article/10.1186/1471-2431-13-59
- **Open Access**: Yes

**Key Features:**
- Revision of 2003 Fenton Preterm Growth Chart
- Harmonized with WHO 2006 Growth Standard
- Sex-specific growth curves
- Actual age (vs completed weeks) on x-axis
- Birth size data from 3,986,456 births
- Age range: 22 weeks gestational age to 50 weeks post-menstrual age
- Indicators: Weight, length, head circumference
- Methodology: Cubic splines, LMS parameters
- Data sources: Germany, USA, Italy, Australia, Scotland, Canada

### Scientific Publications

**1. Fenton TR, Kim JH. A systematic review and meta-analysis to revise the Fenton growth chart for preterm infants. BMC Pediatr. 2013;13:59.**

- **Citations**: 500+
- **DOI**: 10.1186/1471-2431-13-59
- **URL**: https://doi.org/10.1186/1471-2431-13-59

**2. Fenton TR, Nasser R, Eliasziw M, Kim JH, Bilan D, Sauve R. Validating the weight gain of preterm infants between the reference growth curve of the fetus and the term infant. BMC Pediatr. 2013;13(1):92.**

- **DOI**: 10.1186/1471-2431-13-92
- **URL**: https://bmcpediatr.biomedcentral.com/articles/10.1186/1471-2431-13-92

**3. Fenton TR, Elmrayed S, Alshaikh BN. Fenton third-generation Growth Charts of preterm infants without abnormal fetal growth: A systematic review and meta-analysis. Paediatr Perinat Epidemiol. 2025.**

- **Status**: Forthcoming (2025)
- **URL**: https://ucalgary.ca/resource/preterm-growth-chart/preterm-growth-chart

**4. Fenton TR, Griffin IJ, Hoyos A, Groh-Wargo S, Anderson D, Ehrenkranz RA, Senterre T. Accuracy of preterm infant weight gain velocity calculations vary depending on method used and infant age at time of measurement. Pediatr Res. 2019 Apr;85(5):650-654.**

- **PMID**: 30705399
- **DOI**: 10.1038/s41390-019-0330-y

**5. Fenton TR, Senterre T, Griffin IJ. Time interval for preterm infant weight gain velocity calculation precision. Arch Dis Child Fetal Neonatal Ed. 2019 Mar;104(2):F218-F219.**

- **PMID**: 29997166
- **DOI**: 10.1136/archdischild-2018-315636

### Data Sources

**Fenton Growth Chart Official Site**

- **URL**: https://fentongrowth.ca/
- **University of Calgary**: https://ucalgary.ca/resource/preterm-growth-chart/
- **Data**: LMS parameters for weight, length, head circumference
- **Calculators**: Online calculator and mobile apps available

**Fenton Preterm Growth Tracker App**

- **Platform**: iOS/Android
- **Description**: Track preterm infant growth using Fenton 2013 charts
- **URL**: https://ucalgary.ca/resource/preterm-growth-chart/calculators-apps

---

## INTERGROWTH-21st Standards

### Official Documentation

**International standards for newborn weight, length, and head circumference by gestational age and sex: the Newborn Cross-Sectional Study of the INTERGROWTH-21st Project**

- **Authors**: Villar J, Papageorghiou AT, Pang R, Ohuma EO, Cheikh Ismail L, Barros FC, Lambert A, Carvalho MHB, Jaffer YA, Silverio F, Altman DG, Noble JA, Jurti B, Bertino E, Purwar M, Frederick IO, Giussani DA, Kramer MS, Victor CG, Knight HE, GRIG (Global Research on Intrauterine Growth Standards) Consortium
- **Published**: 6 September 2014
- **Journal**: The Lancet
- **Volume**: 384
- **Issue**: 9946
- **Pages**: 857-868
- **DOI**: 10.1016/S0140-6736(14)60932-6
- **PMID**: 25209487
- **URL**: https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(14)60932-6/abstract
- **Citations**: 2,300+

**International standards for fetal growth based on serial ultrasound measurements: the Fetal Growth Longitudinal Study of the INTERGROWTH-21st Project**

- **Authors**: Papageorghiou AT, Ohuma EO, Altman DG, Todros T, Cheikh Ismail L, Lambert A, Jaffer YA, Silverio F, Bertino E, Gravett MG, Purwar M, Jaffer Y, Noble JA, Pang R, Victora CG, Villar J
- **Published**: 6 September 2014
- **Journal**: The Lancet
- **Volume**: 384
- **Issue**: 9946
- **Pages**: 869-879
- **DOI**: 10.1016/S0140-6736(14)61490-2
- **Citations**: 879+

**The likeness of fetal growth and newborn size across non-isolated populations in the INTERGROWTH-21st Project: the Fetal Growth Longitudinal Study and Newborn Cross-Sectional Study**

- **Authors**: Villar J, Papageorghiou AT, Pang R, Ohuma EO, Cheikh Ismail L, Barros FC, Lambert A, Carvalho MHB, Jaffer YA, Silverio F, Altman DG, Noble JA, Jurti B, Bertino E, Purwar M, Frederick IO, Giussani DA, Kramer MS, Victor CG, Knight HE
- **Published**: 2014
- **Journal**: PLoS Medicine
- **DOI**: 10.1371/journal.pmed.1001660
- **PMID**: 25009082
- **Citations**: 247+

**Key Features:**
- Population-based project (8 urban populations)
- 20,486 eligible women, 60,000 fetuses
- Prescriptive standard (optimal conditions)
- Age range: Fetal growth to postnatal period
- Indicators: Weight, length, head circumference, estimated fetal weight
- Methodology: Fractional polynomials assuming skewed t distribution
- Components: Fetal Growth Longitudinal Study (FGLS), Preterm Postnatal Follow-up Study (PPFS), Newborn Cross-Sectional Study (NCSS)

### Scientific Publications

**1. Villar J, Papageorghiou AT, Pang R, et al. International standards for newborn weight, length, and head circumference by gestational age and sex: the Newborn Cross-Sectional Study of the INTERGROWTH-21st Project. Lancet. 2014;384(9946):857-868.**

- **Citations**: 2,300+
- **DOI**: 10.1016/S0140-6736(14)60932-6
- **URL**: https://pubmed.ncbi.nlm.nih.gov/25209487/

**2. Papageorghiou AT, Ohuma EO, Altman DG, et al. International standards for fetal growth based on serial ultrasound measurements: the Fetal Growth Longitudinal Study of the INTERGROWTH-21st Project. Lancet. 2014;384(9946):869-879.**

- **Citations**: 879+
- **DOI**: 10.1016/S0140-6736(14)61490-2
- **URL**: https://doi.org/10.1016/s0140-6736(14)61490-2

**3. Cheikh Ismail L, Knight HE, Bhutta ZA, Chumlea WC. Anthropometric protocols for the construction of new international fetal and newborn growth standards: the INTERGROWTH-21st Project. BJOG. 2013;120(s2):42-47.**

- **DOI**: 10.1111/1471-0528.12125
- **URL**: https://doi.org/10.1111/1471-0528.12125

**4. Cheikh Ismail L, Knight HE, Ohuma EO, Hoch L, Chumlea WC. Anthropometric standardisation and quality control protocols for the construction of new, international, fetal and newborn growth standards: the INTERGROWTH-21st Project. BJOG. 2013;120(s2):48-55.**

- **DOI**: 10.1111/1471-0528.12127
- **URL**: https://doi.org/10.1111/1471-0528.12127

**5. Papageorghiou AT, Kennedy S, Salomon L, et al. International standards for early fetal size and pregnancy dating based on ultrasound measurement of crown-rump length in the first trimester of pregnancy. Ultrasound Obstet Gynecol. 2014;44(6):641-648.**

- **DOI**: 10.1002/uog.13448
- **URL**: https://doi.org/10.1002/uog.13448

### Data Sources

**INTERGROWTH-21st Official Site**

- **URL**: https://intergrowth21.tghn.org/
- **Data**: Coefficient tables for fetal growth, newborn size, early pregnancy dating

**R Package: intergrowth**

- **Repository**: https://github.com/nutriverse/intergrowth
- **URL**: https://rdrr.io/github/nutriverse/intergrowth/
- **Description**: R implementation of INTERGROWTH-21st standards

**R Package: gigs**

- **Repository**: https://github.com/ropensci/gigs
- **Description**: Unified interface for WHO and INTERGROWTH-21st standards

---

## Statistical Methods (LMS)

### Foundational Papers

**1. Cole TJ. The LMS method for constructing normalized growth standards. Eur J Clin Nutr. 1990;44(1):45-60.**

- **Citations**: 1,000+
- **DOI**: 10.1038/ejcn.140054
- **URL**: https://popline.org/node/144

**Key Concepts:**
- Box-Cox power transformation to normalize skewed distributions
- L (lambda): Box-Cox power for skewness
- M (mu): Median
- S (sigma): Coefficient of variation
- Converts measurements to exact SD scores (z-scores)

**2. Cole TJ. Fitting Smoothed Centile Curves to Reference Data. J R Stat Soc Ser A. 1988;151(3):385-406.**

- **Citations**: 500+
- **DOI**: 10.2307/2982992
- **URL**: https://ideas.repec.org/a/bla/jorssa/v151y1988i3p385-406.html

**3. Cole TJ, Green PJ. Smoothing reference centile curves: the LMS method and penalized likelihood. Stat Med. 1992;11(10):1305-1319.**

- **Citations**: 2,781+
- **DOI**: 10.1002/sim.4780111005
- **URL**: https://onlinelib.wiley.com/doi/10.1002/sim.4780111005

**Key Concepts:**
- Penalized likelihood for smoothing
- Cubic splines for L, M, S curves
- Equivalent degrees of freedom for smoothing parameters

**4. Rigby RA, Stasinopoulos DM. Smooth centile curves for skew and kurtotic data modelled using the Box-Cox power exponential distribution. Stat Med. 2004;23(19):3053-3076.**

- **Citations**: 500+
- **DOI**: 10.1002/sim.1786
- **URL**: https://doi.org/10.1002/sim.1786

**Key Concepts:**
- Box-Cox power exponential (BCPE) distribution
- Used in WHO 2006 standards
- More flexible than LMS for highly skewed data

### LMS Formula

**Z-score from measurement (when L ≠ 0):**
```
Z = ((X/M)^L - 1) / (L * S)
```

**Z-score from measurement (when L = 0):**
```
Z = ln(X/M) / S
```

**Measurement from z-score (when L ≠ 0):**
```
X = M * (1 + L * S * Z)^(1/L)
```

**Measurement from z-score (when L = 0):**
```
X = M * exp(S * Z)
```

Where:
- X = measurement (weight, length, etc.)
- M = median at given age/sex
- L = Box-Cox power (skewness)
- S = coefficient of variation
- Z = z-score

---

## Software and Tools

### R Packages

**anthro**
- **CRAN**: https://cran.r-project.org/package=anthro
- **Description**: Calculate z-scores using WHO growth standards
- **URL**: https://rdrr.io/cran/anthro/

**zscorer**
- **CRAN**: https://cran.r-project.org/package=zscorer
- **Description**: Simplified z-score calculation
- **URL**: https://rdrr.io/cran/zscorer/

**gigs**
- **Repository**: https://github.com/ropensci/gigs
- **Description**: Standardizing fetal, neonatal, and child growth
- **Paper**: https://researchonline.lshtm.ac.uk/id/eprint/4679554/1/parker-et-al-2025-gigs-a-package-for-standardizing-fetal-neonatal-and-child-growth-assessment-with-extensions-to-egen.pdf

**intergrowth**
- **Repository**: https://github.com/nutriverse/intergrowth
- **Description**: INTERGROWTH-21st standards implementation
- **URL**: https://rdrr.io/github/nutriverse/intergrowth/

### Stata Modules

**zscore06**
- **Description**: Calculate anthropometric z-scores using WHO 2006 standards
- **Repository**: https://econpapers.repec.org/bocode/boc/bocode/s457279.html
- **Precision**: Double precision (64-bit)
- **Documentation**: Differences up to 0.01 acceptable vs igrowup

**igrowup**
- **Description**: WHO macro for calculating z-scores
- **Repository**: https://github.com/unicef-drp/igrowup_update
- **Updated by**: UNICEF for complex survey designs

### Python Libraries

**anthstat-statistics**
- **Repository**: https://github.com/erik1066/anthstat-statistics
- **Description**: Calculate z-scores using WHO 2006, WHO 2007, and CDC 2000
- **URL**: https://github.com/erik1066/anthstat-statistics

### Web Calculators

**Fenton Preterm Growth Chart Calculator**
- **URL**: https://metricgate.com/docs/neonatal-growth-z-score-fenton/
- **Description**: Calculate z-scores for preterm infants using Fenton 2013 charts

**Growth Chart Calculator**
- **URL**: https://growthchartcalculator.org/
- **Description**: Online calculator for WHO and CDC growth charts

---

## Precision and Calculation Requirements

### WHO 2006 Standards

- **Storage Type**: Double precision (64-bit floating point)
- **Internal Precision**: Full precision (all decimal points)
- **Display Precision**: 2 decimal places
- **Acceptable Difference**: ≤ 0.01 between implementations
- **Source**: WHO zscore06 documentation

### CDC 2000 Charts

- **Storage Type**: Double precision (64-bit floating point)
- **Internal Precision**: Full precision
- **Display Precision**: 2 decimal places
- **Acceptable Difference**: ≤ 0.01 (consistent with WHO standards)
- **Source**: CDC SAS documentation

### Fenton 2013 Charts

- **Storage Type**: Double precision (64-bit floating point)
- **Internal Precision**: Full precision
- **Display Precision**: 2 decimal places
- **Interpolation**: Linear interpolation for fractional gestational ages
- **Source**: Fenton growth chart documentation

### INTERGROWTH-21st Standards

- **Storage Type**: Double precision (64-bit floating point)
- **Internal Precision**: Full precision
- **Display Precision**: 2 decimal places
- **Interpolation**: Linear interpolation for coefficients between discrete values
- **Source**: gigs package documentation

---

## Version History

### WHO Standards

- **1977**: NCHS/WHO growth reference (descriptive)
- **1983**: WHO/NCHS reference for international use
- **2006**: WHO Child Growth Standards (normative, prescriptive)
- **2007**: WHO Growth Reference for 5-19 years (reconstructed NCHS/WHO)

### CDC Charts

- **1977**: NCHS growth charts
- **2000**: CDC growth charts (revised NCHS)

### Fenton Charts

- **2003**: Original Fenton preterm growth chart
- **2013**: Revised Fenton growth chart (harmonized with WHO 2006)

### INTERGROWTH-21st

- **2014**: Fetal growth, newborn size, and early pregnancy dating standards

---

## Related Standards

### NCHS/WHO Growth Reference (1977)

- **Status**: Deprecated, replaced by WHO 2006 and CDC 2000
- **Age Range**: Birth to 18 years
- **Type**: Descriptive reference

### British 1990 Growth Reference

- **Authors**: Cole TJ, Freeman JV, Preece MA
- **Published**: 1998
- **Journal**: Annals of Human Biology
- **DOI**: 10.1016/S0301-4460(98)00039-0
- **Status**: Used in UK, replaced by WHO 2006

---

## Citation Format

### For WHO 2006 Standards

```
World Health Organization. WHO Child Growth Standards: Length/height-for-age, weight-for-age, weight-for-length, weight-for-height and body mass index-for-age: Methods and development. Geneva: World Health Organization, 2006.
```

### For CDC 2000 Charts

```
Kuczmarski RJ, Ogden CL, Grummer-Strawn LM, et al. CDC growth charts: United States. Adv Data. 2000;(314):1-28.
```

### For Fenton 2013 Charts

```
Fenton TR, Kim JH. A systematic review and meta-analysis to revise the Fenton growth chart for preterm infants. BMC Pediatr. 2013;13:59.
```

### For INTERGROWTH-21st Standards

```
Villar J, Papageorghiou AT, Pang R, et al. International standards for newborn weight, length, and head circumference by gestational age and sex: the Newborn Cross-Sectional Study of the INTERGROWTH-21st Project. Lancet. 2014;384(9946):857-868.
```

---

## Acknowledgments

This library implements growth standards developed by the following organizations:

- **World Health Organization (WHO)** - WHO Child Growth Standards (2006) and WHO Growth Reference (2007)
- **Centers for Disease Control and Prevention (CDC)** - CDC Growth Charts (2000)
- **University of Calgary** - Fenton Growth Charts (2013)
- **INTERGROWTH-21st Consortium** - INTERGROWTH-21st Standards (2014)

Special thanks to the researchers and institutions who contributed to the development of these standards through extensive multicentre studies and statistical analysis.

---

## License Information

Different growth standards have different licensing terms:

- **WHO Standards**: Public domain / WHO copyright (allows reproduction with attribution)
- **CDC Charts**: Public domain (US government work)
- **Fenton Charts**: Creative Commons Attribution License (CC BY)
- **INTERGROWTH-21st**: Published under Creative Commons or similar open access licenses

When using this library, please cite the appropriate original sources for the growth standards you are using.

---

## Contact and Support

For questions about specific growth standards:

- **WHO**: https://www.who.int/tools/child-growth-standards
- **CDC**: https://www.cdc.gov/growthcharts
- **Fenton**: https://fentongrowth.ca/
- **INTERGROWTH-21st**: https://intergrowth21.tghn.org/

For questions about this library implementation, please refer to the project repository.

---

## Comparison of Growth Standards

### WHO 2006 vs CDC 2000

| Aspect | WHO 2006 Standards | CDC 2000 Charts |
|--------|-------------------|-----------------|
| **Type** | Normative (prescriptive) | Descriptive (reference) |
| **Data Source** | 6 countries, optimal conditions | 5 US national surveys |
| **Feeding Pattern** | Healthy breastfed infants | Mixed (breast + formula) |
| **Philosophy** | How children SHOULD grow | How children DID grow |
| **Age Range** | 0-5 years | 0-20 years |
| **Use** | International standard | US clinical practice |
| **BMI Charts** | Available (0-5 years) | Available (2-20 years) |
| **Head Circumference** | Available (0-5 years) | Available (0-36 months) |
| **Adoption** | Recommended by WHO | Recommended by CDC |

**Key Differences:**
- WHO infants are heavier at birth but lighter by 5 years than CDC
- WHO curves show different growth patterns for breastfed infants
- CDC charts represent US racial/ethnic diversity
- WHO is recommended for international comparisons
- CDC is recommended for US clinical practice (especially 2-20 years)

### WHO 2006 vs WHO 2007 (5-19 years)

| Aspect | WHO 2006 Standards | WHO 2007 Reference |
|--------|-------------------|-------------------|
| **Type** | Normative (prescriptive) | Descriptive (reference) |
| **Age Range** | 0-5 years | 5-19 years |
| **Data Source** | MGRS (6 countries) | NCHS/WHO (US) + WHO 2006 under-fives |
| **Transition** | N/A | Smooth transition at 5 years |
| **Use** | International standard | International reference |
| **Indicators** | 8 indicators | 3 indicators (height, weight, BMI) |

**Key Differences:**
- WHO 2006 is prescriptive (optimal conditions)
- WHO 2007 is descriptive (how children grew in US)
- WHO 2007 fills gap between WHO 2006 and adult BMI cut-offs
- Smooth transition at 5 years between the two

### Fenton 2013 vs WHO 2006

| Aspect | Fenton 2013 | WHO 2006 |
|--------|-------------|-----------|
| **Target Population** | Preterm infants (22-50 weeks PMA) | Term infants (0-5 years) |
| **Age Range** | 22 weeks gestation to 50 weeks PMA | Birth to 5 years |
| **Data Source** | Meta-analysis of birth size (4M births) | Longitudinal study (8,440 children) |
| **Type** | Normative (harmonized with WHO) | Normative (prescriptive) |
| **Sex-Specific** | Yes | Yes |
| **X-Axis** | Actual age (not completed weeks) | Age in months |
| **Use** | Preterm infant growth monitoring | Infant growth assessment |

**Key Differences:**
- Fenton designed specifically for preterm infants
- Fenton harmonized with WHO 2006 at 50 weeks PMA
- Fenton uses actual age (decimal) vs completed weeks
- Fenton includes fetal growth data

### INTERGROWTH-21st vs WHO 2006

| Aspect | INTERGROWTH-21st | WHO 2006 |
|--------|------------------|-----------|
| **Target Population** | Fetuses, newborns, preterm infants | Infants and young children |
| **Age Range** | Fetal to postnatal period | Birth to 5 years |
| **Data Source** | 8 urban populations (multicentre) | 6 countries (MGRS) |
| **Type** | Normative (prescriptive) | Normative (prescriptive) |
| **Indicators** | Weight, length, HC, EFW, CRL | 8 indicators |
| **Methodology** | Fractional polynomials (skewed t) | BCPE/LMS |
| **Use** | Fetal and newborn assessment | Infant growth assessment |

**Key Differences:**
- INTERGROWTH covers fetal period (before birth)
- INTERGROWTH includes early pregnancy dating (CRL)
- INTERGROWTH focuses on optimal fetal growth
- WHO 2006 focuses on postnatal growth

---

## When to Use Which Standard

### WHO 2006 Standards (0-5 years)
- **Use when**: Assessing growth of infants and young children internationally
- **Recommended for**: Clinical practice, research, public health monitoring
- **Best for**: Breastfed infants, international comparisons
- **Not recommended for**: US clinical practice (use CDC instead)

### CDC 2000 Charts (0-20 years)
- **Use when**: Assessing growth in US clinical practice
- **Recommended for**: US children and adolescents
- **Best for**: US population, mixed feeding patterns
- **Not recommended for**: International comparisons

### WHO 2007 Reference (5-19 years)
- **Use when**: Assessing growth of school-aged children and adolescents
- **Recommended for**: International monitoring (5-19 years)
- **Best for**: Transition from WHO 2006 to adult BMI cut-offs
- **Note**: Descriptive reference, not prescriptive standard

### Fenton 2013 Charts (Preterm)
- **Use when**: Monitoring growth of preterm infants
- **Recommended for**: NICUs, preterm infant care
- **Best for**: Preterm infants 22-50 weeks PMA
- **Note**: Harmonized with WHO 2006 at 50 weeks PMA

### INTERGROWTH-21st Standards
- **Use when**: Assessing fetal growth and newborn size
- **Recommended for**: Prenatal care, newborn assessment
- **Best for**: International fetal growth standards
- **Note**: Complements WHO 2006 for fetal period

---

## Implementation Notes

### Age Calculation

**WHO 2006:**
- Age in days for WHO standards (0-5 years)
- Age in months for WHO reference (5-19 years)
- Exact age used for interpolation

**CDC 2000:**
- Age in months for 0-20 years
- Half-month points represent entire month (e.g., 1.5 = 1.0-1.99 months)

**Fenton 2013:**
- Post-menstrual age (PMA) in weeks
- Actual age (decimal) not completed weeks
- Gestational age at birth required

**INTERGROWTH-21st:**
- Gestational age in weeks (fetal)
- Post-menstrual age (newborns)
- Crown-rump length for dating (first trimester)

### Measurement Units

**Weight:**
- WHO 2006: Kilograms (kg)
- CDC 2000: Kilograms (kg)
- Fenton 2013: Grams (g) for weight, centimeters (cm) for length/HC
- INTERGROWTH-21st: Grams (g)

**Length/Height:**
- WHO 2006: Length (0-24 months), Height (24-60 months)
- CDC 2000: Length (0-36 months), Height (2-20 years)
- Fenton 2013: Centimeters (cm)
- INTERGROWTH-21st: Centimeters (cm)

**Head Circumference:**
- WHO 2006: Centimeters (cm)
- CDC 2000: Centimeters (cm)
- Fenton 2013: Centimeters (cm)
- INTERGROWTH-21st: Centimeters (cm)

### Sex Assignment

All standards require sex assignment:
- Male = 1
- Female = 2
- Must be specified for accurate z-score calculation

### Extreme Values

**WHO 2006 Flagging Limits:**
- Weight-for-age: -6 to +5 SD
- Length/height-for-age: -6 to +6 SD
- Weight-for-length/height: -5 to +5 SD
- BMI-for-age: -5 to +5 SD
- Head circumference-for-age: -5 to +5 SD

**CDC 2000 Flagging Limits:**
- Weight-for-age (0-239 months): -5 to +8 SD
- Height-for-age (0-239 months): -5 to +4 SD
- Weight-for-height: -4 to +8 SD
- BMI-for-age (24-239 months): -4 to +8 SD
- Head circumference (0-35 months): -5 to +5 SD

**Biologically Implausible Values:**
- Values outside these ranges may indicate measurement errors
- Should be flagged for review
- May require re-measurement

---

## Validation and Quality Control

### WHO MGRS Quality Control

- **Standardization sessions**: Every 2 months
- **Annual re-standardization**: Against WHO lead anthropometrist
- **Intraobserver TEM**: 0.3-0.4 cm (HC), 0.3-0.5 cm (length)
- **Interobserver TEM**: Similar ranges
- **Data quality**: High quality with rigorous protocols

### INTERGROWTH-21st Quality Control

- **Standardization**: Nairobi, Kenya (newborns)
- **Site-specific sessions**: 8 participating sites
- **Trained anthropometrists**: Identical equipment at all sites
- **Protocol adherence**: Continuous monitoring
- **Data validation**: Real-time quality control

### CDC NHANES Quality Control

- **National surveys**: 1963-1994
- **Trained examiners**: Standardized protocols
- **Quality assurance**: Ongoing monitoring
- **Data cleaning**: Rigorous validation procedures

---

## Frequently Asked Questions

### Q: Why are there different growth standards?

**A:** Different standards serve different purposes:
- **WHO 2006**: International normative standard (how children SHOULD grow)
- **CDC 2000**: US descriptive reference (how US children DID grow)
- **Fenton 2013**: Preterm-specific (how preterm infants SHOULD grow)
- **INTERGROWTH-21st**: Fetal and newborn standards (how fetuses SHOULD grow)

### Q: Which standard should I use?

**A:** Depends on your use case:
- **International research/clinical**: WHO 2006 (0-5 years)
- **US clinical practice**: CDC 2000 (0-20 years)
- **Preterm infants**: Fenton 2013
- **Fetal assessment**: INTERGROWTH-21st
- **School-aged children**: WHO 2007 (5-19 years)

### Q: Can I switch between standards?

**A:** Generally not recommended for longitudinal tracking:
- Switching may show apparent growth changes due to different reference populations
- Consistency is important for tracking individual children over time
- WHO recommends using one standard consistently

### Q: What's the difference between z-score and percentile?

**A:** 
- **Z-score**: Number of standard deviations from median (evenly spaced)
- **Percentile**: Percentage of reference population below the measurement
- **Relationship**: Z-score of 0 = 50th percentile, Z-score of 1 = ~84th percentile
- **Advantage of z-scores**: Better for extreme values and statistical analysis

### Q: Why do z-scores differ between implementations?

**A:** Small differences (<0.01) are normal due to:
- Floating-point precision differences
- Interpolation methods
- Rounding in intermediate calculations
- WHO officially documents acceptable difference of ≤0.01

### Q: How accurate are the growth standards?

**A:** Very accurate, based on:
- Large sample sizes (thousands to millions of measurements)
- Rigorous quality control protocols
- Standardized measurement techniques
- State-of-the-art statistical methods
- Ongoing validation studies

---

## Glossary

**BCPE (Box-Cox Power Exponential)**
- Statistical method used in WHO 2006 standards
- More flexible than LMS for highly skewed data
- Models skewness, kurtosis, median, and coefficient of variation

**BMI (Body Mass Index)**
- Weight (kg) / Height² (m²)
- Measure of body fatness
- Used for assessing overweight/obesity

**Head Circumference**
- Circumference of head at widest point
- Indicator of brain growth
- Used for infants 0-3 years

**LMS Method**
- Lambda (L): Box-Cox power (skewness)
- Mu (M): Median
- Sigma (S): Coefficient of variation
- Normalizes skewed distributions

**MGRS (Multicentre Growth Reference Study)**
- WHO study conducted 1997-2003
- 6 countries, 8,440 children
- Basis for WHO 2006 standards

**PMA (Post-Menstrual Age)**
- Age calculated from first day of last menstrual period
- Used for preterm infants
- Expressed in weeks

**SD (Standard Deviation)**
- Measure of dispersion
- Z-score units
- 1 SD = ~15th to 85th percentile
- 2 SD = ~2.5th to 97.5th percentile

**Skewness**
- Asymmetry of distribution
- Positive skew: tail to the right
- Negative skew: tail to the left
- Growth data often positively skewed

**TEM (Technical Error of Measurement)**
- Measure of precision
- Difference between repeated measurements
- Lower TEM = higher precision

**Z-Score**
- Number of standard deviations from median
- Also called SD score
- Range typically -3 to +3 for normal growth

---

## Appendix: Calculation Examples

### Example 1: WHO Weight-for-Age Calculation

**Input:**
- Boy, 12 months, 9.5 kg
- L = 0.0644, M = 9.6479 kg, S = 0.10925

**Calculation:**
```
Z = ((9.5/9.6479)^0.0644 - 1) / (0.0644 * 0.10925)
Z = (0.9847^0.0644 - 1) / 0.007036
Z = (0.9955 - 1) / 0.007036
Z = -0.0045 / 0.007036
Z = -0.145
```

**Result:** Z = -0.145, Percentile = 44.3%

### Example 2: Fenton Weight-for-Age Calculation

**Input:**
- Boy, 32 weeks PMA, 1500 g
- L = 0.2, M = 1800 g, S = 0.12 (example values)

**Calculation:**
```
Z = ((1500/1800)^0.2 - 1) / (0.2 * 0.12)
Z = (0.8333^0.2 - 1) / 0.024
Z = (0.9649 - 1) / 0.024
Z = -0.0351 / 0.024
Z = -1.463
```

**Result:** Z = -1.46, Percentile = 7.2%

### Example 3: Percentile from Z-Score

**Formula:**
```
Percentile = Φ(Z) * 100
```
Where Φ is the standard normal cumulative distribution function

**Example:**
- Z = 1.0
- Φ(1.0) = 0.8413
- Percentile = 84.13%

---

## Update Log

**Version 1.0 (2026)**
- Initial release
- Comprehensive documentation for all growth standards
- Official references and scientific publications
- Software and tools section
- Comparison and implementation notes

---

*Last Updated: 2026*
*Version: 1.0*