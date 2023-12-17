part of '../standard.dart';

class SubscapularSkinfoldForAgeData {
  factory SubscapularSkinfoldForAgeData() => _singleton;
  SubscapularSkinfoldForAgeData._(this._data);

  static final _singleton = SubscapularSkinfoldForAgeData._(_parse());

  static Map<String, _SubscapularSkinfoldAgeGender> _parse() =>
      (json.decode(_ssanthro) as Map<String, dynamic>).map(
        (k1, v1) => MapEntry(
          k1,
          _SubscapularSkinfoldAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              return MapEntry(
                k2,
                _SubscapularSkinfoldForAgeLMS(
                  lms: (l: v2['l'], m: v2['m'], s: v2['s']),
                ),
              );
            }),
          ),
        ),
      );

  final Map<String, _SubscapularSkinfoldAgeGender> _data;
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
      _subscapularSkinfoldData._data['1']!;
  _SubscapularSkinfoldAgeGender get _femaleData =>
      _subscapularSkinfoldData._data['2']!;

  _SubscapularSkinfoldForAgeLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .ageData[_ageAtObservationDate.ageInTotalDaysByNow.toString()]!;

  num get _zScore => adjustedZScore(
        y: measurementResult.toCentimeters.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(_zScore).toDouble().toPrecision(2);

  Age get _ageAtObservationDate => observationDate == null
      ? age
      : observationDate == Date.today()
          ? age
          : age.ageAtAnyPastDate(observationDate!);
}

class _SubscapularSkinfoldAgeGender {
  _SubscapularSkinfoldAgeGender({required this.ageData});
  final Map<String, _SubscapularSkinfoldForAgeLMS> ageData;
}

class _SubscapularSkinfoldForAgeLMS {
  _SubscapularSkinfoldForAgeLMS({
    required this.lms,
  });
  final LMS lms;
}
