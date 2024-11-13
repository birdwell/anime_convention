import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'home_provider.g.dart';

@riverpod
class Home extends _$Home {
  @override
  int build() {
    return 0;
  }

  void increment() => state++;

  void decrement() => state--;
}
