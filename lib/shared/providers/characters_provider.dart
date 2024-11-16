import 'package:anime_convention/shared/api/queries/__generated__/fetch_voice_actor_characters.data.gql.dart';
import 'package:anime_convention/shared/repository/staff_repository.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'characters_provider.g.dart';

@riverpod
class Characters extends _$Characters {
  static int perPage = 25;

  @override
  Future<CharactersState> build(int staffId) async {
    final result = await ref
        .read(staffRepositoryProvider)
        .fetchCharacters(staffId, 1, perPage);

    return CharactersState(
      characters: result?.edges?.toList() ?? [],
      hasMore: result?.pageInfo?.hasNextPage ?? false,
      currentPage: 1,
    );
  }

  Future<void> fetchCharacters() async {
    final stateValue = state.valueOrNull;

    if (stateValue == null) return;

    if (state is AsyncLoading || !stateValue.hasMore) return;

    try {
      final characters =
          await ref.read(staffRepositoryProvider).fetchCharacters(
                staffId,
                stateValue.currentPage,
                perPage,
              );

      state = AsyncValue.data(
        stateValue.copyWith(
          characters:
              [...stateValue.characters, ...?characters?.edges].toList(),
          hasMore: characters?.pageInfo?.hasNextPage ?? false,
          currentPage: stateValue.currentPage + 1,
        ),
      );
    } catch (error, stack) {
      state = AsyncValue.error(error, stack);
    }
  }
}

@immutable
class CharactersState {
  final List<GFetchCharactersData_Staff_characters_edges?> characters;
  final bool hasMore;
  final int currentPage;

  const CharactersState({
    this.characters = const [],
    this.hasMore = true,
    this.currentPage = 1,
  });

  CharactersState copyWith({
    List<GFetchCharactersData_Staff_characters_edges?>? characters,
    bool? hasMore,
    int? currentPage,
    bool? isLoading,
  }) =>
      CharactersState(
        characters: characters ?? this.characters,
        hasMore: hasMore ?? this.hasMore,
        currentPage: currentPage ?? this.currentPage,
      );
}
