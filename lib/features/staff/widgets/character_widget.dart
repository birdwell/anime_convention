import 'package:anime_convention/shared/typedefs.dart';
import 'package:flutter/material.dart';
import '../../../shared/widgets/character_image_widget.dart';

class CharacterWidget extends StatelessWidget {
  final CharacterEdge? characterEdge;

  const CharacterWidget({super.key, required this.characterEdge});

  @override
  Widget build(BuildContext context) {
    final character = characterEdge?.node;

    if (character == null) return const SizedBox.shrink();

    final imageUrl = character.image?.large;
    final title = characterEdge?.media?.firstOrNull?.title?.english;
    final characterName = character.name?.full ?? '';

    return ListTile(
      leading: imageUrl != null
          ? CharacterImageWidget(
              imageUrl: imageUrl,
              cacheKey: character.id.toString(),
            )
          : null,
      title: Text(characterName),
      subtitle: title != null ? Text(title) : null,
    );
  }
}
