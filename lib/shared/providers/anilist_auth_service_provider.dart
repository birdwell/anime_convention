
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../services/anilist_auth_service.dart';

final aniListAuthServiceProvider = Provider<AniListAuthService>((ref) => AniListAuthService());