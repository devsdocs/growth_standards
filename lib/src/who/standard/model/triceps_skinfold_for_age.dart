part of '../standard.dart';

class TricepsSkinfoldForAgeData {
  factory TricepsSkinfoldForAgeData() => _singleton;
  TricepsSkinfoldForAgeData._()
      : _data = (json.decode(_tsanthro) as Map<String, dynamic>).map(
          (k1, v1) => MapEntry(
            k1,
            _TricepsSkinfoldAgeGender(
              ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
                v2 as Map<String, dynamic>;
                return MapEntry(
                  k2,
                  _TricepsSkinfoldForAgeLMS(
                    lms: (l: v2['l'], m: v2['m'], s: v2['s']),
                  ),
                );
              }),
            ),
          ),
        );

  static final _singleton = TricepsSkinfoldForAgeData._();

  final Map<String, _TricepsSkinfoldAgeGender> _data;
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
    required Length measurementResult,
    required TricepsSkinfoldForAgeData tricepsSkinfoldData,
  }) = _TricepsSkinfoldForAge;

  const TricepsSkinfoldForAge._();

  _TricepsSkinfoldAgeGender get _maleData => tricepsSkinfoldData._data['1']!;
  _TricepsSkinfoldAgeGender get _femaleData => tricepsSkinfoldData._data['2']!;

  _TricepsSkinfoldForAgeLMS get _ageData =>
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

class _TricepsSkinfoldAgeGender {
  _TricepsSkinfoldAgeGender({required this.ageData});
  final Map<String, _TricepsSkinfoldForAgeLMS> ageData;
}

class _TricepsSkinfoldForAgeLMS {
  _TricepsSkinfoldForAgeLMS({
    required this.lms,
  });
  final LMS lms;
}
