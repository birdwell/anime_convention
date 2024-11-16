// import 'package:anime_convention/features/staff/view/staff_page.dart';
// import 'package:anime_convention/features/staff/widgets/staff_body.dart';
// import 'package:anime_convention/shared/api/queries/__generated__/fetch_voice_actor.data.gql.dart';
// import 'package:anime_convention/shared/repository/staff_repository.dart';
// import 'package:built_collection/built_collection.dart';
// import 'package:flutter/material.dart';
// import 'package:flutter_riverpod/flutter_riverpod.dart';
// import 'package:flutter_test/flutter_test.dart';
// import 'package:mockito/annotations.dart';
// import 'package:mockito/mockito.dart';

// import 'staff_page_test.mocks.dart';

// @GenerateMocks([StaffRepository])
// void main() {
//   group('StaffPage', () {
//     testWidgets('renders StaffPage with given name', (tester) async {
//       const name = 'John Doe';
//       final mockRepo = MockStaffRepository();

//       when(mockRepo.fetchStaff(name)).thenAnswer(
//         (_) => Future.value(
//           GFetchVoiceActorData_Staff(
//             (b) => b
//               ..id = 1
//               ..name = (GFetchVoiceActorData_Staff_nameBuilder()
//                 ..first = 'John'
//                 ..last = 'Doe')
//               ..image = (GFetchVoiceActorData_Staff_imageBuilder()
//                 ..large = 'https://example.com/image.jpg'),
  
//                 ])),
//           ),
//         ),
//       );

//       final scope = ProviderScope(
//         overrides: [
//           staffRepositoryProvider.overrideWithValue(mockRepo),
//         ],
//         child: MaterialApp(
//           home: StaffPage(
//             name: 'John Doe',
//           ),
//         ),
//       );

//       await tester.pumpWidget(scope);
//       await tester.pumpAndSettle();

//       expect(find.text(name), findsOneWidget);
//       expect(find.byType(StaffBody), findsOneWidget);
//     });
//   });
// }
