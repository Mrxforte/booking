import 'package:booking/app/constants/app_strings.dart';
import 'package:booking/views/login/login_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('LoginScreen', () {
    testWidgets('should display welcome message and form fields',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: LoginScreen(),
        ),
      );

      // Verify welcome message is displayed
      expect(find.text(AppStrings.welcomeMessage), findsOneWidget);

      // Verify email field is displayed
      expect(find.text(AppStrings.emailLabel), findsOneWidget);

      // Verify password field is displayed
      expect(find.text(AppStrings.passwordLabel), findsOneWidget);

      // Verify login button is displayed
      expect(find.text(AppStrings.loginButton), findsOneWidget);

      // Verify sign up prompt is displayed
      expect(find.text(AppStrings.noAccountText), findsOneWidget);
      expect(find.text(AppStrings.signUpButton), findsOneWidget);
    });

    testWidgets('should show validation errors when fields are empty',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: LoginScreen(),
        ),
      );

      // Tap login button without entering data
      await tester.tap(find.text(AppStrings.loginButton));
      await tester.pumpAndSettle();

      // Verify error messages are displayed
      expect(find.text(AppStrings.emailEmptyError), findsOneWidget);
      expect(find.text(AppStrings.passwordEmptyError), findsOneWidget);
    });

    testWidgets('should show error for invalid email format',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: LoginScreen(),
        ),
      );

      // Enter invalid email
      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.emailLabel),
        'invalidemail',
      );

      // Enter valid password
      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.passwordLabel),
        'Password1!',
      );

      // Tap login button
      await tester.tap(find.text(AppStrings.loginButton));
      await tester.pumpAndSettle();

      // Verify email validation error is displayed
      expect(find.text(AppStrings.emailInvalidError), findsOneWidget);
    });

    testWidgets('should show password validation errors',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: LoginScreen(),
        ),
      );

      // Enter valid email
      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.emailLabel),
        'test@example.com',
      );

      // Test short password
      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.passwordLabel),
        'Short1!',
      );

      await tester.tap(find.text(AppStrings.loginButton));
      await tester.pumpAndSettle();

      expect(find.text(AppStrings.passwordLengthError), findsOneWidget);
    });

    testWidgets('should show success message for valid credentials',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: LoginScreen(),
        ),
      );

      // Enter valid email
      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.emailLabel),
        'test@example.com',
      );

      // Enter valid password
      await tester.enterText(
        find.widgetWithText(TextFormField, AppStrings.passwordLabel),
        'Password1!',
      );

      // Tap login button
      await tester.tap(find.text(AppStrings.loginButton));
      await tester.pumpAndSettle();

      // Verify success message is displayed
      expect(find.text(AppStrings.loggingInMessage), findsOneWidget);
    });

    testWidgets('should navigate to sign up screen when tapping sign up button',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        MaterialApp(
          home: const LoginScreen(),
          routes: {
            '/sign_up': (context) => const Scaffold(
                  body: Text('Sign Up Screen'),
                ),
          },
        ),
      );

      // Tap on sign up button
      await tester.tap(find.text(AppStrings.signUpButton));
      await tester.pumpAndSettle();

      // Verify navigation to sign up screen
      expect(find.text('Sign Up Screen'), findsOneWidget);
    });

    testWidgets('should have text obscured for password field',
        (WidgetTester tester) async {
      await tester.pumpWidget(
        const MaterialApp(
          home: LoginScreen(),
        ),
      );

      // Find password field
      final passwordField = tester.widget<TextFormField>(
        find.widgetWithText(TextFormField, AppStrings.passwordLabel),
      );

      // Verify password is obscured
      expect(passwordField.obscureText, true);
    });
  });
}
