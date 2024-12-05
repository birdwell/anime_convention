import 'package:anime_convention/features/character/provider/provider.dart';
import 'package:anime_convention/features/character/view/character_view.dart';
import 'package:flutter/cupertino.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  static Route<dynamic> route(int id) => CupertinoPageRoute<dynamic>(
        builder: (_) => ProviderScope(
          overrides: [characterIdProvider.overrideWithValue(id)],
          child: const CharacterPage(),
        ),
      );

  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemBackground,
        child: SafeArea(
          top: false,
          child: CharacterView(),
        ),
      );
}
