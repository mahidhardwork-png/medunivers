import 'package:dio/dio.dart';

enum HttpMethod { get, post, put, patch, delete }

abstract class ApiClient {
  Future<Response<dynamic>> request(
    String path, {
    HttpMethod method = HttpMethod.get,
    Map<String, dynamic>? query,
    dynamic body,
    Map<String, dynamic>? headers,
  });
}
