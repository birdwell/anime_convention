

import 'package:anime_convention/shared/api/queries/__generated__/fetch_voice_actor.data.gql.dart';
import 'package:anime_convention/shared/repository/staff_repository.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'staff_provider.g.dart';

@riverpod
Future<GFetchVoiceActorData_Staff?> staff(Ref ref, String staffName) async {
  final staff = await ref.watch(staffRepositoryProvider).fetchStaff(staffName);
  return staff;
}