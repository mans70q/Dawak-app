# spark_flutter_app

A Flutter application designed to simplify medication management and improve adherence through innovative features.

## Overview

The `spark_flutter_app` leverages technologies like Computer Vision (CV) and Optical Character Recognition (OCR) to assist users in managing their medications efficiently. The app supports both Arabic and English languages, prioritizing safety and convenience.

## Key Features

- **Photo → Medication Recognition (CV/OCR)**: Snap a picture of a pill package or label to detect the brand/generic name and dosage.
- **Drug–Drug Interaction Checker**: Alerts users about dangerous medication combinations.
- **Smart Reminders**: Suggests dose schedules with reliable notifications and adherence tracking.
- **Side-Effect Sheets**: Displays common and serious side effects, highlighting red-flag symptoms.
- **Family Mode**: Manage medications for family members and track their adherence.

## Screenshots

### Login Screen

<img width="300" height="600" alt="Login Screen" src="./assets/screenshots/login_screen.png" />

### Home Screen

<img width="300" height="600" alt="Home Screen" src="./assets/screenshots/home_screen.png" />

### Medicines Screen

<img width="300" height="600" alt="Medicines Screen" src="./assets/screenshots/medicines_screen.png" />

### Medicine Details Screen

<img width="300" height="600" alt="Medicine Details Screen" src="./assets/screenshots/medicine_details_screen.png" />

### Reminders Screen

<img width="300" height="600" alt="Reminders Screen" src="./assets/screenshots/reminders_screen.png" />

### Warning Screen

<img width="300" height="600" alt="Warning Screen" src="./assets/screenshots/warning_screen.png" />

### Add Family Member Screen

<img width="300" height="600" alt="Add Family Member Screen" src="./assets/screenshots/add_family_member_screen.png" />

### Family Mode Screen

<img width="300" height="600" alt="Family Mode Screen" src="./assets/screenshots/family_mode_screen.png" />

### Profile Screen

<img width="300" height="600" alt="Profile Screen" src="./assets/screenshots/profile_screen.png" />

## Purpose

This app is designed to address common challenges in medication management, such as:

- Reducing the risk of medication errors.
- Improving adherence to prescribed schedules.
- Providing critical safety information about drug interactions.
- Offering a user-friendly experience for individuals and caregivers.

## Project Structure

```
spark_flutter_app/
├── lib/
│   ├── core/                    # Core functionalities shared across the app
│   │   ├── helpers/             # Helper functions and utilities
│   │   ├── networking/          # Networking logic (e.g., API calls)
│   │   ├── routing/             # App navigation and routing
│   │   ├── theming/             # Theme and styling configurations
│   │   └── widgets/             # Reusable UI components
│   ├── features/                # App features
│   │   ├── home/                # Home feature
│   │   │   ├── data/            # Data layer
│   │   │   │   ├── models/      # Data models
│   │   │   │   └── repositories/ # Data repositories
│   │   │   ├── logic/           # Business logic layer
│   │   │   │   └── cubits/      # Cubits for state management
│   │   │   └── presentation/    # Presentation layer
│   │   │       ├── screens/     # UI screens
│   │   │       └── widgets/     # UI components specific to the feature
│   ├── app.dart                 # App-level configurations
│   ├── main.dart                # Entry point
├── assets/                      # Static assets (images, fonts, etc.)
├── pubspec.yaml                 # Dependencies
└── README.md                    # Documentation
```

## Application Flow

1. **Onboarding**: Guide users through the app's features during initial setup.
2. **Authentication**: Secure login and account management.
3. **Home Screen**: Access key features and navigate through the app.
4. **Medication Recognition**: Process photos to extract medication details.
5. **Interaction Checker**: Check for potential drug interactions.
6. **Reminders**: Suggest schedules and send notifications.
7. **Side-Effect Sheets**: View detailed medication side effects.

## Architecture

The app follows a modular architecture to ensure scalability and maintainability. Each feature is self-contained with its own `data`, `logic`, and `presentation` layers. The `core` module provides shared functionalities used across the app.

### Layers

- **Data Layer**: Handles data models and repositories for data fetching and persistence.
- **Logic Layer**: Contains Cubits for state management and business logic.
- **Presentation Layer**: Manages UI screens and widgets for user interaction.

### High-Level Architecture

```
+-------------------+       +-------------------+       +-------------------+
|                   |       |                   |       |                   |
|   Presentation    |<----->|      Logic        |<----->|       Data        |
|                   |       |                   |       |                   |
+-------------------+       +-------------------+       +-------------------+
        ^                           ^                           ^
        |                           |                           |
        |                           |                           |
+-------------------+       +-------------------+       +-------------------+
|                   |       |                   |       |                   |
|   Core Widgets    |       |   Cubits          |       |   Repositories    |
|                   |       |                   |       |                   |
+-------------------+       +-------------------+       +-------------------+
```

## Getting Started

### Prerequisites

- Flutter SDK
- Android Studio or VS Code
- Connected device or emulator

### Installation

1. Clone the repository:
   ```bash
   git clone <repository-url>
   ```
2. Navigate to the project directory:
   ```bash
   cd spark_mobile_app
   ```
3. Install dependencies:
   ```bash
   flutter pub get
   ```

### Running the App

1. Connect a device or start an emulator.
2. Run the app:
   ```bash
   flutter run
   ```

## Resources

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Contributing

Contributions are welcome! Submit issues or pull requests to improve the project.

## License

This project is licensed under the [MIT License](LICENSE).
