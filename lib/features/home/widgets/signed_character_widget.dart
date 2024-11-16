import 'package:anime_convention/features/auth/auth.dart';
import 'package:anime_convention/features/character/view/character_page.dart';
import 'package:anime_convention/features/staff/widgets/character_shimmer.dart';
import 'package:anime_convention/shared/repository/character_repository.dart';
import 'package:anime_convention/shared/services/signed_characters_service.dart';
import 'package:anime_convention/shared/widgets/character_image_widget.dart';
import 'package:flutter/material.dart';

class SignedCharacterWidget extends ConsumerWidget {
  final int characterId;

  const SignedCharacterWidget({super.key, required this.characterId});

  @override
  Widget build(BuildContext context, WidgetRef ref) => FutureBuilder(
        future:
            ref.read(characterRepositoryProvider).fetchCharacter(characterId),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return CharacterShimmer();
          }

          if (snapshot.hasError || snapshot.data == null) {
            return const ListTile(
              title: Text('Failed to load character'),
              leading: Icon(Icons.error),
            );
          }

          final character = snapshot.data!;
          final media = character.media?.nodes?.firstWhere(
            (media) =>
                media?.title?.english != null || media?.title?.romaji != null,
            orElse: () => null, // Provide null if no match
          );

          return ListTile(
            onLongPress: () => ref
                .read(signedCharactersProvider.notifier)
                .toggleCharacter(character.id.toString()),
            onTap: () {
              Navigator.push(
                context,
                CharacterPage.route(character.id),
              );
            },
            leading: character.image?.large != null
                ? CharacterImageWidget(
                    imageUrl: character.image!.large!,
                    cacheKey: character.id.toString(),
                  )
                : const Icon(Icons.broken_image),
            title: Text(character.name?.full ?? 'Unknown'),
            subtitle: Text(media?.title?.english ?? ''),
          );
        },
      );
}
