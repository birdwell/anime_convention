import 'package:anime_convention/features/home/widgets/home_row.dart';
import 'package:flutter/material.dart';

const List<String> voiceActors = [
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

class HomeBody extends StatelessWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context) => ListView.builder(
        padding: const EdgeInsets.all(16),
        itemCount: voiceActors.length,
        itemBuilder: (context, index) {
          final name = voiceActors[index];
          return HomeRow(name: name);
        },
      );
}
