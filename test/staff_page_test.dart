import 'package:anime_convention/shared/api/queries/__generated__/fetch_voice_actor.data.gql.dart';
import 'package:anime_convention/shared/repository/staff_repository.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:anime_convention/features/staff/view/staff_page.dart';
import 'package:anime_convention/features/staff/widgets/staff_body.dart';
import 'package:mockito/annotations.dart';
import 'package:built_collection/built_collection.dart';
import 'package:mockito/mockito.dart';

import 'staff_page_test.mocks.dart';

@GenerateMocks([StaffRepository])
void main() {
  group('StaffPage', () {
    testWidgets('renders StaffPage with given name', (tester) async {
      const name = 'John Doe';
      final mockRepo = MockStaffRepository();

      when(mockRepo.fetchStaff(name)).thenAnswer(
        (_) => Future.value(
          GFetchVoiceActorData_Staff(
            (b) => b
              ..id = 1
              ..name = (GFetchVoiceActorData_Staff_nameBuilder()
                ..first = 'John'
                ..last = 'Doe')
              ..image = (GFetchVoiceActorData_Staff_imageBuilder()
                ..large = 'https://example.com/image.jpg')
              ..characters = (GFetchVoiceActorData_Staff_charactersBuilder()
                ..edges = ListBuilder([
                  GFetchVoiceActorData_Staff_characters_edges((b) => b
                    ..node =
                        (GFetchVoiceActorData_Staff_characters_edges_nodeBuilder()
                          ..id = 1
                          ..name =
                              (GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder()
                                ..full = 'Character 1')
                          ..image =
                              (GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder()
                                ..large =
                                    'https://example.com/character1.jpg'))),
                  GFetchVoiceActorData_Staff_characters_edges((b) => b
                    ..node =
                        (GFetchVoiceActorData_Staff_characters_edges_nodeBuilder()
                          ..id = 2
                          ..name =
                              (GFetchVoiceActorData_Staff_characters_edges_node_nameBuilder()
                                ..full = 'Character 2')
                          ..image =
                              (GFetchVoiceActorData_Staff_characters_edges_node_imageBuilder()
                                ..large =
                                    'https://example.com/character2.jpg'))),
                ])),
          ),
        ),
      );

      final scope = ProviderScope(
        overrides: [
          staffRepositoryProvider.overrideWithValue(mockRepo),
        ],
        child: MaterialApp(
          home: StaffPage(
            name: 'John Doe',
          ),
        ),
      );

      await tester.pumpWidget(scope);
      await tester.pumpAndSettle();

      expect(find.text(name), findsOneWidget);
      expect(find.byType(StaffBody), findsOneWidget);
    });
  });
}
