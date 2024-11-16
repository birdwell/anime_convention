import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SignedCharactersNotifier extends Notifier<Set<String>> {
  static const _key = 'signedCharacters';

  @override
  Set<String> build() {
    _loadSignedCharacters();
    return {};
  }

  Future<void> _loadSignedCharacters() async {
    final prefs = await SharedPreferences.getInstance();
    final signedCharacters = prefs.getStringList(_key) ?? [];
    state = signedCharacters.toSet();
  }

  Future<void> toggleCharacter(String characterId) async {
    final prefs = await SharedPreferences.getInstance();
    if (state.contains(characterId)) {
      state = {...state}..remove(characterId);
      await prefs.setStringList(_key, state.toList());
    } else {
      state = {...state}..add(characterId);
      await prefs.setStringList(_key, state.toList());
    }
  }

  bool isSigned(String characterId) => state.contains(characterId);
}

final signedCharactersProvider = NotifierProvider<SignedCharactersNotifier, Set<String>>(
  SignedCharactersNotifier.new,
);