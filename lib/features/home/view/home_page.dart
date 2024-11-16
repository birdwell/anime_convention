import 'package:anime_convention/features/home/view/home_view.dart';
import 'package:anime_convention/features/home/view/signed_characters_page.dart';
import 'package:anime_convention/features/home/widgets/home_body.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AppleTabView extends StatelessWidget {
  final Widget child;

  const AppleTabView({super.key, required this.child});

  @override
  Widget build(BuildContext context) => CupertinoTabView(
        builder: (context) => Container(
          color: CupertinoColors.systemBackground,
          child: SafeArea(
            top: true,
            bottom: true,
            child: Material(
              color: CupertinoColors.systemBackground,
              child: child,
            ),
          ),
        ),
      );
}

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static Route<dynamic> route() =>
      MaterialPageRoute<dynamic>(builder: (_) => const HomePage());

  @override
  Widget build(BuildContext context) {
    final isIOS = Theme.of(context).platform == TargetPlatform.iOS;

    if (isIOS) {
      // Use CupertinoTabScaffold for iOS
      return CupertinoTabScaffold(
        tabBar: CupertinoTabBar(
          backgroundColor: CupertinoColors.systemBackground.withOpacity(0.1),
          activeColor: CupertinoColors.black,
          inactiveColor: CupertinoColors.inactiveGray,
          height: 60,
          items: const [
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Icon(CupertinoIcons.person_3_fill),
              ),
            ),
            BottomNavigationBarItem(
              icon: Padding(
                padding: EdgeInsets.only(top: 8.0),
                child: Icon(CupertinoIcons.signature),
              ),
            ),
          ],
        ),
        tabBuilder: (context, index) {
          switch (index) {
            case 0:
              return AppleTabView(child: HomeView());
            case 1:
              return AppleTabView(child: SignedCharactersPage());
            default:
              return AppleTabView(child: SignedCharactersPage());
          }
        },
      );
    }

    return DefaultTabController(
      length: 2,
      child: Scaffold(
        appBar: AppBar(
          title: const Text('Anime405'),
          bottom: const TabBar(
            tabs: [
              Tab(icon: Icon(Icons.home_rounded)),
              Tab(icon: Icon(Icons.history_edu)),
            ],
          ),
        ),
        body: const SafeArea(
          child: TabBarView(
            children: [
              HomeBody(),
              SignedCharactersPage(),
            ],
          ),
        ),
      ),
    );
  }
}
