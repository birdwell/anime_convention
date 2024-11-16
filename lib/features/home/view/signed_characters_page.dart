import 'package:anime_convention/features/home/widgets/signed_characters_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class SignedCharactersPage extends ConsumerWidget {
  const SignedCharactersPage({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) => Scaffold(
        appBar: AppBar(
          title: const Text('Signed Characters'),
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
        ),
        backgroundColor: Colors.white,
        body: const SignedCharactersBody(),
      );
}
