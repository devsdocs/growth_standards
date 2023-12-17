part of '../standard.dart';

class LengthForAgeData {
  factory LengthForAgeData() => _singleton;
  LengthForAgeData._(this._data);
  static final _singleton = LengthForAgeData._(_parse());

  static Map<String, _LengthForAgeGender> _parse() =>
      (json.decode(_lenanthro) as Map<String, dynamic>).map(
        (k1, v1) => MapEntry(
          k1,
          _LengthForAgeGender(
            ageData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              return MapEntry(
                k2,
                _LengthForAgeLMS(
                  lms: (l: v2['l'], m: v2['m'], s: v2['s']),
                  loh: v2['loh'].toString().toLowerCase() == 'l'
                      ? LengthHeigthMeasurementPosition.recumbent
                      : LengthHeigthMeasurementPosition.standing,
                ),
              );
            }),
          ),
        ),
      );
  final Map<String, _LengthForAgeGender> _data;
}

@freezed
class LengthForAge with _$LengthForAge {
  @Assert(
    'age.ageInTotalDaysByNow >= 0 && age.ageInTotalDaysByNow <= 1856',
    'Age must be in range of 0 - 1856 days',
  )
  factory LengthForAge({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @LengthConverter() required Length lengthHeight,
    required LengthHeigthMeasurementPosition measure,
  }) = _LengthForAge;

  const LengthForAge._();

  factory LengthForAge.fromJson(Map<String, dynamic> json) =>
      _$LengthForAgeFromJson(json);

  LengthForAgeData get _lengthForAgeData => LengthForAgeData();

  _LengthForAgeGender get _maleData => _lengthForAgeData._data['1']!;
  _LengthForAgeGender get _femaleData => _lengthForAgeData._data['2']!;

  _LengthForAgeLMS get _ageData => (sex == Sex.male ? _maleData : _femaleData)
      .ageData[_ageAtObservationDate.ageInTotalDaysByNow.toString()]!;

  num get _zScore => zscore(
        y: adjustedLengthHeight(
          lengthHeight: lengthHeight.toCentimeters.value!,
          ageInDays: age.ageInTotalDaysByNow,
          measure: measure,
        ),
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(zScore).toDouble().toPrecision(2);

  Age get _ageAtObservationDate => observationDate == null
      ? age
      : observationDate == Date.today()
          ? age
          : age.ageAtAnyPastDate(observationDate!);
}

class _LengthForAgeGender {
  _LengthForAgeGender({required this.ageData});
  final Map<String, _LengthForAgeLMS> ageData;
}

class _LengthForAgeLMS {
  _LengthForAgeLMS({
    required this.lms,
    required this.loh,
  });
  final LMS lms;
  final LengthHeigthMeasurementPosition loh;
}
