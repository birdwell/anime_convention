import 'package:anime_convention/features/staff/widgets/character_widget.dart';
import 'package:anime_convention/shared/widgets/staff_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import '../../../shared/repository/staff_repository.dart';

class StaffBody extends ConsumerWidget {
  final String name;

  const StaffBody({super.key, required this.name});

  @override
  Widget build(BuildContext context, WidgetRef ref) => FutureBuilder(
        future: ref.read(staffRepositoryProvider).fetchStaff(name),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CircularProgressIndicator());
          }

          if (snapshot.hasError) {
            return const Center(child: Text('Failed to load staff data.'));
          }

          final staff = snapshot.data;
          if (staff == null) {
            return const Center(child: Text('No staff data found.'));
          }

          final characters = staff.characters?.edges?.toList() ?? [];
          final staffImageUrl = staff.image?.large;

          return ListView(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            children: [
              if (staffImageUrl != null)
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 8),
                  child: StaffImageWidget(
                    imageUrl: staffImageUrl,
                    cacheKey: staff.id.toString(),
                  ),
                ),
              const Text(
                'Characters',
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
              ListView.builder(
                shrinkWrap: true,
                physics: const NeverScrollableScrollPhysics(),
                itemCount: characters.length,
                itemBuilder: (context, index) =>
                    CharacterWidget(characterEdge: characters[index]),
              ),
            ],
          );
        },
      );
}
