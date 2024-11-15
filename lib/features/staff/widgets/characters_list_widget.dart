import 'package:anime_convention/features/staff/widgets/character_widget.dart';
import 'package:anime_convention/shared/repository/staff_repository.dart';
import 'package:anime_convention/shared/typedefs.dart';
import 'package:collection/collection.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class CharactersListWidget extends ConsumerStatefulWidget {
  final String staffId;

  const CharactersListWidget({
    super.key,
    required this.staffId,
  });

  @override
  CharactersListWidgetState createState() => CharactersListWidgetState();
}

class CharactersListWidgetState extends ConsumerState<CharactersListWidget> {
  bool myShows = false;

  bool _shouldShowCharacter(CharacterEdge? characterEdge) {
    final media = characterEdge?.media;
    if (media == null) return false;

    final foundMedia = media.firstWhereOrNull((m) {
      final status = m?.mediaListEntry?.status;
      return status != MediaStatus.DROPPED && status != null;
    });

    return foundMedia != null;
  }

  @override
  Widget build(BuildContext context) {
    final theme = Theme.of(context);

    final chars =
        ref.watch(charactersProvider(widget.staffId, 1, 25)).valueOrNull;

    final edges = chars?.edges;
    final characters = (myShows
            ? edges?.where(_shouldShowCharacter).toList()
            : edges?.toList()) ??
        [];

    return Column(
      children: [
        Text(
          'Characters',
          style: theme.textTheme.titleLarge,
        ),
        TextButton.icon(
          icon: Icon(myShows ? Icons.live_tv : Icons.tv_off),
          label: Text(myShows ? 'My Shows' : 'All Shows'),
          onPressed: () {
            setState(() {
              myShows = !myShows;
            });
          },
        ),
        ListView.builder(
          shrinkWrap: true,
          physics: const NeverScrollableScrollPhysics(),
          itemCount: characters.length,
          itemBuilder: (context, index) =>
              CharacterWidget(characterEdge: characters[index]),
        ),
      ],
    );
  }
}
