part of '../../../intergrowth.dart';

class IntergrowthSymphysisFundalHeightForAgeData extends AgeBasedData {
  factory IntergrowthSymphysisFundalHeightForAgeData() => _singleton;
  IntergrowthSymphysisFundalHeightForAgeData._(this._data);

  static final _singleton =
      IntergrowthSymphysisFundalHeightForAgeData._(_parse());

  static Map<Sex, Map<num, _IntergrowthSymphysisFundalHeightForAgeLMS>>
      _parse() {
    final map = _grow_sfh_new.toJsonObjectAsMap.map(
      (k1, v1) {
        v1 as Map<String, dynamic>;
        final lms =
            LMS(l: v1['l'] as num, m: v1['m'] as num, s: v1['s'] as num);
        return MapEntry(
          int.parse(k1),
          _IntergrowthSymphysisFundalHeightForAgeLMS(
            lms: lms,
          ),
        );
      },
    );
    return {
      Sex.male: map,
      Sex.female: map,
    };
  }

  final Map<Sex, Map<num, _IntergrowthSymphysisFundalHeightForAgeLMS>> _data;
  @override
  Map<Sex, Map<num, _IntergrowthSymphysisFundalHeightForAgeLMS>> get data =>
      _data;

  @override
  String toString() => 'Early Pregnancy Dating For CRL Data($_data)';

  @override
  TimeUnit get unit => TimeUnit.weeks;
}

@freezed
sealed class IntergrowthSymphysisFundalHeightForAge extends AgeBasedResult
    with _$IntergrowthSymphysisFundalHeightForAge {
  factory IntergrowthSymphysisFundalHeightForAge({
    required Age age,
    required Length length,
  }) = _IntergrowthSymphysisFundalHeightForAge;

  const IntergrowthSymphysisFundalHeightForAge._();

  factory IntergrowthSymphysisFundalHeightForAge.fromJson(
    Map<String, dynamic> json,
  ) =>
      _$IntergrowthSymphysisFundalHeightForAgeFromJson(json);

  @override
  IntergrowthSymphysisFundalHeightForAgeData get contextData =>
      IntergrowthSymphysisFundalHeightForAgeData();

  _IntergrowthSymphysisFundalHeightForAgeLMS get _ageData => contextData
      ._data.values.first[ageAtObservationDate.ageInTotalWeeksByNow]!;

  num get _zScore =>
      _ageData.lms.adjustedZScore(measurementResultInDefaultUnit);

  @override
  Age get ageAtObservationDate => checkAge(
        age,
        contextData: contextData,
      );

  @override
  num zScore([
    Precision precision = Precision.ten,
  ]) =>
      _zScore.precision(precision);

  @override
  num percentile([
    Precision precision = Precision.ten,
  ]) =>
      (pnorm(_zScore) * 100).precision(precision);

  @override
  _IntergrowthSymphysisFundalHeightForAgeLMS get lmsData => _ageData;

  @override
  num get measurementResultInDefaultUnit => length.toCentimeter.value;
}

class _IntergrowthSymphysisFundalHeightForAgeLMS extends LMSContext {
  _IntergrowthSymphysisFundalHeightForAgeLMS({
    required this.lms,
  });
  @override
  final LMS lms;

  @override
  String toString() => 'Weight For Height LMS($lms)';
}
