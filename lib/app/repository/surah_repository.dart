import 'package:dio/dio.dart';
import 'package:yaumil_app/url.dart';
import 'package:yaumil_app/app/helpers/response_format.dart';

class SurahRepository {
  Future<ResponseFormat> getDataSurahApi() async {
    try {
      Dio dio = Dio();
      Response response = await dio.get(urlSurah);
      return ResponseFormat(
          statusCode: response.statusCode!, data: response.data);
    } catch (e) {
      return ResponseFormat(statusCode: 404);
    }
  }
}
