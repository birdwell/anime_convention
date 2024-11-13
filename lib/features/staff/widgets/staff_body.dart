import 'package:anime_convention/features/staff/widgets/character_widget.dart';
import 'package:anime_convention/shared/widgets/staff_image_widget.dart';
import 'package:flutter/material.dart';
import '../../../shared/repository/staff_repository.dart';
import '../provider/provider.dart';

class StaffBody extends ConsumerWidget {
  final String name;

  const StaffBody({super.key, required this.name});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return FutureBuilder(
      future: ref
          .read(staffRepositoryProvider)
          .fetchStaff(name), // Replace with desired search
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
        final staffImageUrl = staff.image?.large;

        return ListView(
          padding: EdgeInsets.symmetric(horizontal: 24),
          children: [
            if (staffImageUrl != null)
              Padding(
                padding: const EdgeInsets.symmetric(vertical: 8),
                child: StaffImageWidget(
                  imageUrl: staffImageUrl,
                  cacheKey: staff.id.toString(),
                ),
              ),
            Text(
              'Characters',
              style: Theme.of(context).textTheme.titleMedium,
            ),
            ListView.builder(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: characters.length,
              itemBuilder: (context, index) {
                return CharacterWidget(characterEdge: characters[index]);
              },
            ),
          ],
        );
      },
    );
  }
}
