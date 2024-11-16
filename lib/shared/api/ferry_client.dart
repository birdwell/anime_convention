import 'package:ferry/ferry.dart';
import 'package:gql_http_link/gql_http_link.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import '../../features/auth/provider/auth_provider.dart';

part 'ferry_client.g.dart';

@Riverpod(keepAlive: true)
Cache cache(_) => throw UnimplementedError('Missing Hive Implementation');

@Riverpod(keepAlive: true)
Client ferryClient(ref) {
  final accessToken = ref.watch(authStateProvider);
  final cache = ref.watch(cacheProvider);
  return Client(
    link: HttpLink(
      'https://graphql.anilist.co',
      defaultHeaders: {
        'Authorization': 'Bearer $accessToken',
      },
    ),
    cache: cache,
  );
}
