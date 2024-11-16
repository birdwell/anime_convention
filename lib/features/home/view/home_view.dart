import 'package:anime_convention/features/home/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => Scaffold(
        body: const HomeBody(),
        backgroundColor: Colors.white,
        appBar: AppBar(
          title: Text('Voice Actors'),
          backgroundColor: Colors.white,
          surfaceTintColor: Colors.white,
        ),
      );
}
