// ignore_for_file: prefer_const_constructors

import 'package:anime_convention/features/home/widgets/home_body.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('HomeBody', () {
    testWidgets('renders Text', (tester) async {
      await tester.pumpWidget(
        MaterialApp(home: HomeBody()),
      );

      expect(find.byType(Text), findsOneWidget);
    });
  });
}
