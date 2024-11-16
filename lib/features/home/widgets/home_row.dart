import 'package:anime_convention/features/staff/view/staff_page.dart';
import 'package:anime_convention/shared/providers/staff_provider.dart';
import 'package:anime_convention/shared/widgets/staff_image_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeRow extends ConsumerWidget {
  final String name;

  const HomeRow({super.key, required this.name});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final staff = ref.watch(staffProvider(name)).valueOrNull;
    final staffImageUrl = staff?.image?.large;

    return ListTile(
      title: Row(
        children: [
          if (staffImageUrl != null)
            Padding(
              padding: const EdgeInsets.only(right: 8.0),
              child: StaffImageWidget(
                imageUrl: staffImageUrl,
                cacheKey: staff?.id.toString() ?? '',
                height: 60,
                width: 40,
              ),
            ),
          Text(name),
          Spacer(),
          if (staff != null && staff.isFavourite)
            const Icon(Icons.favorite, color: Colors.red),
        ],
      ),
      trailing: const Icon(Icons.arrow_forward),
      onTap: () {
        Navigator.push(
          context,
          StaffPage.route(name),
        );
      },
    );
  }
}
