import 'package:booking/app/utils/validators.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  group('Validators', () {
    group('validateEmail', () {
      test('should return error message when email is null', () {
        final result = Validators.validateEmail(null);
        expect(result, isNotNull);
        expect(result, contains('enter your email'));
      });

      test('should return error message when email is empty', () {
        final result = Validators.validateEmail('');
        expect(result, isNotNull);
        expect(result, contains('enter your email'));
      });

      test('should return error message for invalid email format', () {
        final result = Validators.validateEmail('invalidemail');
        expect(result, isNotNull);
        expect(result, contains('valid email'));
      });

      test('should return error message for email without @', () {
        final result = Validators.validateEmail('invalid.email.com');
        expect(result, isNotNull);
        expect(result, contains('valid email'));
      });

      test('should return null for valid email', () {
        final result = Validators.validateEmail('test@example.com');
        expect(result, isNull);
      });

      test('should return null for valid email with subdomain', () {
        final result = Validators.validateEmail('user@mail.example.com');
        expect(result, isNull);
      });

      test('should return null for valid email with numbers', () {
        final result = Validators.validateEmail('user123@test.com');
        expect(result, isNull);
      });
    });

    group('validatePassword', () {
      test('should return error message when password is null', () {
        final result = Validators.validatePassword(null);
        expect(result, isNotNull);
        expect(result, contains('enter your password'));
      });

      test('should return error message when password is empty', () {
        final result = Validators.validatePassword('');
        expect(result, isNotNull);
        expect(result, contains('enter your password'));
      });

      test('should return error message when password is too short', () {
        final result = Validators.validatePassword('Short1!');
        expect(result, isNotNull);
        expect(result, contains('at least 8 characters'));
      });

      test('should return error message when password has no uppercase', () {
        final result = Validators.validatePassword('password1!');
        expect(result, isNotNull);
        expect(result, contains('uppercase letter'));
      });

      test('should return error message when password has no lowercase', () {
        final result = Validators.validatePassword('PASSWORD1!');
        expect(result, isNotNull);
        expect(result, contains('lowercase letter'));
      });

      test('should return error message when password has no number', () {
        final result = Validators.validatePassword('Password!');
        expect(result, isNotNull);
        expect(result, contains('number'));
      });

      test('should return error message when password has no special character', () {
        final result = Validators.validatePassword('Password1');
        expect(result, isNotNull);
        expect(result, contains('special character'));
      });

      test('should return null for valid password', () {
        final result = Validators.validatePassword('Password1!');
        expect(result, isNull);
      });

      test('should return null for valid password with all special chars', () {
        final result = Validators.validatePassword('Passw0rd@');
        expect(result, isNull);
      });
    });

    group('validateRequired', () {
      test('should return error message when value is null', () {
        final result = Validators.validateRequired(null, 'name');
        expect(result, isNotNull);
        expect(result, contains('enter your name'));
      });

      test('should return error message when value is empty', () {
        final result = Validators.validateRequired('', 'email');
        expect(result, isNotNull);
        expect(result, contains('enter your email'));
      });

      test('should return null for non-empty value', () {
        final result = Validators.validateRequired('value', 'field');
        expect(result, isNull);
      });
    });
  });
}
