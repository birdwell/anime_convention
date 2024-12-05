import 'package:anime_convention/features/staff/widgets/characters_list_widget.dart';
import 'package:anime_convention/features/staff/widgets/tv_shows_widget.dart';
import 'package:anime_convention/shared/repository/staff_repository.dart';
import 'package:anime_convention/shared/widgets/staff_image_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class StaffBody extends ConsumerWidget {
  final String name;

  const StaffBody({super.key, required this.name});

  @override
  Widget build(BuildContext context, WidgetRef ref) => FutureBuilder(
        future: ref.read(staffRepositoryProvider).fetchStaff(name),
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(child: CupertinoActivityIndicator());
          }

          if (snapshot.hasError) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'Failed to load staff data.',
                  style: TextStyle(
                    color: CupertinoColors.systemRed,
                    fontSize: 16,
                  ),
                ),
              ),
            );
          }

          final staff = snapshot.data;
          if (staff == null) {
            return Center(
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text(
                  'No staff data found.',
                  style: TextStyle(
                    color: CupertinoColors.secondaryLabel,
                    fontSize: 16,
                  ),
                ),
              ),
            );
          }

          final staffImageUrl = staff.image?.large;

          return CustomScrollView(
            slivers: [
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
                                CupertinoIcons.heart_fill,
                                color:
                                    CupertinoColors.systemRed.withOpacity(0.9),
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
