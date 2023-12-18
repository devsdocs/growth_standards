part of '../standard.dart';

class WeightForHeightData {
  factory WeightForHeightData() => _singleton;
  WeightForHeightData._(this._data);

  static final _singleton = WeightForHeightData._(_parse());

  static Map<String, _WeightForHeightGender> _parse() =>
      (json.decode(_wfhanthro) as Map<String, dynamic>).map(
        (k1, v1) => MapEntry(
          k1,
          _WeightForHeightGender(
            heightData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              return MapEntry(
                k2,
                _WeightForHeightLMS(
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
  final Map<String, _WeightForHeightGender> _data;
}

@freezed
class WeightForHeight with _$WeightForHeight {
  //TODO(devsdocs): Test this!
  @Assert(
    'adjustedLengthHeight(measure: measure,age: age,lengthHeight: height,).value! >= 65 && adjustedLengthHeight(measure: measure,age: age,lengthHeight: height,).value! <= 120 && height.toCentimeters.value! >= 65 && height.toCentimeters.value! <= 120',
    'Please correcting measurement position based on age',
  )
  //TODO(devsdocs): Test this!
  @Assert(
    'adjustedLengthHeight(measure: measure,age: age,lengthHeight: height,).value! >= 65 && adjustedLengthHeight(measure: measure,age: age,lengthHeight: height,).value! <= 120',
    'Height must be in range of 65 - 120 cm',
  )
  factory WeightForHeight({
    Date? observationDate,
    required Sex sex,
    required Age age,
    @LengthConverter() required Length height,
    @MassConverter() required Mass weight,
    required LengthHeigthMeasurementPosition measure,
  }) = _WeightForHeight;

  const WeightForHeight._();

  factory WeightForHeight.fromJson(Map<String, dynamic> json) =>
      _$WeightForHeightFromJson(json);

  num get _adjustedHeight => adjustedLengthHeight(
        measure: measure,
        age: age,
        lengthHeight: height,
      ).value!;

  WeightForHeightData get _weightForHeightData => WeightForHeightData();

  _WeightForHeightGender get _maleData => _weightForHeightData._data['1']!;
  _WeightForHeightGender get _femaleData => _weightForHeightData._data['2']!;

  _WeightForHeightLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .heightData[_adjustedHeight.toDouble().toPrecision(1).toString()]!;

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

class _WeightForHeightGender {
  _WeightForHeightGender({required this.heightData});

  final Map<String, _WeightForHeightLMS> heightData;
}

class _WeightForHeightLMS {
  _WeightForHeightLMS({
    required this.lms,
    required this.lorh,
  });
  final LMS lms;
  final LengthHeigthMeasurementPosition lorh;
}
