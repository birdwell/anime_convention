import 'package:anime_convention/features/voice_actor/voice_actor_repository.dart';
import 'package:anime_convention/shared/api/api_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../provider/home_provider.dart';

class HomeBody extends ConsumerWidget {
  const HomeBody({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final count = ref.watch(homeProvider);
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(count.toString()),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              TextButton(
                onPressed: () async {
                  final apiService = ApiService();
                  final repository = VoiceActorRepository(apiService);

                  try {
                    final voiceActor =
                        await repository.fetchVoiceActor("Kana Hanazawa");

                    print(
                        "Name: ${voiceActor['name']['first']} ${voiceActor['name']['last']}");
                    print("Native Name: ${voiceActor['name']['native']}");
                    print("Language: ${voiceActor['languageV2']}");
                    print("Image: ${voiceActor['image']['large']}");
                    print("Characters:");
                  } catch (e) {
                    print(e);
                  }
                },
                child: Text('Get Voice Actor'),
              ),
              TextButton(
                onPressed: () {
                  ref.read(homeProvider.notifier).increment();
                },
                child: Text('Increment'),
              ),
              TextButton(
                onPressed: () {
                  ref.read(homeProvider.notifier).decrement();
                },
                child: Text('Decrement'),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
