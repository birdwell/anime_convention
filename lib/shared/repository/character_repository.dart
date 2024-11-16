import 'package:anime_convention/shared/api/queries/__generated__/fetch_character.data.gql.dart';
import 'package:anime_convention/shared/api/queries/__generated__/fetch_character.req.gql.dart';
import 'package:ferry/ferry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../api/ferry_client.dart';

class CharacterRepository {
  final Client client;

  CharacterRepository(this.client);

  Future<GFetchCharacterData_Character?> fetchCharacter(int id) async {
    final request = GFetchCharacterReq((builder) => builder..vars.id = id);

    try {
      final response = await client.request(request).first;

      if (response.hasErrors) {
        throw Exception(
          response.graphqlErrors?.map((e) => e.message).join(', '),
        );
      }

      return response.data?.Character;
    } catch (e) {
      throw Exception('Failed to fetch character: ${e.toString()}');
    }
  }
}

final characterRepositoryProvider = Provider<CharacterRepository>((ref) {
  final client = ref.read(ferryClientProvider);
  return CharacterRepository(client);
});
