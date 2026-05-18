import 'package:dio/dio.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_secure_storage/flutter_secure_storage.dart';

import '../../features/auth/data/datasources/auth_remote_data_source.dart';
import '../../features/auth/data/repositories/auth_repository_impl.dart';
import '../../features/auth/domain/repositories/auth_repository.dart';
import '../../features/auth/domain/usecases/sign_in_usecase.dart';
import '../../features/auth/domain/usecases/sign_out_usecase.dart';
import '../../features/auth/domain/usecases/sign_up_usecase.dart';
import '../network/api_client.dart';
import '../network/dio_api_client.dart';
import '../storage/secure_storage.dart';

final firebaseAuthProvider = Provider<FirebaseAuth>((ref) => FirebaseAuth.instance);
final secureStorageProvider = Provider<SecureStorage>((ref) => const SecureStorage(FlutterSecureStorage()));

final dioProvider = Provider<Dio>((ref) {
  return Dio(BaseOptions(baseUrl: 'https://api.meduniverse.health/v1', connectTimeout: const Duration(seconds: 20), receiveTimeout: const Duration(seconds: 20)));
});

final apiClientProvider = Provider<ApiClient>((ref) => DioApiClient(ref.watch(dioProvider), ref.watch(secureStorageProvider)));

final authRemoteDataSourceProvider = Provider<AuthRemoteDataSource>(
  (ref) => AuthRemoteDataSource(ref.watch(firebaseAuthProvider), ref.watch(secureStorageProvider)),
);
final authRepositoryProvider = Provider<AuthRepository>(
  (ref) => AuthRepositoryImpl(ref.watch(authRemoteDataSourceProvider)),
);

final signInUseCaseProvider = Provider<SignInUseCase>((ref) => SignInUseCase(ref.watch(authRepositoryProvider)));
final signUpUseCaseProvider = Provider<SignUpUseCase>((ref) => SignUpUseCase(ref.watch(authRepositoryProvider)));
final signOutUseCaseProvider = Provider<SignOutUseCase>((ref) => SignOutUseCase(ref.watch(authRepositoryProvider)));
