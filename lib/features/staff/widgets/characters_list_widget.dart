import 'package:anime_convention/features/staff/widgets/character_shimmer.dart';
import 'package:anime_convention/features/staff/widgets/character_widget.dart';
import 'package:anime_convention/shared/providers/characters_provider.dart';
import 'package:anime_convention/shared/typedefs.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CharactersListWidget extends ConsumerWidget {
  final int staffId;

  const CharactersListWidget({
    super.key,
    required this.staffId,
  });

  bool _shouldShowCharacter(CharacterEdge? characterEdge) {
    final media = characterEdge?.media;
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
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(charactersProvider(staffId)).valueOrNull;
    final showOnlyMyShows = ref.watch(showOnlyMyShowsProvider);

    if (state == null) {
      return const SliverToBoxAdapter(
        child: SizedBox.shrink(),
      );
    }

    final characters = showOnlyMyShows
        ? state.characters.where(_shouldShowCharacter).toList()
        : state.characters;

    return SliverList(
      delegate: SliverChildBuilderDelegate(
        (context, index) {
          if (index == characters.length) {
            ref.read(charactersProvider(staffId).notifier).fetchCharacters();
            return CharacterShimmer();
          }

          final characterEdge = characters[index];
          return CharacterWidget(
            key: ValueKey(
              characterEdge?.node?.id,
            ),
            characterEdge: characterEdge,
          );
        },
        childCount: characters.length + (state.hasMore ? 1 : 0),
      ),
    );
  }
}
