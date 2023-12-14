import 'package:dio/dio.dart';

import 'common.dart';

const mainUri = 'raw.githubusercontent.com';

const prefix =
    'WorldHealthOrganization/anthro/master/data-raw/growthstandards/';

const suffix = '.txt';

final dio = Dio();
void main() async {
  dataMap.forEach((key, value) async {
    final fileName = key + suffix;
    final unencodedPath = prefix + fileName;
    final uri = Uri.https(mainUri, unencodedPath);

    await dio.downloadUri(
      uri,
      'dev/raw/$fileName',
    );
  });
}
