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
              final lms =
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                int.parse(k2),
                _WeigthForLengthLMS(
                  lms: lms,
                  percentileCutOff: lms.percentileCutOff,
                  standardDeviationCutOff: lms.stDevCutOff,
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
  Map<String, _WeigthForLengthGender> get data => _data;

  @override
  String toString() => 'Weight For Length Data($_data)';
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
          .lengthData[_adjustedLength.toDouble().toPrecision(1)]!;

  num get _zScore => _ageData.lms.adjustedZScore(weight.toKilograms.value!);

  // Age get _ageAtObservationDate => observationDate == null
  //     ? age
  //     : observationDate == Date.today()
  //         ? age
  //         : age.ageAtAnyPastDate(observationDate!);

  num zScore([
    Precision precision = Precision.nine,
  ]) =>
      _zScore.toDouble().toPrecision(precision.value);

  num percentile([
    Precision precision = Precision.nine,
  ]) =>
      (pnorm(_zScore) * 100).toDouble().toPrecision(precision.value);
}

class _WeigthForLengthGender {
  _WeigthForLengthGender({required this.lengthData});

  final Map<num, _WeigthForLengthLMS> lengthData;
  @override
  String toString() => 'Gender Data($lengthData)';
}

class _WeigthForLengthLMS {
  _WeigthForLengthLMS({
    required this.lms,
    required this.lorh,
    required this.standardDeviationCutOff,
    required this.percentileCutOff,
  });
  final LMS lms;
  final LengthHeigthMeasurementPosition lorh;

  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Length Data(LMS: $lms, Length/Height Measurement Position: $lorh, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
