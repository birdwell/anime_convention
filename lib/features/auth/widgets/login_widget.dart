import 'package:anime_convention/shared/providers/anilist_auth_service_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:logger/logger.dart';
import 'package:fluttertoast/fluttertoast.dart';

import '../../../shared/services/secure_storage_service.dart';

class LoginWidget extends ConsumerWidget {
  final Logger _logger = Logger();

  LoginWidget({super.key});

  Future<void> _handleLogin(WidgetRef ref) async {
    try {
      final token = await ref.read(aniListAuthServiceProvider).login();
      if (token != null) {
        await ref.read(secureStorageServiceProvider).saveAccessToken(token);
      } else {
        _logger.w('Login failed or was cancelled.');
      }
    } catch (e) {
      _logger.e('Error during login: $e');
      Fluttertoast.showToast(msg: 'Error during login');
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
      appBar: AppBar(title: const Text('Login')),
      body: Center(
        child: ElevatedButton(
          onPressed: () => _handleLogin(ref),
          child: const Text('Login with AniList'),
        ),
      ),
    );
}
