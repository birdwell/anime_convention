import 'package:flutter/material.dart';
import '../../staff/view/staff_page.dart';

const List<String> voiceActors = [
  "Christopher Sabat",
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
  "Steve Downes",
  "Kellen Goff",
  "Richard Horvitz",
  "Justin Cook",
  "Alejandro Saab",
  "Yuri Lowenthal",
  "Tara Platt",
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
        return ListTile(
          title: Text(name),
          trailing: const Icon(Icons.arrow_forward),
          onTap: () {
            Navigator.push(
              context,
              StaffPage.route(name),
            );
          },
        );
      },
    );
}
