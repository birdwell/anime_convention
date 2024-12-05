import 'package:anime_convention/features/auth/auth.dart';
import 'package:anime_convention/shared/providers/anilist_auth_service_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:logger/logger.dart';
import 'package:fluttertoast/fluttertoast.dart';

class LoginWidget extends ConsumerWidget {
  final Logger _logger = Logger();

  LoginWidget({super.key});

  Future<void> _handleLogin(WidgetRef ref) async {
    try {
      final token = await ref.read(aniListAuthServiceProvider).login();
      if (token != null) {
        ref.read(authStateProvider.notifier).login(token);
      } else {
        _logger.w('Login failed or was cancelled.');
        Fluttertoast.showToast(
          msg: 'Login was cancelled or failed. Please try again.',
        );
      }
    } catch (e) {
      _logger.e('Error during login: $e');
      Fluttertoast.showToast(msg: 'Error during login');
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) => CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Login'),
        ),
        child: SafeArea(
          child: Center(
            child: CupertinoButton.filled(
              onPressed: () => _handleLogin(ref),
              child: const Text('Login with AniList'),
            ),
          ),
        ),
      );
}
