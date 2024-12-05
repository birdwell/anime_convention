import 'package:anime_convention/shared/api/queries/__generated__/fetch_character.data.gql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class CharacterAppbarWidget extends StatelessWidget {
  final GFetchCharacterData_Character character;

  const CharacterAppbarWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final imageUrl = character.image?.large;
    final siteUrl = character.siteUrl;

    return SliverAppBar(
      expandedHeight: 200,
      stretch: true,
      pinned: true,
      actions: [
        IconButton(
          icon: const Icon(Icons.open_in_browser),
          onPressed: () async {
            if (siteUrl != null) {
              final uri = Uri.parse(siteUrl);
              if (await canLaunchUrl(uri)) {
                await launchUrl(uri, mode: LaunchMode.inAppBrowserView);
              } else {
                Fluttertoast.showToast(
                  msg: 'Could not launch $siteUrl',
                );
              }
            }
          },
        ),
      ],
      iconTheme: const IconThemeData(
        color: Colors.white,
      ),
      surfaceTintColor: Colors.white,
      backgroundColor: Colors.white,
      flexibleSpace: FlexibleSpaceBar(
        title: Text(
          character.name?.full ?? '',
          style: const TextStyle(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        background: Stack(
          fit: StackFit.expand,
          children: [
            if (imageUrl != null)
              CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) =>
                    const Center(child: CircularProgressIndicator()),
                errorWidget: (context, url, error) => const Icon(Icons.error),
                filterQuality: FilterQuality.high, // Improves quality
              ),
            const DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [Colors.transparent, Colors.black],
                  begin: Alignment.topCenter,
                  end: Alignment.bottomCenter,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
