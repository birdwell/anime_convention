# anime_convention

A new Flutter project.

## Getting Started

This project is a starting point for a Flutter application.

A few resources to get you started if this is your first Flutter project:

- [Lab: Write your first Flutter app](https://docs.flutter.dev/get-started/codelab)
- [Cookbook: Useful Flutter samples](https://docs.flutter.dev/cookbook)

For help getting started with Flutter development, view the
[online documentation](https://docs.flutter.dev/), which offers tutorials,
samples, guidance on mobile development, and a full API reference.

## Creating a new feature

We use the [feature brick](https://brickhub.dev/bricks/feature_brick/0.6.2#readme).

Run inside the lib folder:

```bash
mason make feature_brick --feature_name home --state_management riverpod
```

## Flutter Code Generation

You can watch and build

```bash
dart run build_runner watch
```

You can rebuild a single time

```bash
flutter pub run build_runner build --delete-conflicting-outputs
```

## Linting

```bash
dart run custom_lint
```