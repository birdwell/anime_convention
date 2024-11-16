import 'package:anime_convention/shared/providers/characters_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class TvShowsWidget extends ConsumerWidget {
  const TvShowsWidget({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final showOnlyMyShows = ref.watch(showOnlyMyShowsProvider);

    return SliverToBoxAdapter(
      child: TextButton.icon(
        onPressed: () {
          ref.read(showOnlyMyShowsProvider.notifier).toggle();
        },
        icon: showOnlyMyShows ? Icon(Icons.tv) : Icon(Icons.tv_off),
        label:
            showOnlyMyShows ? const Text('My Shows') : const Text('All Shows'),
      ),
    );
  }
}
