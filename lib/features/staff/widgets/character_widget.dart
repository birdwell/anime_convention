import 'package:flutter/material.dart';

import '../../../shared/api/queries/__generated__/fetch_voice_actor.data.gql.dart';
import '../../../shared/widgets/character_image_widget.dart';

class CharacterWidget extends StatelessWidget {
  final GFetchVoiceActorData_Staff_characters_edges? characterEdge;

  const CharacterWidget({super.key, required this.characterEdge});

  @override
  Widget build(BuildContext context) {
    final character = characterEdge?.node;

    if (character == null) return const SizedBox.shrink();

    final imageUrl = character.image?.large;
    final title = characterEdge?.media?.firstOrNull?.title?.english;

    return ListTile(
      leading: imageUrl != null
          ? CharacterImageWidget(
              imageUrl: imageUrl,
              cacheKey: character.id.toString(),
            )
          : null,
      title: Text(character.name?.full ?? ''),
      subtitle: title != null ? Text(title) : null,
    );
  }
}
