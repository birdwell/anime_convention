import 'package:anime_convention/features/auth/auth.dart';
import 'package:anime_convention/features/character/view/character_page.dart';
import 'package:anime_convention/features/staff/widgets/character_shimmer.dart';
import 'package:anime_convention/shared/repository/character_repository.dart';
import 'package:anime_convention/shared/services/signed_characters_service.dart';
import 'package:anime_convention/shared/widgets/character_image_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

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
            return Container(
              padding: const EdgeInsets.all(16.0),
              decoration: const BoxDecoration(
                border: Border(
                  bottom: BorderSide(
                    color: CupertinoColors.separator,
                    width: 0.0,
                  ),
                ),
              ),
              child: Row(
                children: [
                  const Icon(
                    CupertinoIcons.exclamationmark_triangle,
                    color: CupertinoColors.systemRed,
                  ),
                  const SizedBox(width: 12),
                  Text(
                    'Failed to load character',
                    style: TextStyle(
                      color: CupertinoColors.label,
                      fontSize: 17,
                    ),
                  ),
                ],
              ),
            );
          }

          final character = snapshot.data!;
          final media = character.media?.nodes?.firstWhere(
            (media) =>
                media?.title?.english != null || media?.title?.romaji != null,
            orElse: () => null,
          );
          final mediaEdge = character.media?.edges?.firstWhere(
            (edge) => edge?.voiceActors?.isNotEmpty ?? false,
            orElse: () => null,
          );
          final englishVoiceActor = mediaEdge?.voiceActors?.firstOrNull;

          return CupertinoButton(
            padding: EdgeInsets.zero,
            onPressed: () {
              Navigator.push(
                context,
                CharacterPage.route(character.id),
              );
            },
            child: GestureDetector(
              onLongPress: () => ref
                  .read(signedCharactersProvider.notifier)
                  .toggleCharacter(character.id.toString()),
              child: Container(
                padding: const EdgeInsets.symmetric(
                  vertical: 8.0,
                  horizontal: 16.0,
                ),
                decoration: const BoxDecoration(
                  border: Border(
                    bottom: BorderSide(
                      color: CupertinoColors.separator,
                      width: 0.0,
                    ),
                  ),
                ),
                child: Row(
                  children: [
                    if (character.image?.large != null)
                      Padding(
                        padding: const EdgeInsets.only(right: 12.0),
                        child: CharacterImageWidget(
                          imageUrl: character.image!.large!,
                          cacheKey: character.id.toString(),
                        ),
                      )
                    else
                      const Padding(
                        padding: EdgeInsets.only(right: 12.0),
                        child: Icon(
                          CupertinoIcons.photo,
                          size: 40,
                          color: CupertinoColors.systemGrey,
                        ),
                      ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            character.name?.full ?? 'Unknown',
                            style: const TextStyle(
                              color: CupertinoColors.label,
                              fontSize: 17,
                            ),
                          ),
                          if (media?.title?.english != null)
                            Text(
                              media!.title!.english!,
                              style: const TextStyle(
                                color: CupertinoColors.secondaryLabel,
                                fontSize: 14,
                              ),
                            ),
                        ],
                      ),
                    ),
                    if (englishVoiceActor?.name?.full != null)
                      Text(
                        englishVoiceActor!.name!.full!,
                        style: const TextStyle(
                          color: CupertinoColors.secondaryLabel,
                          fontSize: 14,
                        ),
                      ),
                    const SizedBox(width: 8),
                    const Icon(
                      CupertinoIcons.chevron_right,
                      color: CupertinoColors.systemGrey,
                      size: 20,
                    ),
                  ],
                ),
              ),
            ),
          );
        },
      );
}
