import 'package:anime_convention/features/staff/widgets/characters_list_widget.dart';
import 'package:anime_convention/features/staff/widgets/tv_shows_widget.dart';
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

          final staffImageUrl = staff.image?.large;

          return CustomScrollView(
            slivers: [
              // Staff Image Section
              if (staffImageUrl != null)
                SliverToBoxAdapter(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(vertical: 8),
                    child: Stack(
                      children: [
                        StaffImageWidget(
                          imageUrl: staffImageUrl,
                          cacheKey: staff.id.toString(),
                        ),
                        if (staff.isFavourite)
                          Padding(
                            padding: const EdgeInsets.only(left: 64.0, top: 4),
                            child: Center(
                              child: Icon(
                                Icons.favorite,
                                color: Colors.red.withOpacity(0.9),
                                size: 24,
                              ),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              const TvShowsWidget(),
              CharactersListWidget(staffId: staff.id),
            ],
          );
        },
      );
}
