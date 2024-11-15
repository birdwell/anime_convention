import 'package:flutter_appauth/flutter_appauth.dart';
import 'package:logger/logger.dart';

class AniListAuthService {
  static const String _clientId = '22416'; // Your AniList client ID
  static const String _redirectUri = 'animeconvention://callback';
  static const String _clientSecret = 'Zpw0miFnNhAeCGZXddgVoHIOiQang3EA8WBskbCN';
  static const String _authorizationEndpoint =
      'https://anilist.co/api/v2/oauth/authorize';
  static const String _tokenEndpoint = 'https://anilist.co/api/v2/oauth/token';

  final FlutterAppAuth _appAuth = FlutterAppAuth();
  final Logger _logger = Logger();

  Future<String?> login() async {
    try {
      final result = await _appAuth.authorizeAndExchangeCode(
        AuthorizationTokenRequest(
          _clientId,
          _redirectUri,
          clientSecret: _clientSecret,
          serviceConfiguration: AuthorizationServiceConfiguration(
            authorizationEndpoint: _authorizationEndpoint,
            tokenEndpoint: _tokenEndpoint,
          ),
          scopes: [],
        ),
      );

      return result.accessToken;
    } catch (e) {
      _logger.e('Error during authentication: $e');
      return null;
    }
  }
}
