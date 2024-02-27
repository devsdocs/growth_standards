import 'package:freezed_annotation/freezed_annotation.dart';

part 'survey.freezed.dart';

@freezed
class Survey with _$Survey {
  factory Survey(List<List<dynamic>> surveyData) = _Survey;

  const Survey._();

  factory Survey.fromData() {
    return Survey([[]]);
  }
}
