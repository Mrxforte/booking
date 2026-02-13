# 📱 Booking App

A beautiful and modern booking application built with Flutter. This app provides a seamless user experience for booking hotels and accommodations with a clean, intuitive interface.

![Flutter](https://img.shields.io/badge/Flutter-3.10.4-blue.svg)
![Dart](https://img.shields.io/badge/Dart-3.0+-blue.svg)
![License](https://img.shields.io/badge/license-MIT-green.svg)

## ✨ Features

- 🚀 **Splash Screen** - Elegant welcome screen with smooth transitions
- 🔐 **User Authentication** - Secure login and registration system
- ✅ **Form Validation** - Comprehensive email and password validation
- 🎨 **Modern UI** - Clean and intuitive Material Design interface
- 📱 **Responsive Design** - Works seamlessly on all device sizes
- 🔒 **Password Security** - Enforces strong password requirements

## 📸 Screenshots

> Coming soon! Screenshots will be added once the app is fully deployed.

## 🏗️ Project Structure

```
lib/
├── app/
│   ├── constants/
│   │   ├── app_strings.dart    # Application string constants
│   │   └── app_icons.dart      # Application icon constants
│   └── utils/
│       └── validators.dart     # Form validation utilities
└── views/
    ├── splash/
    │   └── splash_screen.dart  # Splash screen
    ├── login/
    │   └── login_screen.dart   # Login screen
    └── sign_up/
        └── sign_up_screen.dart # Registration screen

test/
├── validators_test.dart        # Unit tests for validators
├── splash_screen_test.dart     # Widget tests for splash screen
├── login_screen_test.dart      # Widget tests for login screen
├── sign_up_screen_test.dart    # Widget tests for sign up screen
└── widget_test.dart            # Main app widget tests
```

## 🚀 Getting Started

### Prerequisites

Before you begin, ensure you have the following installed:
- [Flutter](https://flutter.dev/docs/get-started/install) (3.10.4 or higher)
- [Dart](https://dart.dev/get-dart) (3.0 or higher)
- A code editor (VS Code, Android Studio, or IntelliJ IDEA)
- An emulator or physical device for testing

### Installation

1. **Clone the repository**
   ```bash
   git clone https://github.com/Mrxforte/booking.git
   cd booking
   ```

2. **Install dependencies**
   ```bash
   flutter pub get
   ```

3. **Run the app**
   ```bash
   flutter run
   ```

### Running on Different Platforms

- **Android Emulator**
  ```bash
  flutter run
  ```

- **iOS Simulator** (macOS only)
  ```bash
  flutter run
  ```

- **Web Browser**
  ```bash
  flutter run -d chrome
  ```

- **Desktop** (Windows, macOS, or Linux)
  ```bash
  flutter run -d windows  # or macos / linux
  ```

## 🧪 Testing

This project includes comprehensive tests to ensure code quality and reliability.

### Run All Tests
```bash
flutter test
```

### Run Specific Test Files
```bash
# Unit tests
flutter test test/validators_test.dart

# Widget tests
flutter test test/splash_screen_test.dart
flutter test test/login_screen_test.dart
flutter test test/sign_up_screen_test.dart
```

### Test Coverage
```bash
flutter test --coverage
```

### Test Types

- **Unit Tests**: Testing validation logic and utilities
- **Widget Tests**: Testing individual screen widgets
- **Integration Tests**: Testing app flows and navigation (coming soon)

## 🛠️ Development

### Code Quality

This project follows Flutter best practices and includes:
- Linting rules configured in `analysis_options.yaml`
- Comprehensive testing
- Consistent code formatting
- Proper error handling

### Running the Linter
```bash
flutter analyze
```

### Format Code
```bash
flutter format lib/ test/
```

### Build Release Version

**Android APK**
```bash
flutter build apk --release
```

**iOS IPA** (macOS only)
```bash
flutter build ios --release
```

**Web**
```bash
flutter build web
```

## 📋 Features in Detail

### 🔐 Authentication

#### Login Screen
- Email and password authentication
- Real-time form validation
- Secure password input
- Navigation to sign-up screen

#### Sign Up Screen
- Comprehensive user registration
- Fields: First Name, Last Name, Email, City, Country, Bio, Password
- Email format validation
- Strong password requirements:
  - Minimum 8 characters
  - At least one uppercase letter
  - At least one lowercase letter
  - At least one number
  - At least one special character (!@#$&*~)

### ✅ Form Validation

The app includes robust validation:
- **Email Validation**: Proper email format checking
- **Password Validation**: Enforces security best practices
- **Required Fields**: All necessary fields must be filled
- **Real-time Feedback**: Instant validation messages

## 🎨 UI/UX Design

- Material Design 3 principles
- Consistent color scheme
- Smooth animations and transitions
- User-friendly error messages
- Responsive layouts for all screen sizes

## 📦 Dependencies

Main dependencies used in this project:

```yaml
dependencies:
  flutter:
    sdk: flutter
  cupertino_icons: ^1.0.8

dev_dependencies:
  flutter_test:
    sdk: flutter
  flutter_lints: ^6.0.0
```

## 🤝 Contributing

Contributions are welcome! Here's how you can help:

1. Fork the repository
2. Create a new branch (`git checkout -b feature/amazing-feature`)
3. Make your changes
4. Run tests (`flutter test`)
5. Commit your changes (`git commit -m 'Add amazing feature'`)
6. Push to the branch (`git push origin feature/amazing-feature`)
7. Open a Pull Request

### Contribution Guidelines

- Follow the existing code style
- Add tests for new features
- Update documentation as needed
- Ensure all tests pass before submitting PR

## 📝 License

This project is licensed under the MIT License - see the LICENSE file for details.

## 👨‍💻 Author

**Mrxforte**
- GitHub: [@Mrxforte](https://github.com/Mrxforte)

## 🙏 Acknowledgments

- Flutter team for the amazing framework
- Material Design for design guidelines
- Contributors and testers

## 📞 Support

If you have any questions or need help, please:
- Open an issue on GitHub
- Contact the maintainer

## 🗺️ Roadmap

### Current Features
- ✅ Splash Screen
- ✅ Login Screen
- ✅ Sign Up Screen
- ✅ Form Validation
- ✅ Comprehensive Testing

### Upcoming Features
- 🔄 Backend Integration
- 🔄 Hotel Listings
- 🔄 Booking Functionality
- 🔄 User Profile Management
- 🔄 Payment Integration
- 🔄 Booking History
- 🔄 Push Notifications
- 🔄 Multi-language Support
- 🔄 Dark Mode

---

Made with ❤️ using Flutter
