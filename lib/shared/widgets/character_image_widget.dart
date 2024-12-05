import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:shimmer/shimmer.dart';

class CharacterImageWidget extends StatelessWidget {
  final String imageUrl;
  final String cacheKey;
  final double width;
  final double height;

  const CharacterImageWidget({
    super.key,
    required this.imageUrl,
    required this.cacheKey,
    this.width = 50,
    this.height = 50,
  });

  @override
  Widget build(BuildContext context) => ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: CachedNetworkImage(
          imageUrl: imageUrl,
          placeholder: (context, url) => SizedBox(
            width: width,
            height: height,
            child: Shimmer.fromColors(
              baseColor: CupertinoColors.systemGrey6,
              highlightColor: CupertinoColors.systemGrey5,
              child: Container(
                color: CupertinoColors.systemGrey6,
              ),
            ),
          ),
          errorWidget: (context, url, error) => Container(
            width: width,
            height: height,
            color: CupertinoColors.systemGrey6,
            child: const Icon(
              CupertinoIcons.exclamationmark_triangle,
              color: CupertinoColors.systemRed,
            ),
          ),
          width: width,
          height: height,
          fit: BoxFit.cover,
          cacheKey: cacheKey,
          alignment: Alignment.center,
        ),
      );
}
