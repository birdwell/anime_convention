import 'package:anime_convention/features/auth/auth.dart';
import 'package:flutter/cupertino.dart';

class ProfilePage extends ConsumerWidget {
  const ProfilePage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Profile'),
        ),
        child: SafeArea(
          child: Center(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text(
                  'Profile Page',
                  style: TextStyle(fontSize: 24),
                ),
                const SizedBox(height: 20),
                CupertinoButton.filled(
                  onPressed: () {
                    ref.read(authStateProvider.notifier).logout();
                  },
                  child: const Text('Logout'),
                ),
              ],
            ),
          ),
        ),
      );
}
