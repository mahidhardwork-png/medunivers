import 'package:dio/dio.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:pretty_dio_logger/pretty_dio_logger.dart';

import '../../services/secure_storage_service.dart';

final dioProvider = Provider<Dio>((ref) {
  final storage = ref.watch(secureStorageProvider);
  final dio = Dio(BaseOptions(baseUrl: 'https://api.meduniverse.health/v1', connectTimeout: const Duration(seconds: 20)));
  dio.interceptors.add(InterceptorsWrapper(
    onRequest: (options, handler) async {
      final token = await storage.readToken();
      if (token != null) options.headers['Authorization'] = 'Bearer $token';
      handler.next(options);
    },
    onError: (error, handler) async {
      if (error.type == DioExceptionType.connectionTimeout) {
        final clone = await dio.fetch(error.requestOptions);
        return handler.resolve(clone);
      }
      handler.next(error);
    },
  ));
  dio.interceptors.add(PrettyDioLogger(requestBody: true, requestHeader: true));
  return dio;
});

final secureStorageProvider = Provider<SecureStorageService>(
  (ref) => const SecureStorageService(FlutterSecureStorage()),
);
