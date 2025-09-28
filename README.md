
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
<img width="300" height="600" alt="Screenshot_1759057041" src="https://github.com/user-attachments/assets/1604b35a-2228-4cb8-8d74-0de906ed06b8" />


### Home Screen
<img width="300" height="600" alt="Screenshot_1759057085" src="https://github.com/user-attachments/assets/9a0e4037-ffa5-4bcd-9796-2a6b6eae7ded" />


### Medicines Screen
<img width="300" height="600" alt="Screenshot_1759057105" src="https://github.com/user-attachments/assets/daf16973-240e-4a08-bdbb-8244fe055e9a" />


### Medicine Details Screen
<img width="300" height="600" alt="Screenshot_1759057113" src="https://github.com/user-attachments/assets/52a1b844-7949-4e8c-a4df-cbac8c679b0e" />


### Reminders Screen
<img width="300" height="600" alt="Screenshot_1759057102" src="https://github.com/user-attachments/assets/160864a7-a992-46a9-a498-8a20d9097d01" />


### Warning Screen
<img width="300" height="600" alt="Screenshot_1759057089" src="https://github.com/user-attachments/assets/ed88e2c3-f751-43d6-9a15-bee944fea066" />


### Add Family Member Screen
<img width="300" height="600" alt="Screenshot_1759057149" src="https://github.com/user-attachments/assets/5fb9a09d-b591-4f71-b348-411bac2925e8" />


### Family Mode Screen
<img width="300" height="600" alt="Screenshot_1759057141" src="https://github.com/user-attachments/assets/51ed26e1-21da-4a75-81ac-dd6c76f56f54" />


### Profile Screen
<img width="300" height="600" alt="Screenshot_1759057119" src="https://github.com/user-attachments/assets/e3f4f0df-6049-4fb5-b413-692295fcdcae" />


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
