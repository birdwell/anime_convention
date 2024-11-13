import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';

class FerryClientProvider {
  static Client? _client;

  static Client get client {
    if (_client == null) {
      throw Exception(
          "FerryClientProvider.init() must be called before accessing the client.");
    }
    return _client!;
  }

  static Future<void> init() async {
    // Initialize Hive for caching
    await Hive.initFlutter();
    final box = await Hive.openBox('graphql_cache');

    // Create a cache backed by Hive
    final cache = Cache(store: HiveStore(box));

    // Define the HTTP link for GraphQL
    final link = HttpLink(
        'https://graphql.anilist.co'); // Replace with your API endpoint

    // Initialize Ferry Client
    _client = Client(
      link: link,
      cache: cache,
    );
  }
}
