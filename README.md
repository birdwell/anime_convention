# anime_convention

A new Flutter project.

## Getting Started

```shell
flutter pub get
dart run build_runner build --delete-conflicting-outputs
```

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
dart run build_runner build --delete-conflicting-outputs
```

## Graphql

Get a new schema

```bash
get-graphql-schema https://graphql.anilist.co > lib/schema.graphql
```