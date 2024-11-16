import 'package:anime_convention/features/character/provider/provider.dart';
import 'package:anime_convention/features/character/widgets/character_body.dart';
import 'package:flutter/material.dart';

class CharacterPage extends StatelessWidget {
  const CharacterPage({super.key});

  static Route<dynamic> route(int id) => MaterialPageRoute<dynamic>(
        builder: (_) => ProviderScope(
          overrides: [characterIdProvider.overrideWithValue(id)],
          child: const CharacterPage(),
        ),
      );

  @override
  Widget build(BuildContext context) => Scaffold(
        body: CharacterView(),
      );
}

class CharacterView extends StatelessWidget {
  const CharacterView({super.key});

  @override
  Widget build(BuildContext context) => const CharacterBody();
}
