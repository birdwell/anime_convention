import 'package:anime_convention/shared/api/queries/__generated__/fetch_voice_actor.data.gql.dart';
import 'package:anime_convention/shared/api/queries/__generated__/fetch_voice_actor.req.gql.dart';
import 'package:ferry/ferry.dart';

class StaffRepository {
  final Client client;

  StaffRepository(this.client);

  Future<GFetchVoiceActorData_Staff?> fetchStaff(String search) async {
    // Create the GraphQL request
    final request = GFetchVoiceActorReq((b) => b..vars.search = search);

    try {
      // Execute the request and wait for the response
      final response = await client.request(request).first;

      if (response.hasErrors) {
        throw Exception(
            response.graphqlErrors?.map((e) => e.message).join(', '));
      }

      return response.data?.Staff;
    } catch (e) {
      throw Exception('Failed to fetch staff data: $e');
    }
  }
}