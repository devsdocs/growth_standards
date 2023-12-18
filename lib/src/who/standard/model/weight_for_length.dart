part of '../standard.dart';

class WeigthForLengthData {
  factory WeigthForLengthData() => _singleton;
  WeigthForLengthData._(this._data);

  static final _singleton = WeigthForLengthData._(_parse());

  static Map<String, _WeigthForLengthGender> _parse() =>
      (json.decode(_wflanthro) as Map<String, dynamic>).map(
        (k1, v1) => MapEntry(
          k1,
          _WeigthForLengthGender(
            lengthData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              return MapEntry(
                k2,
                _WeigthForLengthLMS(
                  lms: (l: v2['l'], m: v2['m'], s: v2['s']),
                  lorh: v2['lorh'].toString().toLowerCase() == 'l'
                      ? LengthHeigthMeasurementPosition.recumbent
                      : LengthHeigthMeasurementPosition.standing,
                ),
              );
            }),
          ),
        ),
      );
  final Map<String, _WeigthForLengthGender> _data;
}

@freezed
class WeigthForLength with _$WeigthForLength {
  //TODO(devsdocs): Test this!
  @Assert(
    'adjustedLengthHeight(measure: measure,age: age,lengthHeight: length,).value! >= 45 && adjustedLengthHeight(measure: measure,age: age,lengthHeight: length,).value! <= 110 && length.toCentimeters.value! >= 45 && length.toCentimeters.value! <= 110',
    'Please correcting measurement position based on age',
  )
  //TODO(devsdocs): Test this!
  @Assert(
    'adjustedLengthHeight(measure: measure,age: age,lengthHeight: length,).value! >= 45 && adjustedLengthHeight(measure: measure,age: age,lengthHeight: length,).value! <= 110',
    'Length must be in range of 45 - 110 cm',
  )
  factory WeigthForLength({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @LengthConverter() required Length length,
    @MassConverter() required Mass weight,
    required LengthHeigthMeasurementPosition measure,
  }) = _WeigthForLength;

  const WeigthForLength._();

  factory WeigthForLength.fromJson(Map<String, dynamic> json) =>
      _$WeigthForLengthFromJson(json);

  num get _adjustedLength => adjustedLengthHeight(
        measure: measure,
        age: age,
        lengthHeight: length,
      ).value!;

  WeigthForLengthData get _weigthForLengthData => WeigthForLengthData();

  _WeigthForLengthGender get _maleData => _weigthForLengthData._data['1']!;
  _WeigthForLengthGender get _femaleData => _weigthForLengthData._data['2']!;

  _WeigthForLengthLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .lengthData[_adjustedLength.toDouble().toPrecision(1).toString()]!;

  num get _zScore => adjustedZScore(
        y: weight.toKilograms.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(_zScore).toDouble().toPrecision(2);

  // Age get _ageAtObservationDate => observationDate == null
  //     ? age
  //     : observationDate == Date.today()
  //         ? age
  //         : age.ageAtAnyPastDate(observationDate!);
}

class _WeigthForLengthGender {
  _WeigthForLengthGender({required this.lengthData});

  final Map<String, _WeigthForLengthLMS> lengthData;
}

class _WeigthForLengthLMS {
  _WeigthForLengthLMS({
    required this.lms,
    required this.lorh,
  });
  final LMS lms;
  final LengthHeigthMeasurementPosition lorh;
}
