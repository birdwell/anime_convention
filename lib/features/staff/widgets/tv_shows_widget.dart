import 'package:anime_convention/shared/providers/characters_provider.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TvShowsWidget extends ConsumerWidget {
  const TvShowsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showOnlyMyShows = ref.watch(showOnlyMyShowsProvider);

    return SliverToBoxAdapter(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
        child: CupertinoButton(
          padding: EdgeInsets.zero,
          onPressed: () {
            ref.read(showOnlyMyShowsProvider.notifier).toggle();
          },
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Icon(
                showOnlyMyShows
                    ? CupertinoIcons.tv_circle_fill
                    : CupertinoIcons.tv_circle,
                color: showOnlyMyShows
                    ? CupertinoColors.activeBlue
                    : CupertinoColors.systemGrey,
              ),
              const SizedBox(width: 8),
              Text(
                showOnlyMyShows ? 'My Shows' : 'All Shows',
                style: TextStyle(
                  color: showOnlyMyShows
                      ? CupertinoColors.activeBlue
                      : CupertinoColors.systemGrey,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
