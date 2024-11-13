import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CharacterImageWidget extends StatelessWidget {
  final String imageUrl;
  final String cacheKey;

  const CharacterImageWidget({
    super.key,
    required this.imageUrl,
    required this.cacheKey,
  });

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: BorderRadius.circular(8),
      child: CachedNetworkImage(
        imageUrl: imageUrl,
        placeholder: (context, url) => SizedBox(
          width: 50,
          height: 50,
          child: Shimmer.fromColors(
            baseColor: Colors.grey.shade300,
            highlightColor: Colors.grey.shade100,
            child: Container(
              color: Colors.grey.shade300,
            ),
          ),
        ),
        errorWidget: (context, url, error) => const Icon(Icons.error),
        width: 50,
        height: 50,
        fit: BoxFit.cover,
        cacheKey: cacheKey,
        alignment: Alignment.center,
      ),
    );
  }
}
