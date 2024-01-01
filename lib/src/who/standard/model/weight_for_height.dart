part of '../standard.dart';

class WeightForHeightData {
  factory WeightForHeightData() => _singleton;
  WeightForHeightData._(this._data);

  static final _singleton = WeightForHeightData._(_parse());

  static Map<Sex, _WeightForHeightGender> _parse() =>
      _wfhanthro.toJsonObjectAsMap.map(
        (k1, v1) => MapEntry(
          k1 == '1' ? Sex.male : Sex.female,
          _WeightForHeightGender(
            heightData: (v1 as Map<String, dynamic>).map((k2, v2) {
              v2 as Map<String, dynamic>;
              final lms =
                  (l: v2['l'] as num, m: v2['m'] as num, s: v2['s'] as num);
              return MapEntry(
                num.parse(k2),
                _WeightForHeightLMS(
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
  final Map<Sex, _WeightForHeightGender> _data;
  Map<Sex, _WeightForHeightGender> get data => _data;

  @override
  String toString() => 'Weight For Height Data($_data)';
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

  _WeightForHeightGender get _maleData => _weightForHeightData._data[Sex.male]!;
  _WeightForHeightGender get _femaleData =>
      _weightForHeightData._data[Sex.female]!;

  _WeightForHeightLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .heightData[_adjustedHeight.toDouble().toPrecision(1)]!;

  num get _zScore => _ageData.lms.adjustedZScore(weight.toKilograms.value!);

  // Age get _ageAtObservationDate => observationDate == null
  //     ? age
  //     : observationDate == Date.today()
  //         ? age
  //         : age.ageAtAnyPastDate(observationDate!);
  //
  //

  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);
}

class _WeightForHeightGender {
  _WeightForHeightGender({required this.heightData});

  final Map<num, _WeightForHeightLMS> heightData;
  @override
  String toString() => 'Gender Data($heightData)';
}

class _WeightForHeightLMS {
  _WeightForHeightLMS({
    required this.lms,
    required this.lorh,
    required this.percentileCutOff,
    required this.standardDeviationCutOff,
  });
  final LMS lms;
  final LengthHeigthMeasurementPosition lorh;
  final ZScoreCutOff standardDeviationCutOff;

  final PercentileCutOff percentileCutOff;

  @override
  String toString() =>
      'Height Data(LMS: $lms, Length/Height Measurement Position: $lorh, Standard Deviation CutOff: $standardDeviationCutOff, Percentile CutOff: $percentileCutOff)';
}
