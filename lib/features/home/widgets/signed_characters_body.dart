import 'package:anime_convention/features/home/widgets/signed_character_widget.dart';
import 'package:anime_convention/shared/services/signed_characters_service.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignedCharactersBody extends ConsumerWidget {
  const SignedCharactersBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final signedCharacters = ref.watch(signedCharactersProvider);

    if (signedCharacters.isEmpty) {
      return Center(
        child: Text(
          'No signed characters.',
          style: TextStyle(
            color: CupertinoColors.secondaryLabel,
            fontSize: 16,
          ),
        ),
      );
    }

    return CupertinoScrollbar(
      child: ListView.builder(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        itemCount: signedCharacters.length,
        itemBuilder: (context, index) {
          final characterId = int.tryParse(signedCharacters.elementAt(index));

          if (characterId == null) {
            return Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Row(
                children: [
                  Icon(
                    CupertinoIcons.exclamationmark_triangle_fill,
                    color: CupertinoColors.systemRed,
                  ),
                  const SizedBox(width: 16),
                  Text(
                    'Invalid character ID',
                    style: TextStyle(
                      color: CupertinoColors.systemRed,
                      fontSize: 16,
                    ),
                  ),
                ],
              ),
            );
          }

          return SignedCharacterWidget(characterId: characterId);
        },
      ),
    );
  }
}
