// ignore_for_file: prefer_const_constructors

import 'package:anime_convention/features/staff/widgets/staff_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('StaffBody', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        MaterialApp(home: StaffBody(name: '')),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
