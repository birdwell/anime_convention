import 'package:anime_convention/shared/services/secure_storage_service.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'auth_provider.g.dart';

final initialTokenProvider = Provider<String?>((ref) => null);

@Riverpod(keepAlive: true)
class AuthState extends _$AuthState {
  void logout() {
    state = null;
  }

  void login(String token) async {
    state = token;
    await ref.read(secureStorageServiceProvider).saveAccessToken(token);
  }

  @override
  String? build() => ref.read(initialTokenProvider);
}
