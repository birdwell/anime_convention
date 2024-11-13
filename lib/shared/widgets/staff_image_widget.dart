import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class StaffImageWidget extends StatelessWidget {
  final String imageUrl;
  final String cacheKey;

  const StaffImageWidget({
    super.key,
    required this.imageUrl,
    required this.cacheKey,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8), // Circle-like shape
        child: CachedNetworkImage(
          height: 150,
          fit: BoxFit.cover,
          imageUrl: imageUrl,
          placeholder: (context, url) => SizedBox(
            height: 150,
            width: 100,
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
}
