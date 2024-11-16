import 'package:anime_convention/features/home/widgets/home_row.dart';
import 'package:flutter/material.dart';
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
    final savedList = prefs.getStringList('voiceActors');
    if (savedList != null && savedList.isNotEmpty) {
      setState(() {
        voiceActors = savedList;
      });
    }
  }

  Future<void> _saveVoiceActors() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setStringList('voiceActors', voiceActors);
  }

  @override
  Widget build(BuildContext context) => SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ReorderableListView.builder(
            itemCount: voiceActors.length,
            onReorder: (oldIndex, newIndex) {
              setState(() {
                if (newIndex > oldIndex) {
                  newIndex--;
                }
                final item = voiceActors.removeAt(oldIndex);
                voiceActors.insert(newIndex, item);
                _saveVoiceActors();
              });
            },
            itemBuilder: (context, index) {
              final name = voiceActors[index];
              return HomeRow(
                key: ValueKey(name),
                name: name,
              );
            },
          ),
        ),
      );
}
