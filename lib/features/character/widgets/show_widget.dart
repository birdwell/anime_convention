import 'package:anime_convention/shared/api/queries/__generated__/fetch_character.data.gql.dart';
import 'package:anime_convention/shared/typedefs.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class ShowWidget extends StatelessWidget {
  final GFetchCharacterData_Character_media_nodes? show;

  const ShowWidget({super.key, required this.show});

  _showTVIcon(GFetchCharacterData_Character_media_nodes? media) {
    if (media == null) return false;

    final status = media.mediaListEntry?.status;
    return status != MediaStatus.DROPPED &&
        status != MediaStatus.PLANNING &&
        status != null;
  }

  @override
  Widget build(BuildContext context) {
    final coverImageUrl = show?.coverImage?.large;
    final title =
        show?.title?.english ?? show?.title?.romaji ?? 'Unknown Title';
    final siteUrl = show?.siteUrl;

    return ListTile(
      onTap: () async {
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
      leading: coverImageUrl != null
          ? ClipRRect(
              borderRadius: BorderRadius.circular(8),
              child: Image.network(
                coverImageUrl,
                width: 50,
                height: 50,
                fit: BoxFit.cover,
              ),
            )
          : const Icon(Icons.broken_image),
      trailing: _showTVIcon(show) ? const Icon(Icons.tv) : null,
      title: Text(
        title,
        style: const TextStyle(fontSize: 16),
      ),
    );
  }
}
