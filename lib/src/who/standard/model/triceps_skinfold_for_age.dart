part of '../standard.dart';

class TricepsSkinfoldForAgeData {
  factory TricepsSkinfoldForAgeData() => _singleton;
  TricepsSkinfoldForAgeData._(this._data);

  static final _singleton = TricepsSkinfoldForAgeData._(_parse());

  static Map<Sex, _TricepsSkinfoldAgeGender> _parse() =>
      (json.decode(_tsanthro) as Map<String, dynamic>).map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _TricepsSkinfoldAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _TricepsSkinfoldForAgeLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
                ),
              );
            }),
          ),
        ),
      );
  final Map<Sex, _TricepsSkinfoldAgeGender> _data;
  Map<Sex, _TricepsSkinfoldAgeGender> get data => _data;

  @override
  String toString() => 'Triceps Skinfold For Age Data($_data)';
}

@freezed
class TricepsSkinfoldForAge with _$TricepsSkinfoldForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 91 && age.ageInTotalDaysByNow <= 1856',
    'Age must be in range of 91 - 1856 days',
  )
  factory TricepsSkinfoldForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @LengthConverter() required Length measurementResult,
  }) = _TricepsSkinfoldForAge;

  const TricepsSkinfoldForAge._();

  factory TricepsSkinfoldForAge.fromJson(Map<String, dynamic> json) =>
      _$TricepsSkinfoldForAgeFromJson(json);

  TricepsSkinfoldForAgeData get _tricepsSkinfoldData =>
      TricepsSkinfoldForAgeData();

  _TricepsSkinfoldAgeGender get _maleData =>
      _tricepsSkinfoldData._data[Sex.male]!;
  _TricepsSkinfoldAgeGender get _femaleData =>
      _tricepsSkinfoldData._data[Sex.female]!;

  _TricepsSkinfoldForAgeLMS get _ageData =>
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

class _TricepsSkinfoldAgeGender {
  _TricepsSkinfoldAgeGender({required this.ageData});
  final Map<int, _TricepsSkinfoldForAgeLMS> ageData;
  @override
  String toString() => 'Gender Data($ageData)';
}

class _TricepsSkinfoldForAgeLMS {
  _TricepsSkinfoldForAgeLMS({
    required this.lms,
    required this.standardDeviationCutOff,
    required this.percentileCutOff,
  });
  final LMS lms;
  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Age Data(LMS: $lms, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
