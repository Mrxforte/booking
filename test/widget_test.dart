import 'package:booking/app/constants/app_strings.dart';
import 'package:booking/main.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  testWidgets('App should start with splash screen', (WidgetTester tester) async {
    // Build our app and trigger a frame
    await tester.pumpWidget(const MyApp());

    // Verify that we start on the splash screen
    expect(find.byIcon(Icons.hotel), findsOneWidget);
    expect(find.text(AppStrings.appName), findsOneWidget);
  });

  testWidgets('App should have MaterialApp with correct title',
      (WidgetTester tester) async {
    await tester.pumpWidget(const MyApp());

    final materialApp = tester.widget<MaterialApp>(find.byType(MaterialApp));
    expect(materialApp.title, AppStrings.appName);
    expect(materialApp.debugShowCheckedModeBanner, false);
  });
}
