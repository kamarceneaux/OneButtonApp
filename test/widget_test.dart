// Basic smoke test for the One Button App.
//
// Verifies the button renders and that tapping it does not throw or change
// anything on screen.

import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import 'package:one_button_app/main.dart';

void main() {
  testWidgets('Button renders and does nothing when pressed', (
    WidgetTester tester,
  ) async {
    await tester.pumpWidget(const MyApp());

    expect(find.text('Button'), findsOneWidget);

    await tester.tap(find.text('Button'));
    await tester.pump();

    expect(find.text('Button'), findsOneWidget);
  });
}
