part of '../standard.dart';

class WeightForAgeData {
  factory WeightForAgeData() => _singleton;
  WeightForAgeData._(this._data);

  static final _singleton = WeightForAgeData._(_parse());

  static Map<String, _WeightForAgeGender> _parse() =>
      (json.decode(_weianthro) as Map<String, dynamic>).map(
        (k1, v1) => MapEntry(
          k1,
          _WeightForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              return MapEntry(
                k2,
                _WeightForAgeLMS(lms: (l: v2['l'], m: v2['m'], s: v2['s'])),
              );
            }),
          ),
        ),
      );
  final Map<String, _WeightForAgeGender> _data;
}

@freezed
class WeightForAge with _$WeightForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856',
    'Age must be in range of 0 - 1856 days',
  )
  factory WeightForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @MassConverter() required Mass weight,
  }) = _WeightForAge;

  const WeightForAge._();

  factory WeightForAge.fromJson(Map<String, dynamic> json) =>
      _$WeightForAgeFromJson(json);

  WeightForAgeData get _weightForAgeData => WeightForAgeData();

  _WeightForAgeGender get _maleData => _weightForAgeData._data['1']!;
  _WeightForAgeGender get _femaleData => _weightForAgeData._data['2']!;

  _WeightForAgeLMS get _ageData => (sex == Sex.male ? _maleData : _femaleData)
      .ageData[_ageAtObservationDate.ageInTotalDaysByNow.toString()]!;

  num get _zScore => adjustedZScore(
        y: weight.toKilograms.value!,
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

class _WeightForAgeGender {
  _WeightForAgeGender({required this.ageData});

  final Map<String, _WeightForAgeLMS> ageData;
}

class _WeightForAgeLMS {
  _WeightForAgeLMS({
    required this.lms,
  });
  final LMS lms;
}
