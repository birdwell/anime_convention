import 'package:anime_convention/features/staff/view/staff_page.dart';
import 'package:anime_convention/shared/providers/staff_provider.dart';
import 'package:anime_convention/shared/widgets/staff_image_widget.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

class HomeRow extends ConsumerWidget {
  final String name;

  const HomeRow({super.key, required this.name});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final staff = ref.watch(staffProvider(name)).valueOrNull;
    final staffImageUrl = staff?.image?.large;

    return CupertinoButton(
      padding: EdgeInsets.zero,
      onPressed: () {
        Navigator.push(
          context,
          CupertinoPageRoute(
            builder: (context) => StaffPage(name: name),
          ),
        );
      },
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 8.0),
        decoration: const BoxDecoration(
          border: Border(
            bottom: BorderSide(
              color: CupertinoColors.separator,
              width: 0.0,
            ),
          ),
        ),
        child: Row(
          children: [
            if (staffImageUrl != null)
              Padding(
                padding: const EdgeInsets.only(right: 12.0),
                child: StaffImageWidget(
                  imageUrl: staffImageUrl,
                  cacheKey: staff?.id.toString() ?? '',
                  height: 60,
                  width: 40,
                ),
              ),
            Expanded(
              child: Text(
                name,
                style: const TextStyle(
                  color: CupertinoColors.label,
                  fontSize: 17,
                ),
              ),
            ),
            if (staff != null && staff.isFavourite)
              const Padding(
                padding: EdgeInsets.only(right: 8.0),
                child: Icon(
                  CupertinoIcons.heart_fill,
                  color: CupertinoColors.systemRed,
                  size: 20,
                ),
              ),
            const Icon(
              CupertinoIcons.chevron_right,
              color: CupertinoColors.systemGrey,
              size: 20,
            ),
          ],
        ),
      ),
    );
  }
}
