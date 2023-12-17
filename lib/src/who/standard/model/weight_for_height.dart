part of '../standard.dart';

class WeightForHeightData {
  factory WeightForHeightData() => _singleton;
  WeightForHeightData._()
      : _data = (json.decode(_wfhanthro) as Map<String, dynamic>).map(
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

  static final _singleton = WeightForHeightData._();

  final Map<String, _WeightForHeightGender> _data;
}

@freezed
class WeightForHeight with _$WeightForHeight {
  //TODO(devsdocs): Test this!
  @Assert(
    'adjustedLengthHeight(measure: measure,ageInDays: age.ageInTotalDaysByNow,lengthHeight: height.toCentimeters.value!,) >= 65 && adjustedLengthHeight(measure: measure,ageInDays: age.ageInTotalDaysByNow,lengthHeight: height.toCentimeters.value!,) <= 120 && height.toCentimeters.value! >= 65 && height.toCentimeters.value! <= 120',
    'Please correcting measurement position based on age',
  )
  //TODO(devsdocs): Test this!
  @Assert(
    'adjustedLengthHeight(measure: measure,ageInDays: age.ageInTotalDaysByNow,lengthHeight: height.toCentimeters.value!,) >= 65 && adjustedLengthHeight(measure: measure,ageInDays: age.ageInTotalDaysByNow,lengthHeight: height.toCentimeters.value!,) <= 120',
    'Height must be in range of 65 - 120 cm',
  )
  factory WeightForHeight({
    Date? observationDate,
    required Sex sex,
    required Age age,
    required Length height,
    required Mass mass,
    required LengthHeigthMeasurementPosition measure,
    required WeightForHeightData weightForHeightData,
  }) = _WeightForHeight;

  const WeightForHeight._();

  num get _adjustedHeight => adjustedLengthHeight(
        measure: measure,
        ageInDays: age.ageInTotalDaysByNow,
        lengthHeight: height.toCentimeters.value!,
      );

  _WeightForHeightGender get _maleData => weightForHeightData._data['1']!;
  _WeightForHeightGender get _femaleData => weightForHeightData._data['2']!;

  _WeightForHeightLMS get _ageData =>
      (sex == Sex.male ? _maleData : _femaleData)
          .heightData[_adjustedHeight.toDouble().toPrecision(1).toString()]!;

  num get _zScore => adjustedZScore(
        y: mass.toKilograms.value!,
        l: _ageData.lms.l,
        m: _ageData.lms.m,
        s: _ageData.lms.s,
      );

  num get zScore => _zScore.toDouble().toPrecision(2);

  num get percentile => zScoreToPercentile(_zScore).toDouble().toPrecision(2);

  Age get ageAtObservationDate => observationDate == null
      ? age
      : observationDate == Date.today()
          ? age
          : age.ageAtAnyPastDate(observationDate!);
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
