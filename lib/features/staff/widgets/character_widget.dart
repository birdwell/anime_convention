import 'package:anime_convention/features/character/view/character_page.dart';
import 'package:anime_convention/shared/typedefs.dart';
import 'package:built_collection/built_collection.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';

import '../../../shared/widgets/character_image_widget.dart';

class CharacterWidget extends StatelessWidget {
  final CharacterEdge? characterEdge;

  const CharacterWidget({super.key, required this.characterEdge});

  _showTVIcon(BuiltList<Media?>? media) {
    if (media == null) return false;

    final foundMedia = media.firstWhereOrNull((m) {
      final status = m?.mediaListEntry?.status;
      return status != MediaStatus.DROPPED &&
          status != MediaStatus.PLANNING &&
          status != null;
    });

    return foundMedia != null;
  }

  @override
  Widget build(BuildContext context) {
    final character = characterEdge?.node;

    if (character == null) return const SizedBox.shrink();

    final imageUrl = character.image?.large;
    final media = characterEdge?.media?.firstOrNull;
    final title = media?.title?.english;
    final characterName = character.name?.full ?? '';

    return ListTile(
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
      trailing: _showTVIcon(characterEdge?.media) ? const Icon(Icons.tv) : null,
    );
  }
}
