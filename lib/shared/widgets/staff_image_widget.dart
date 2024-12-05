import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:shimmer/shimmer.dart';

class StaffImageWidget extends StatelessWidget {
  final String imageUrl;
  final String cacheKey;
  final double height;
  final double width;

  const StaffImageWidget({
    super.key,
    required this.imageUrl,
    required this.cacheKey,
    this.height = 150,
    this.width = 100,
  });

  @override
  Widget build(BuildContext context) => Center(
        child: ClipRRect(
          borderRadius: BorderRadius.circular(8),
          child: CachedNetworkImage(
            height: height,
            width: width,
            fit: BoxFit.cover,
            imageUrl: imageUrl,
            placeholder: (context, url) => SizedBox(
              height: height,
              width: width,
              child: Shimmer.fromColors(
                baseColor: CupertinoColors.systemGrey6,
                highlightColor: CupertinoColors.systemGrey5,
                child: Container(
                  color: CupertinoColors.systemGrey6,
                ),
              ),
            ),
            errorWidget: (context, url, error) => Container(
              height: height,
              width: width,
              color: CupertinoColors.systemGrey6,
              child: const Icon(
                CupertinoIcons.exclamationmark_triangle,
                color: CupertinoColors.systemRed,
              ),
            ),
            cacheKey: cacheKey,
          ),
        ),
      );
}
