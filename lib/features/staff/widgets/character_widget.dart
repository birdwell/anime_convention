import 'package:anime_convention/features/character/view/character_page.dart';
import 'package:anime_convention/shared/services/signed_characters_service.dart';
import 'package:anime_convention/shared/typedefs.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../../shared/widgets/character_image_widget.dart';

class CharacterWidget extends ConsumerWidget {
  final CharacterEdge? characterEdge;

  const CharacterWidget({super.key, required this.characterEdge});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final character = characterEdge?.node;
    if (character == null) return const SizedBox.shrink();

    final characterId = character.id.toString();
    final isSigned = ref.watch(
      signedCharactersProvider.select(
        (state) => state.contains(
          characterId,
        ),
      ),
    ); // Ensure the value is tied to the specific character ID
    final signedNotifier = ref.read(signedCharactersProvider.notifier);

    final imageUrl = character.image?.large;
    final media = characterEdge?.media?.firstOrNull;
    final title = media?.title?.english;
    final characterName = character.name?.full ?? '';

    return ListTile(
      onLongPress: () => signedNotifier.toggleCharacter(characterId),
      onTap: () {
        Navigator.push(
          context,
          CharacterPage.route(character.id),
        );
      },
      leading: imageUrl != null
          ? CharacterImageWidget(
              imageUrl: imageUrl,
              cacheKey: character.id.toString(),
            )
          : null,
      title: Text(characterName),
      subtitle: title != null ? Text(title) : null,
      trailing: Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          if (isSigned)
            const Padding(
              padding: EdgeInsets.only(right: 8.0),
              child: Icon(Icons.history_edu, color: Colors.green),
            ),
          if (_showTVIcon(characterEdge?.media)) const Icon(Icons.tv),
        ],
      ),
    );
  }

  bool _showTVIcon(BuiltList<Media?>? media) {
    if (media == null) return false;

    final foundMedia = media.firstWhereOrNull((m) {
      final status = m?.mediaListEntry?.status;
      return status != MediaStatus.DROPPED &&
          status != MediaStatus.PLANNING &&
          status != null;
    });

    return foundMedia != null;
  }
}
