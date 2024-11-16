import 'package:anime_convention/shared/api/queries/__generated__/fetch_character.data.gql.dart';
import 'package:anime_convention/shared/repository/character_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'character_provider.g.dart';

@riverpod
Future<GFetchCharacterData_Character?> character(Ref ref, int id) async {
  final character =
      await ref.watch(characterRepositoryProvider).fetchCharacter(id);
  return character;
}

@Riverpod(keepAlive: true)
int characterId(_) =>
    throw UnimplementedError('characterId is not implemented');
