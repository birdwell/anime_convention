import 'package:anime_convention/features/home/widgets/signed_characters_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignedCharactersPage extends ConsumerWidget {
  const SignedCharactersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => CupertinoPageScaffold(
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Signed Characters'),
          backgroundColor: CupertinoColors.systemBackground,
        ),
        backgroundColor: CupertinoColors.systemBackground,
        child: const SafeArea(
          child: SignedCharactersBody(),
        ),
      );
}
