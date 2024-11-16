import 'package:anime_convention/features/character/provider/provider.dart';
import 'package:anime_convention/features/character/widgets/character_appbar_widget.dart';
import 'package:anime_convention/features/character/widgets/show_widget.dart';
import 'package:flutter/material.dart';

class CharacterBody extends ConsumerWidget {
  const CharacterBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ref.read(characterIdProvider);

    return ref.watch(characterProvider(id)).when(
          data: (character) {
            if (character == null) {
              return const Center(child: Text('Character not found'));
            }

            final shows = character.media?.nodes;

            return CustomScrollView(
              slivers: [
                CharacterAppbarWidget(character: character),
                SliverToBoxAdapter(child: const SizedBox(height: 16)),
                if (shows != null)
                  SliverList(
                    delegate: SliverChildBuilderDelegate(
                      (context, index) {
                        final show = shows[index];
                        return ShowWidget(show: show);
                      },
                      childCount: shows.length,
                    ),
                  ),
              ],
            );
          },
          loading: () => const Scaffold(
            body: Center(child: CircularProgressIndicator()),
          ),
          error: (error, stackTrace) => Scaffold(
            body: Center(child: Text('Error: $error')),
          ),
        );
  }
}
