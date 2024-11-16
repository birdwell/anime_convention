import 'package:anime_convention/features/staff/widgets/character_shimmer.dart';
import 'package:anime_convention/features/staff/widgets/character_widget.dart';
import 'package:anime_convention/shared/providers/characters_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CharactersListWidget extends ConsumerWidget {
  final int staffId;

  const CharactersListWidget({
    super.key,
    required this.staffId,
  });

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final state = ref.watch(charactersProvider(staffId));

    return state.when(
      data: (charactersState) => SliverList(
        delegate: SliverChildBuilderDelegate(
          (context, index) {
            if (index == charactersState.characters.length) {
              ref.read(charactersProvider(staffId).notifier).fetchCharacters();
              return CharacterShimmer();
            }
            final character = charactersState.characters[index];
            return CharacterWidget(characterEdge: character);
          },
          childCount: charactersState.characters.length +
              (charactersState.hasMore ? 1 : 0),
        ),
      ),
      loading: () => const SliverToBoxAdapter(
        child: Center(child: CircularProgressIndicator()),
      ),
      error: (error, stackTrace) => SliverToBoxAdapter(
        child: Center(child: Text('Failed to load characters: $error')),
      ),
    );
  }
}
