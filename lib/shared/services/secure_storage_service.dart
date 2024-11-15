import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SecureStorageService {
  final FlutterSecureStorage _storage = const FlutterSecureStorage();

  Future<void> saveAccessToken(String token) async {
    await _storage.write(key: 'access_token', value: token);
  }

  Future<String?> getAccessToken() async => await _storage.read(key: 'access_token');

  Future<void> clearAccessToken() async {
    await _storage.delete(key: 'access_token');
  }
}

final secureStorageServiceProvider = Provider<SecureStorageService>((ref) => SecureStorageService());
