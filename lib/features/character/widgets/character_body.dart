import 'package:anime_convention/features/character/provider/provider.dart';
import 'package:anime_convention/features/character/widgets/show_widget.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:url_launcher/url_launcher.dart';

class CharacterBody extends ConsumerWidget {
  const CharacterBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final id = ref.read(characterIdProvider);
    final characterAsyncValue = ref.watch(characterProvider(id));

    return characterAsyncValue.when(
      data: (character) {
        if (character == null) {
          return const Center(child: Text('Character not found'));
        }

        final imageUrl = character.image?.large;
        final shows = character.media?.nodes;
        final siteUrl = character.siteUrl;

        return CustomScrollView(
          slivers: [
            // AppBar for character details
            SliverAppBar(
              expandedHeight: 200.0,
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
                        errorWidget: (context, url, error) =>
                            const Icon(Icons.error),
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
            ),
            SliverToBoxAdapter(child: const SizedBox(height: 16)),
            if (shows != null)
              SliverList(
                delegate: SliverChildBuilderDelegate(
                  (context, index) {
                    final show = shows[index];
                    return ShowWidget(show: show);
                  },
                  childCount: shows.length,
                ),
              ),
          ],
        );
      },
      loading: () => const Scaffold(
        body: Center(child: CircularProgressIndicator()),
      ),
      error: (error, stackTrace) => Scaffold(
        body: Center(child: Text('Error: $error')),
      ),
    );
  }
}
