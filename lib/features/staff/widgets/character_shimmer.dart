import 'package:flutter/material.dart';
import 'package:shimmer/shimmer.dart';

class CharacterShimmer extends StatelessWidget {
  const CharacterShimmer({super.key});

  @override
  Widget build(BuildContext context) => Shimmer.fromColors(
        baseColor: Colors.grey[300]!,
        highlightColor: Colors.grey[100]!,
        child: ListTile(
          leading: ClipRRect(
            borderRadius: BorderRadius.circular(8),
            child: Container(
              width: 50.0,
              height: 50.0,
              color: Colors.white,
            ),
          ),
          title: Container(height: 10.0, color: Colors.white),
          subtitle: Container(height: 10.0, color: Colors.white),
        ),
      );
}
