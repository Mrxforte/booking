# Contributing to Booking App

Thank you for considering contributing to the Booking App! We welcome contributions from the community.

## 🚀 Getting Started

### Prerequisites
- Flutter SDK (3.10.4 or higher)
- Dart SDK (3.0 or higher)
- Git
- A code editor (VS Code, Android Studio, or IntelliJ IDEA)

### Setting Up Your Development Environment

1. Fork the repository
2. Clone your fork:
   ```bash
   git clone https://github.com/YOUR_USERNAME/booking.git
   cd booking
   ```

3. Add the upstream repository:
   ```bash
   git remote add upstream https://github.com/Mrxforte/booking.git
   ```

4. Install dependencies:
   ```bash
   flutter pub get
   ```

5. Verify your setup:
   ```bash
   flutter doctor
   flutter test
   ```

## 📝 How to Contribute

### Reporting Bugs

If you find a bug, please create an issue with:
- A clear, descriptive title
- Steps to reproduce the bug
- Expected behavior
- Actual behavior
- Screenshots (if applicable)
- Your environment (Flutter version, OS, device)

### Suggesting Enhancements

We love new ideas! Please create an issue with:
- A clear description of the enhancement
- Why this enhancement would be useful
- Possible implementation approach

### Pull Requests

1. **Create a branch** for your feature or fix:
   ```bash
   git checkout -b feature/your-feature-name
   ```

2. **Make your changes** following our coding standards

3. **Write or update tests** for your changes:
   - Unit tests for business logic
   - Widget tests for UI components
   - Ensure all tests pass: `flutter test`

4. **Run the linter**:
   ```bash
   flutter analyze
   ```

5. **Format your code**:
   ```bash
   flutter format lib/ test/
   ```

6. **Commit your changes** with a clear commit message:
   ```bash
   git commit -m "feat: add new booking feature"
   ```

   Follow conventional commits:
   - `feat:` new feature
   - `fix:` bug fix
   - `docs:` documentation changes
   - `style:` formatting, missing semicolons, etc.
   - `refactor:` code restructuring
   - `test:` adding tests
   - `chore:` maintenance tasks

7. **Push to your fork**:
   ```bash
   git push origin feature/your-feature-name
   ```

8. **Create a Pull Request** on GitHub

## 🧪 Testing Guidelines

### Writing Tests

We maintain high test coverage. Please include:

1. **Unit Tests** for:
   - Validators
   - Business logic
   - Utility functions

2. **Widget Tests** for:
   - Screen layouts
   - User interactions
   - Form validation
   - Navigation

3. **Integration Tests** for:
   - Complete user flows
   - End-to-end scenarios

### Test Structure

```dart
void main() {
  group('FeatureName', () {
    testWidgets('should do something', (WidgetTester tester) async {
      // Arrange
      await tester.pumpWidget(const MyWidget());
      
      // Act
      await tester.tap(find.byType(Button));
      await tester.pumpAndSettle();
      
      // Assert
      expect(find.text('Result'), findsOneWidget);
    });
  });
}
```

### Running Tests

```bash
# Run all tests
flutter test

# Run specific test file
flutter test test/validators_test.dart

# Run with coverage
flutter test --coverage

# Watch mode (run tests on file changes)
flutter test --watch
```

## 💻 Coding Standards

### Dart Style Guide

Follow the [official Dart style guide](https://dart.dev/guides/language/effective-dart/style):

- Use `lowerCamelCase` for variables, methods, and parameters
- Use `UpperCamelCase` for classes and types
- Use `lowercase_with_underscores` for file names
- Prefer `final` over `var` when possible
- Use `const` constructors when possible

### Code Organization

```dart
// 1. Imports (grouped)
import 'package:flutter/material.dart';

import 'package:booking/app/constants/app_strings.dart';
import 'package:booking/app/utils/validators.dart';

// 2. Class definition
class MyWidget extends StatelessWidget {
  // 3. Constants
  static const String routeName = '/my-route';
  
  // 4. Fields
  final String title;
  
  // 5. Constructor
  const MyWidget({super.key, required this.title});
  
  // 6. Lifecycle methods
  @override
  Widget build(BuildContext context) {
    return Scaffold();
  }
  
  // 7. Private methods
  void _handleSubmit() {}
}
```

### Widget Guidelines

- Use `const` constructors when widgets don't change
- Extract repeated widgets into separate classes or methods
- Keep `build` methods simple and readable
- Use meaningful widget names
- Add proper keys for lists

### State Management

- Use `StatefulWidget` only when necessary
- Dispose controllers and listeners properly
- Keep state as low in the tree as possible

## 📚 Documentation

### Code Comments

- Use doc comments (`///`) for public APIs
- Write self-documenting code
- Comment complex logic or non-obvious decisions
- Keep comments up-to-date

Example:
```dart
/// Validates an email address format.
///
/// Returns an error message if the email is invalid,
/// or null if the email is valid.
String? validateEmail(String? value) {
  // Implementation
}
```

### README Updates

Update the README.md if your changes:
- Add new features
- Change setup instructions
- Modify dependencies
- Affect usage

## 🔍 Code Review Process

All submissions require review. We use GitHub pull requests for this purpose:

1. A maintainer will review your PR
2. Address any feedback or requested changes
3. Once approved, your PR will be merged

### Review Criteria

- Code follows style guidelines
- Tests are included and passing
- Documentation is updated
- Commits are clean and well-described
- No breaking changes (or properly documented)

## 🏆 Recognition

Contributors will be:
- Listed in the project contributors
- Mentioned in release notes
- Credited in commit messages

## 📧 Questions?

If you have questions:
- Check existing issues
- Read the documentation
- Open a new issue
- Reach out to maintainers

## 📜 Code of Conduct

### Our Pledge

We are committed to providing a welcoming and inclusive experience for everyone.

### Expected Behavior

- Be respectful and considerate
- Welcome newcomers
- Accept constructive criticism
- Focus on what's best for the community

### Unacceptable Behavior

- Harassment or discrimination
- Trolling or insulting comments
- Personal or political attacks
- Publishing others' private information

## 🙏 Thank You!

Thank you for contributing to Booking App. Every contribution helps make this project better!

---

Happy Coding! 🎉
