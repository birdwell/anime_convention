import 'package:anime_convention/features/home/widgets/signed_character_widget.dart';
import 'package:anime_convention/shared/services/signed_characters_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignedCharactersBody extends ConsumerWidget {
  const SignedCharactersBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signedCharacters = ref.watch(signedCharactersProvider);

    if (signedCharacters.isEmpty) {
      return const Center(
        child: Text('No signed characters.'),
      );
    }

    return ListView.builder(
      padding: const EdgeInsets.all(8),
      itemCount: signedCharacters.length,
      itemBuilder: (context, index) {
        final characterId = int.tryParse(signedCharacters.elementAt(index));

        if (characterId == null) {
          return const ListTile(
            title: Text('Invalid character ID'),
            leading: Icon(Icons.error),
          );
        }

        return SignedCharacterWidget(characterId: characterId);
      },
    );
  }
}
