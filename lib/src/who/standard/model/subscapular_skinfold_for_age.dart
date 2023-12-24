part of '../standard.dart';

class SubscapularSkinfoldForAgeData {
  factory SubscapularSkinfoldForAgeData() => _singleton;
  SubscapularSkinfoldForAgeData._(this._data);

  static final _singleton = SubscapularSkinfoldForAgeData._(_parse());

  static Map<Sex, _SubscapularSkinfoldAgeGender> _parse() =>
      _ssanthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _SubscapularSkinfoldAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _SubscapularSkinfoldForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );

  final Map<Sex, _SubscapularSkinfoldAgeGender> _data;
  Map<Sex, _SubscapularSkinfoldAgeGender> get data => _data;

  @override
  String toString() => 'Subscapular Skinfold For Age Data($_data)';
}

@freezed
class SubscapularSkinfoldForAge with _$SubscapularSkinfoldForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 91 && age.ageInTotalDaysByNow <= 1856',
    'Age must be in range of 91 - 1856 days',
  )
  factory SubscapularSkinfoldForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @LengthConverter() required Length measurementResult,
  }) = _SubscapularSkinfoldForAge;

  const SubscapularSkinfoldForAge._();

  factory SubscapularSkinfoldForAge.fromJson(Map<String, dynamic> json) =>
      _$SubscapularSkinfoldForAgeFromJson(json);

  SubscapularSkinfoldForAgeData get _subscapularSkinfoldData =>
      SubscapularSkinfoldForAgeData();

  _SubscapularSkinfoldAgeGender get _maleData =>
      _subscapularSkinfoldData._data[Sex.male]!;
  _SubscapularSkinfoldAgeGender get _femaleData =>
      _subscapularSkinfoldData._data[Sex.female]!;

  _SubscapularSkinfoldForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[_ageAtObservationDate.ageInTotalDaysByNow]!;

  num get _zScore =>
      _ageData.lms.adjustedZScore(measurementResult.toCentimeters.value!);

  Age get _ageAtObservationDate => observationDate == null
      ? age
      : observationDate == Date.today()
          ? age
          : age.ageAtAnyPastDate(observationDate!);

  num zScore([
    Precision precision = Precision.nine,
  ]) =>
      _zScore.toDouble().toPrecision(precision.value);

  num percentile([
    Precision precision = Precision.nine,
  ]) =>
      (pnorm(_zScore) * 100).toDouble().toPrecision(precision.value);
}

class _SubscapularSkinfoldAgeGender {
  _SubscapularSkinfoldAgeGender({required this.ageData});
  final Map<int, _SubscapularSkinfoldForAgeLMS> ageData;
  @override
  String toString() => 'Gender Data($ageData)';
}

class _SubscapularSkinfoldForAgeLMS {
  _SubscapularSkinfoldForAgeLMS({
    required this.lms,
    required this.percentileCutOff,
    required this.standardDeviationCutOff,
  });
  final LMS lms;

  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Age Data(LMS: $lms, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
