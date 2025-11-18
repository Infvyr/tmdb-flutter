# Dependency Injection Setup Guide

This project uses **GetIt** for dependency injection, which provides a centralized, service-locator-based approach to managing dependencies across the entire application.

## Overview

The DI system is organized in layers following clean architecture principles:

```
Core Services (Database, HTTP Client)
    ↓
Data Layer (Data Sources, Repositories)
    ↓
Presentation Layer (BLoCs, ViewModels)
```

## Key Files

- **`lib/src/app/di/service_locator.dart`** - Main DI setup file where all dependencies are registered
- **`lib/src/app/di/injector.dart`** - Exports the service locator for use throughout the app
- **`lib/main.dart`** - Initializes the service locator at app startup
- **`lib/app.dart`** - MainApp widget simplified without dependency passing

## How It Works

### 1. Initialization

In `main.dart`, the service locator is initialized before running the app:

```dart
void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  // Initialize service locator / dependency injection
  await setupServiceLocator();

  runApp(const MainApp());
}
```

### 2. Registration

Dependencies are registered in `service_locator.dart` using `getIt.registerSingleton()`:

```dart
// Core services
getIt.registerSingleton<Isar>(isar);
getIt.registerSingleton<http.Client>(httpClient);

// Data layer
getIt.registerSingleton<ShowsRemoteDataSource>(
  ShowsRemoteDataSourceImpl(client: getIt<http.Client>())
);

// Presentation layer
getIt.registerSingleton<ShowsBloc>(
  ShowsBloc(repository: getIt<ShowsRepository>())
);
```

### 3. Usage

Anywhere in your app, retrieve dependencies using `getIt<T>()`:

```dart
// In BLoCs
final showsBloc = getIt<ShowsBloc>();

// In screens
final repository = getIt<ShowsRepository>();

// In services
final httpClient = getIt<http.Client>();
```

## Adding New Dependencies

To add a new dependency:

1. **Create the class/implementation**
2. **Import it in `service_locator.dart`**
3. **Register it in the appropriate `_setup*()` function**:
   - Core services in `_setupCoreDependencies()`
   - Data layer in `_setupDataLayer()`
   - Presentation layer in `_setupPresentationLayer()`

Example - Adding a new feature's BLoC:

```dart
// In _setupPresentationLayer()
getIt.registerSingleton<MyNewBloc>(
  MyNewBloc(repository: getIt<MyNewRepository>())
);
```

## Dependency Types

### Singleton (Default)

```dart
getIt.registerSingleton<MyService>(MyService());
```

Single instance for the lifetime of the app. Used for most dependencies.

### Lazy Singleton

```dart
getIt.registerLazySingleton<MyService>(() => MyService());
```

Instantiated only when first requested.

### Factory

```dart
getIt.registerFactory<MyService>(() => MyService());
```

New instance created every time it's requested.

## Benefits

✅ **Decoupled Code** - Classes don't know how dependencies are created
✅ **Testable** - Easy to inject mock implementations for testing
✅ **Centralized** - All dependencies in one place
✅ **Reusable** - Same instance shared across the entire app
✅ **Scalable** - Easy to add new dependencies as the app grows

## Testing

To reset the service locator for testing:

```dart
import 'package:tmdbmaze/src/app/di/service_locator.dart';

// In test setup
await resetServiceLocator();
```

## Routing Integration

Routes automatically use the service locator via `getIt<T>()`:

```dart
case AppRoutes.shows:
  return MaterialPageRoute(
    builder: (_) => BlocProvider(
      create: (context) => getIt<ShowsBloc>()..add(const LoadShows()),
      child: const ShowsScreen(),
    ),
  );
```

No need to pass repositories or BLoCs through route arguments anymore!
