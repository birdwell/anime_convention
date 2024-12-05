import 'package:flutter/cupertino.dart';
import 'package:shimmer/shimmer.dart';

class CharacterShimmer extends StatelessWidget {
  const CharacterShimmer({super.key});

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: CupertinoColors.systemGrey6,
        highlightColor: CupertinoColors.systemGrey5,
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16.0, vertical: 8.0),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(8),
                child: Container(
                  width: 50.0,
                  height: 50.0,
                  color: CupertinoColors.systemBackground,
                ),
              ),
              const SizedBox(width: 16.0),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      height: 14.0,
                      color: CupertinoColors.systemBackground,
                    ),
                    const SizedBox(height: 8.0),
                    Container(
                      height: 12.0,
                      width: 200.0,
                      color: CupertinoColors.systemBackground,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      );
}
