import '../../shared/api/api_service.dart';
import '../../shared/api/graphql_queries.dart';

class VoiceActorRepository {
  final ApiService _apiService;

  VoiceActorRepository(this._apiService);

  Future<Map<String, dynamic>> fetchVoiceActor(String name) async {
    final data = await _apiService.performQuery(
      GraphQLQueries.queryVoiceActor,
      {"search": name},
    );
    return data['Staff'];
  }
}
