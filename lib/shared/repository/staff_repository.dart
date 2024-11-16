import 'package:anime_convention/shared/api/queries/__generated__/fetch_voice_actor.data.gql.dart';
import 'package:anime_convention/shared/api/queries/__generated__/fetch_voice_actor.req.gql.dart';
import 'package:anime_convention/shared/api/queries/__generated__/fetch_voice_actor_characters.data.gql.dart';
import 'package:anime_convention/shared/api/queries/__generated__/fetch_voice_actor_characters.req.gql.dart';
import 'package:ferry/ferry.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../api/ferry_client.dart';

class StaffRepository {
  final Client client;

  StaffRepository(this.client);

  Future<GFetchVoiceActorData_Staff?> fetchStaff(String search) async {
    final request = GFetchVoiceActorReq((b) => b..vars.search = search);

    try {
      final response = await client.request(request).first;

      if (response.hasErrors) {
        throw Exception(
          response.graphqlErrors?.map((e) => e.message).join(', '),
        );
      }

      return response.data?.Staff;
    } catch (e) {
      throw Exception('Failed to fetch staff data: $e');
    }
  }

  Future<GFetchCharactersData_Staff_characters?> fetchCharacters(
    int id,
    int page,
    int perPage,
  ) async {
    final request = GFetchCharactersReq(
      (builder) => builder
        ..vars.id = id
        ..vars.page = page
        ..vars.perPage = perPage,
    );

    try {
      final response = await client.request(request).first;

      if (response.hasErrors) {
        throw Exception(
          response.graphqlErrors?.map((e) => e.message).join(', '),
        );
      }

      return response.data?.Staff?.characters;
    } catch (e) {
      throw Exception('Failed to fetch staff characters: $e');
    }
  }
}

// Provider for StaffRepository
final staffRepositoryProvider = Provider<StaffRepository>((ref) {
  final client = ref.read(ferryClientProvider);
  return StaffRepository(client);
});
