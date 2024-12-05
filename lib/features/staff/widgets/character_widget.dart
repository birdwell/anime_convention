import 'package:anime_convention/features/character/view/character_page.dart';
import 'package:anime_convention/shared/services/signed_characters_service.dart';
import 'package:anime_convention/shared/typedefs.dart';
import 'package:anime_convention/shared/widgets/character_image_widget.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
        (state) => state.contains(characterId),
      ),
    );
    final signedNotifier = ref.read(signedCharactersProvider.notifier);

    final imageUrl = character.image?.large;
    final media = characterEdge?.media?.firstOrNull;
    final title = media?.title?.english;
    final characterName = character.name?.full ?? '';

    return GestureDetector(
      onLongPress: () => signedNotifier.toggleCharacter(characterId),
      onTap: () {
        Navigator.push(
          context,
          CharacterPage.route(character.id),
        );
      },
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: Row(
          children: [
            if (imageUrl != null)
              CharacterImageWidget(
                imageUrl: imageUrl,
                cacheKey: character.id.toString(),
              ),
            const SizedBox(width: 16.0),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    characterName,
                    style: const TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  if (title != null) ...[
                    const SizedBox(height: 4),
                    Text(
                      title,
                      style: TextStyle(
                        fontSize: 14,
                        color: CupertinoColors.secondaryLabel,
                      ),
                    ),
                  ],
                ],
              ),
            ),
            Row(
              mainAxisSize: MainAxisSize.min,
              children: [
                if (isSigned)
                  Padding(
                    padding: const EdgeInsets.only(right: 8.0),
                    child: Icon(
                      CupertinoIcons.pencil_circle_fill,
                      color: CupertinoColors.activeGreen,
                    ),
                  ),
                if (_showTVIcon(characterEdge?.media))
                  Icon(
                    CupertinoIcons.tv_circle_fill,
                    color: CupertinoColors.systemGrey,
                  ),
              ],
            ),
          ],
        ),
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
