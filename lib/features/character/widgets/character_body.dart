import 'package:anime_convention/features/character/provider/provider.dart';
import 'package:anime_convention/features/character/widgets/character_appbar_widget.dart';
import 'package:anime_convention/features/character/widgets/show_widget.dart';
import 'package:flutter/cupertino.dart';

class CharacterBody extends ConsumerWidget {
  const CharacterBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ref.read(characterIdProvider);

    return ref.watch(characterProvider(id)).when(
          data: (character) {
            if (character == null) {
              return Center(
                child: Text(
                  'Character not found',
                  style: TextStyle(
                    color: CupertinoColors.secondaryLabel,
                    fontSize: 16,
                  ),
                ),
              );
            }

            final shows = character.media?.nodes;

            return CustomScrollView(
              slivers: [
                CharacterAppbarWidget(character: character),
                CharacterHeaderWidget(character: character),
                const SliverToBoxAdapter(child: SizedBox(height: 16)),
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
          loading: () => const CupertinoPageScaffold(
            child: Center(child: CupertinoActivityIndicator()),
          ),
          error: (error, stackTrace) => CupertinoPageScaffold(
            child: Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Error loading character data',
                  style: TextStyle(
                    color: CupertinoColors.systemRed,
                    fontSize: 16,
                  ),
                ),
              ),
            ),
          ),
        );
  }
}
