import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  const SecureStorage(this._storage);
  final FlutterSecureStorage _storage;

  Future<void> saveAccessToken(String token) => _storage.write(key: 'access_token', value: token);
  Future<void> saveRefreshToken(String token) => _storage.write(key: 'refresh_token', value: token);
  Future<String?> accessToken() => _storage.read(key: 'access_token');
  Future<String?> refreshToken() => _storage.read(key: 'refresh_token');
  Future<void> clearSession() => _storage.deleteAll();
}
