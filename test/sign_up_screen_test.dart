import 'package:booking/app/constants/app_strings.dart';
import 'package:booking/views/sign_up/sign_up_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('SignUpScreen', () {
    testWidgets('should display all form fields', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: SignUpScreen(),
        ),
      );

      // Verify all fields are displayed
      expect(find.text(AppStrings.signUpText), findsOneWidget);
      expect(find.text(AppStrings.firstNameLabel), findsOneWidget);
      expect(find.text(AppStrings.lastNameLabel), findsOneWidget);
      expect(find.text(AppStrings.emailLabel), findsOneWidget);
      expect(find.text(AppStrings.cityLabel), findsOneWidget);
      expect(find.text(AppStrings.countryLabel), findsOneWidget);
      expect(find.text(AppStrings.bioLabel), findsOneWidget);
      expect(find.text(AppStrings.passwordLabel), findsOneWidget);
      expect(find.text(AppStrings.signUpButton), findsAtLeastNWidgets(1));
    });

    testWidgets('should show validation errors when fields are empty',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: SignUpScreen(),
        ),
      );

      // Scroll to the bottom to find the sign up button
      await tester.scrollUntilVisible(
        find.widgetWithText(ElevatedButton, AppStrings.signUpButton),
        100,
        scrollable: find.byType(Scrollable).last,
      );

      // Tap sign up button without entering data
      await tester.tap(find.widgetWithText(ElevatedButton, AppStrings.signUpButton));
      await tester.pumpAndSettle();

      // Verify error messages are displayed
      expect(find.text('Please enter your first name'), findsOneWidget);
      expect(find.text('Please enter your last name'), findsOneWidget);
      expect(find.text(AppStrings.emailEmptyError), findsOneWidget);
      expect(find.text('Please enter your city'), findsOneWidget);
      expect(find.text('Please enter your country'), findsOneWidget);
      expect(find.text('Please enter your bio'), findsOneWidget);
      expect(find.text(AppStrings.passwordEmptyError), findsOneWidget);
    });

    testWidgets('should validate email format', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: SignUpScreen(),
        ),
      );

      // Find and fill the first name field
      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.firstNameLabel),
        'John',
      );

      // Find and fill the last name field
      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.lastNameLabel),
        'Doe',
      );

      // Enter invalid email
      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.emailLabel),
        'invalidemail',
      );

      // Fill remaining fields
      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.cityLabel),
        'New York',
      );

      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.countryLabel),
        'USA',
      );

      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.bioLabel),
        'Test bio',
      );

      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.passwordLabel),
        'Password1!',
      );

      // Scroll to the button and tap
      await tester.scrollUntilVisible(
        find.widgetWithText(ElevatedButton, AppStrings.signUpButton),
        100,
        scrollable: find.byType(Scrollable).last,
      );

      await tester.tap(find.widgetWithText(ElevatedButton, AppStrings.signUpButton));
      await tester.pumpAndSettle();

      // Verify email validation error
      expect(find.text(AppStrings.emailInvalidError), findsOneWidget);
    });

    testWidgets('should validate password requirements',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: SignUpScreen(),
        ),
      );

      // Fill all fields except password
      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.firstNameLabel),
        'John',
      );

      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.lastNameLabel),
        'Doe',
      );

      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.emailLabel),
        'test@example.com',
      );

      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.cityLabel),
        'New York',
      );

      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.countryLabel),
        'USA',
      );

      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.bioLabel),
        'Test bio',
      );

      // Enter weak password
      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.passwordLabel),
        'weak',
      );

      // Scroll to the button and tap
      await tester.scrollUntilVisible(
        find.widgetWithText(ElevatedButton, AppStrings.signUpButton),
        100,
        scrollable: find.byType(Scrollable).last,
      );

      await tester.tap(find.widgetWithText(ElevatedButton, AppStrings.signUpButton));
      await tester.pumpAndSettle();

      // Should show password length error
      expect(find.text(AppStrings.passwordLengthError), findsOneWidget);
    });

    testWidgets('should show success message with valid data',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: SignUpScreen(),
        ),
      );

      // Fill all fields with valid data
      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.firstNameLabel),
        'John',
      );

      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.lastNameLabel),
        'Doe',
      );

      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.emailLabel),
        'test@example.com',
      );

      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.cityLabel),
        'New York',
      );

      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.countryLabel),
        'USA',
      );

      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.bioLabel),
        'Test bio',
      );

      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.passwordLabel),
        'Password1!',
      );

      // Scroll to the button and tap
      await tester.scrollUntilVisible(
        find.widgetWithText(ElevatedButton, AppStrings.signUpButton),
        100,
        scrollable: find.byType(Scrollable).last,
      );

      await tester.tap(find.widgetWithText(ElevatedButton, AppStrings.signUpButton));
      await tester.pumpAndSettle();

      // Verify success message
      expect(find.text(AppStrings.signingUpMessage), findsOneWidget);
    });

    testWidgets('should have password field obscured',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: SignUpScreen(),
        ),
      );

      // Find password field
      final passwordField = tester.widget<TextFormField>(
        find.widgetWithText(TextFormField, AppStrings.passwordLabel),
      );

      // Verify password is obscured
      expect(passwordField.obscureText, true);
    });

    testWidgets('should have multi-line bio field', (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: SignUpScreen(),
        ),
      );

      // Find bio field
      final bioField = tester.widget<TextFormField>(
        find.widgetWithText(TextFormField, AppStrings.bioLabel),
      );

      // Verify bio field allows multiple lines
      expect(bioField.maxLines, 3);
    });
  });
}
