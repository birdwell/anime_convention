import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
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
        borderRadius: BorderRadius.circular(8), // Circle-like shape
        child: CachedNetworkImage(
          height: height,
          fit: BoxFit.cover,
          imageUrl: imageUrl,
          placeholder: (context, url) => SizedBox(
            height: height,
            width: width,
            child: Shimmer.fromColors(
              baseColor: Colors.grey.shade300,
              highlightColor: Colors.grey.shade100,
              child: Container(
                color: Colors.grey.shade300,
              ),
            ),
          ),
          errorWidget: (context, url, error) => const Icon(Icons.error),
          cacheKey: cacheKey,
        ),
      ),
    );
}
