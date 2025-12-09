# 🔐 Environment Variables & Multi‑Environment Setup

<p align="center">
  <img 
    src="https://github.com/user-attachments/assets/4ba4ed14-b2ad-442b-8e19-c25902e79be1"
    alt="poster"
    width="600"
    style="border-radius: 15px;"
  />
</p>


This README provides a full guide on how to use environment variables
securely in a Flutter project, including `.env` examples, structure, Git
rules, and recommended practices.

------------------------------------------------------------------------
# 🚀 Preview 

![All Environments](https://github.com/user-attachments/assets/9a5845ca-632a-4e55-b3bf-f365b292f9ba)


------------------------------------------------------------------------

## 📌 Example `.env` File (Do NOT Commit Real Secrets)

This file only demonstrates the expected structure:

    BASE_URL=https://dev.example.com
    SENTRY_API_KEY=DEV_SENTRY_KEY
    PUBLIC_KEY_PAYMENT=DEV_PUBLIC_KEY
    PRIVATE_KEY_PAYMENT=DEV_PRIVATE_KEY

⚠️ **Important:** This `.env` file is included **only for explanation**.
Never commit real secrets.

------------------------------------------------------------------------

## ⚠️ Why `.env` Files Must NOT Be Committed

-   They contain API keys, private keys, tokens.
-   If leaked, attackers can:
    -   Access your backend
    -   Send fake payment requests
    -   Abuse monitoring tools like Sentry
-   Leaks require key rotation and security fixes.

Always keep `.env` files private and share them securely (1Password,
Vault, encrypted channels).

------------------------------------------------------------------------

## 📁 Folder Structure

    flutter_envied_multi_environment_demo/
    │
    ├── env/                     # Not committed (raw secret files)
    │     ├── .env.dev
    │     ├── .env.staging
    │     └── .env.prod
    │
    ├── lib/
    │   ├── env/
    │   │   ├── env.dart
    │   │   ├── env_dev.dart
    │   │   ├── env_staging.dart
    │   │   └── env_prod.dart
    │   │
    │   │── envied_demo_screen.dart
    │   │── init_env.dart
    │   └── main.dart
    │
    ├── pubspec.yaml
    ├── .gitignore
    └── README.md


------------------------------------------------------------------------

## 🧱 `.gitignore` Configuration

Make sure `.env` files are ignored:

    env/
    lib/env/**/env.*.g.dart

------------------------------------------------------------------------

## 🚀 Using Envied in Flutter

If you're using the `envied` package:

### Installation

Add to `pubspec.yaml`:

``` yaml
dependencies:
  envied: ^0.3.0

dev_dependencies:
  build_runner: ^2.4.6
  envied_generator: ^0.3.0
```

### Run the generator

    flutter pub run build_runner build --delete-conflicting-outputs

### Switch environments at runtime

    flutter run --dart-define=ENV=dev

    flutter run --dart-define=ENV=staging

    flutter run --dart-define=ENV=prod

### Build release

    flutter build apk --release --dart-define=ENV=dev

    flutter build apk --release --dart-define=ENV=staging

    flutter build apk --release --dart-define=ENV=prod

------------------------------------------------------------------------
