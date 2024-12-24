import 'package:dio/dio.dart';
import 'package:injectable/injectable.dart';

@module
abstract class ApiService {
  @Singleton()
  Dio get dio => Dio(
    BaseOptions(
      baseUrl: "http://3.6.158.28/api/",
      contentType: Headers.formUrlEncodedContentType,
    ),
  );
}
