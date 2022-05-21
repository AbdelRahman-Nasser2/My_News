import 'package:dio/dio.dart';

class DioHelper {
  static late Dio dio;
  // bool? isDark = CacheHelper.getBoolean(key: 'isDark');

  static init() {
    //sources=techcrunch&apiKey=ee564a6a28654d1f967de3e14d78921f
    dio = Dio(BaseOptions(
        baseUrl: 'https://newsapi.org/', receiveDataWhenStatusError: true));
  }

  static Future<Response> getData(
      {required String url, required Map<String, dynamic> query}) async {
    return await dio.get(url, queryParameters: query);
  }
}
