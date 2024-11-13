import 'package:flutter/material.dart';
import '../../../shared/api/ferry_client.dart';
import '../../staff/staff_repository.dart';

class HomeBody extends StatelessWidget {
  final StaffRepository repository;

  HomeBody({super.key})
      : repository = StaffRepository(FerryClientProvider.client);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
      future:
          repository.fetchStaff("Kana Hanazawa"), // Replace with desired search
      builder: (context, snapshot) {
        if (snapshot.connectionState == ConnectionState.waiting) {
          return const Center(child: CircularProgressIndicator());
        }

        if (snapshot.hasError) {
          return Center(child: Text('Error: ${snapshot.error}'));
        }

        final staff = snapshot.data;
        if (staff == null) {
          return const Center(child: Text('No staff data found.'));
        }

        final characters = staff.characters?.edges?.toList() ?? [];

        return ListView(
          padding: const EdgeInsets.all(16),
          children: [
            Text('Name: ${staff.name?.first} ${staff.name?.last}'),
            if (staff.image?.large != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 16),
                child: Image.network(staff.image!.large!),
              ),
            Text('Characters:'),
            ...characters.map((characterEdge) {
              final character = characterEdge?.node;
              if (character == null) return const SizedBox.shrink();

              return ListTile(
                leading: character.image?.large != null
                    ? Image.network(character.image!.large!)
                    : null,
                title: Text(character.name?.full ?? 'Unknown'),
                subtitle: Text('ID: ${character.id}'),
              );
            }),
          ],
        );
      },
    );
  }
}
