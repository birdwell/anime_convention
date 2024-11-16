import 'package:anime_convention/features/home/widgets/home_body.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Route<dynamic> route() =>
      MaterialPageRoute<dynamic>(builder: (_) => const HomePage());

  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(title: Text('Anime405')),
        body: SafeArea(child: HomeView()),
      );
}

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => HomeBody();
}
