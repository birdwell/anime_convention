import 'package:anime_convention/features/home/widgets/home_row.dart';
import 'package:flutter/cupertino.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomeBody extends StatefulWidget {
  const HomeBody({super.key});

  @override
  HomeBodyState createState() => HomeBodyState();
}

class HomeBodyState extends State<HomeBody> {
  List<String> voiceActors = [
    "Christopher Sabat",
    "Troy Baker",
    "Sean Schemmel",
    "Todd Haberkorn",
    "Maile Flanagan",
    "Clifford Chapin",
    "Mallorie Rodak",
    "Amanda Lee",
    "Brittney Karbowski",
    "Jamie Marchi",
    "Monica Rial",
    "Jason Liebrecht",
    "Elizabeth Maxwell",
    "Brandon McInnis",
    "Kristen McGuire",
    "Kimiko Glenn",
    "J Michael Tatum",
    "Kellen Goff",
    "Richard Horvitz",
    "Justin Cook",
    "Alejandro Saab",
    "Yuri Lowenthal",
    "Tara Platt",
    "Erica Lindbeck",
    "Edward Bosco",
    "Cristina Vee",
    "Kate Higgins",
    "Griffin Burns",
  ];

  @override
  void initState() {
    super.initState();
    _loadVoiceActors();
  }

  Future<void> _loadVoiceActors() async {
    final prefs = await SharedPreferences.getInstance();
    final savedActors = prefs.getStringList('voiceActors');
    if (savedActors != null) {
      setState(() {
        voiceActors = savedActors;
      });
    }
  }

  // Future<void> _saveVoiceActors() async {
  //   final prefs = await SharedPreferences.getInstance();
  //   await prefs.setStringList('voiceActors', voiceActors);
  // }

  @override
  Widget build(BuildContext context) => CupertinoScrollbar(
        child: CustomScrollView(
          physics: const AlwaysScrollableScrollPhysics(),
          slivers: [
            CupertinoSliverRefreshControl(
              onRefresh: _loadVoiceActors,
            ),
            SliverSafeArea(
              sliver: SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    if (index >= voiceActors.length) return null;
                    return Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 16.0),
                      child: HomeRow(
                        key: ValueKey(voiceActors[index]),
                        name: voiceActors[index],
                      ),
                    );
                  },
                ),
              ),
            ),
          ],
        ),
      );
}
