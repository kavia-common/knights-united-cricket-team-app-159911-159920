import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:flutter_frontend/main.dart';

void main() {
  testWidgets('Home screen renders with bottom navigation and title', (WidgetTester tester) async {
    await tester.pumpWidget(const KnightsUnitedApp());
    await tester.pumpAndSettle();

    expect(find.text('Knights United'), findsWidgets);
    expect(find.byType(NavigationBar), findsOneWidget);
  });

  testWidgets('Switching tabs updates view', (WidgetTester tester) async {
    await tester.pumpWidget(const KnightsUnitedApp());
    await tester.pumpAndSettle();

    // Tap on Fixtures tab
    final fixtures = find.text('Fixtures');
    expect(fixtures, findsOneWidget);
    await tester.tap(fixtures);
    await tester.pumpAndSettle();

    // AppBar title should update to "Match Center"
    expect(find.text('Match Center'), findsOneWidget);
  });
}
