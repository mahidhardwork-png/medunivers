import 'package:dio/dio.dart';

import 'api_client.dart';
import '../storage/secure_storage.dart';

class DioApiClient implements ApiClient {
  DioApiClient(this._dio, this._storage) {
    _dio.interceptors.add(
      InterceptorsWrapper(
        onRequest: (options, handler) async {
          final token = await _storage.accessToken();
          if (token != null && token.isNotEmpty) {
            options.headers['Authorization'] = 'Bearer $token';
          }
          handler.next(options);
        },
      ),
    );
  }

  final Dio _dio;
  final SecureStorage _storage;

  @override
  Future<Response> request(String path, {HttpMethod method = HttpMethod.get, Map<String, dynamic>? query, body, Map<String, dynamic>? headers}) async {
    final options = Options(method: method.name.toUpperCase(), headers: headers);
    return _dio.request(path, data: body, queryParameters: query, options: options);
  }
}
