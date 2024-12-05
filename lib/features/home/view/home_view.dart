import 'package:anime_convention/features/home/widgets/home_body.dart';
import 'package:flutter/cupertino.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) => CupertinoPageScaffold(
        backgroundColor: CupertinoColors.systemBackground,
        navigationBar: const CupertinoNavigationBar(
          middle: Text('Voice Actors'),
          backgroundColor: CupertinoColors.systemBackground,
        ),
        child: const SafeArea(
          child: HomeBody(),
        ),
      );
}
