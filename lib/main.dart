import 'package:anime_convention/shared/api/ferry_client.dart';
import 'package:anime_convention/shared/services/secure_storage_service.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:hive_flutter/hive_flutter.dart';

import 'features/auth/provider/auth_provider.dart';
import 'features/auth/widgets/login_widget.dart';
import 'features/home/home.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  final secureStorage = SecureStorageService();
  final savedToken = await secureStorage.getAccessToken();

  await Hive.initFlutter();
  final box = await Hive.openBox('graphql_cache');
  final store = HiveStore(box);
  final cache = Cache(store: store);

  runApp(
    ProviderScope(
      overrides: [
        initialTokenProvider.overrideWith((_) => savedToken),
        cacheProvider.overrideWith((_) => cache),
      ],
      child: const MyApp(),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final authState = ref.watch(authStateProvider);

    return CupertinoApp(
      title: 'Anime Conventions',
      theme: const CupertinoThemeData(
        primaryColor: CupertinoColors.systemPurple,
        brightness: Brightness.light,
        scaffoldBackgroundColor: CupertinoColors.systemBackground,
      ),
      home: authState == null
          ? LoginWidget() // Show login if not authenticated
          : const HomePage(), // Show home page if authenticated
    );
  }
}
