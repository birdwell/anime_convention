// ignore_for_file: prefer_const_constructors

import 'package:anime_convention/features/staff/view/staff_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StaffPage', () {
    group('route', () {
      test('is routable', () {
        expect(StaffPage.route(''), isA<MaterialPageRoute>());
      });
    });

    testWidgets('renders StaffView', (tester) async {
      await tester.pumpWidget(MaterialApp(home: StaffPage(name: '')));
      expect(find.byType(StaffView), findsOneWidget);
    });
  });
}
