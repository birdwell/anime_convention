import 'package:riverpod/riverpod.dart';

final staffProvider = StateNotifierProvider.autoDispose((ref) {
  return Staff();
});

class Staff extends StateNotifier<int> {
  Staff() : super(0);

  void increment() => state++;
  void decrement() => state--;
}
