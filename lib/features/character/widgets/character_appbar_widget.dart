import 'package:anime_convention/shared/api/queries/__generated__/fetch_character.data.gql.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/cupertino.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class CharacterAppbarWidget extends StatelessWidget {
  final GFetchCharacterData_Character character;

  const CharacterAppbarWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final siteUrl = character.siteUrl;

    return CupertinoSliverNavigationBar(
      backgroundColor: CupertinoColors.systemBackground.withOpacity(0.9),
      largeTitle: Text(
        character.name?.full ?? '',
        style: const TextStyle(
          fontSize: 32,
          fontWeight: FontWeight.bold,
        ),
      ),
      trailing: siteUrl != null
          ? CupertinoButton(
              padding: EdgeInsets.zero,
              onPressed: () async {
                final uri = Uri.parse(siteUrl);
                if (await canLaunchUrl(uri)) {
                  await launchUrl(uri, mode: LaunchMode.inAppBrowserView);
                } else {
                  Fluttertoast.showToast(
                    msg: 'Could not open link',
                    backgroundColor:
                        CupertinoColors.systemGrey.withOpacity(0.9),
                    textColor: CupertinoColors.white,
                  );
                }
              },
              child: const Icon(CupertinoIcons.link),
            )
          : null,
    );
  }
}

class CharacterHeaderWidget extends StatelessWidget {
  final GFetchCharacterData_Character character;

  const CharacterHeaderWidget({super.key, required this.character});

  @override
  Widget build(BuildContext context) {
    final imageUrl = character.image?.large;

    return SliverToBoxAdapter(
      child: SizedBox(
        height: 200,
        width: double.infinity,
        child: Stack(
          fit: StackFit.expand,
          children: [
            if (imageUrl != null)
              CachedNetworkImage(
                imageUrl: imageUrl,
                fit: BoxFit.cover,
                placeholder: (context, url) => const Center(
                  child: CupertinoActivityIndicator(),
                ),
                errorWidget: (context, url, error) => Center(
                  child: Icon(
                    CupertinoIcons.exclamationmark_triangle,
                    color: CupertinoColors.systemRed,
                    size: 32,
                  ),
                ),
                filterQuality: FilterQuality.high,
              ),
            DecoratedBox(
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  colors: [
                    CupertinoColors.systemBackground.withOpacity(0),
                    CupertinoColors.systemBackground,
                  ],
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
