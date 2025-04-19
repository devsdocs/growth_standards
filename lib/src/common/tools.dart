import 'package:growth_standards/src/common/model/age.dart';

Age checkObservationDate(Age age, [Date? observationDate]) =>
    observationDate == null ? age : age.ageAtPastDate(observationDate);
