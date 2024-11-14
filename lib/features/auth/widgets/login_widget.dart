import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/services/anilist_auth_service.dart';
import '../../../shared/services/secure_storage_service.dart';
import '../provider/auth_provider.dart';

class LoginWidget extends ConsumerWidget {
  final AniListAuthService _authService = AniListAuthService();
  final SecureStorageService _storageService = SecureStorageService();

  LoginWidget({super.key});

  Future<void> _handleLogin(WidgetRef ref) async {
    try {
      final token = await _authService.login();
      if (token != null) {
        // Save the token securely
        await _storageService.saveAccessToken(token);

        // Update the auth state
        ref.read(authStateProvider.notifier).state = token;
      } else {
        // Handle login failure
        print('Login failed or was cancelled.');
      }
    } catch (e) {
      print('Error during login: $e');
      // Handle exceptions
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _handleLogin(ref),
          child: const Text('Login with AniList'),
        ),
      ),
    );
  }
}
