import 'package:booking/app/constants/app_strings.dart';
import 'package:booking/views/splash/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SplashScreen', () {
    testWidgets('should display app logo and name', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: SplashScreen(),
        ),
      );

      // Verify that the logo icon is displayed
      expect(find.byIcon(Icons.hotel), findsOneWidget);

      // Verify that the app name is displayed
      expect(find.text(AppStrings.appName), findsOneWidget);
    });

    testWidgets('should navigate to login screen after 3 seconds',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const SplashScreen(),
          routes: {
            '/login': (context) => const Scaffold(
                  body: Text('Login Screen'),
                ),
          },
        ),
      );

      // Initially on splash screen
      expect(find.text(AppStrings.appName), findsOneWidget);
      expect(find.text('Login Screen'), findsNothing);

      // Wait for navigation to complete
      await tester.pumpAndSettle(const Duration(seconds: 4));

      // Should now be on login screen
      expect(find.text('Login Screen'), findsOneWidget);
    });

    testWidgets('should have correct layout', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: SplashScreen(),
        ),
      );

      // Verify the Scaffold exists
      expect(find.byType(Scaffold), findsOneWidget);

      // Verify Center widget exists
      expect(find.byType(Center), findsOneWidget);

      // Verify Column exists with correct alignment
      final columnFinder = find.byType(Column);
      expect(columnFinder, findsOneWidget);

      final column = tester.widget<Column>(columnFinder);
      expect(column.mainAxisAlignment, MainAxisAlignment.center);
    });
  });
}
