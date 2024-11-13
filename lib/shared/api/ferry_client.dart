import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:ferry/ferry.dart';
import 'package:ferry_hive_store/ferry_hive_store.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:shimmer/shimmer.dart';

class FerryClientInitializer {
  static Future<Client> init() async {
    // Initialize Hive for caching
    await Hive.initFlutter();
    final box = await Hive.openBox('graphql_cache');

    // Create a cache backed by Hive
    final cache = Cache(store: HiveStore(box));

    // Define the HTTP link for GraphQL
    final link = HttpLink(
      'https://graphql.anilist.co',
    ); // Replace with your API endpoint

    // Create and return the Ferry client
    return Client(
      link: link,
      cache: cache,
    );
  }
}

// A simple provider for the Ferry client
final ferryClientProvider = Provider<Client>((ref) {
  throw UnimplementedError("Ferry client not initialized!");
});
