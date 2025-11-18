# DI Examples - How to Extend the System

## Example 1: Adding a New Feature BLoC

### Step 1: Create your BLoC

```dart
// lib/src/feature/my_feature/presentation/bloc/my_bloc.dart
class MyBloc extends Bloc<MyEvent, MyState> {
  MyBloc({required this.repository}) : super(MyInitial()) {
    on<MyEvent>(_onMyEvent);
  }

  final MyRepository repository;

  Future<void> _onMyEvent(MyEvent event, Emitter<MyState> emit) async {
    // Implementation
  }
}
```

### Step 2: Register in Service Locator

```dart
// In lib/src/app/di/service_locator.dart

// Add import at the top
import 'package:tmdbmaze/src/feature/my_feature/presentation/bloc/my_bloc.dart';

// Add to _setupPresentationLayer()
void _setupPresentationLayer() {
  // Existing code...

  getIt.registerSingleton<MyBloc>(
    MyBloc(repository: getIt<MyRepository>()),
  );
}
```

### Step 3: Use in Routing

```dart
// lib/src/app/routing/routes.dart

case AppRoutes.myRoute:
  return MaterialPageRoute(
    builder: (_) => BlocProvider(
      create: (context) => getIt<MyBloc>(),
      child: const MyScreen(),
    ),
  );
```

## Example 2: Adding a New Repository

### Step 1: Create Repository and Data Sources

```dart
// Domain
abstract class MyRepository {
  Future<Result<MyEntity>> getMyData();
}

// Data - Remote
abstract class MyRemoteDataSource {
  Future<MyModel> fetchMyData();
}

class MyRemoteDataSourceImpl implements MyRemoteDataSource {
  MyRemoteDataSourceImpl({required this.client});
  final http.Client client;

  @override
  Future<MyModel> fetchMyData() async {
    // Implementation
  }
}

// Data - Local
abstract class MyLocalDataSource {
  Future<MyModel> getMyData();
}

class MyLocalDataSourceImpl implements MyLocalDataSource {
  MyLocalDataSourceImpl({required this.isar});
  final Isar isar;

  @override
  Future<MyModel> getMyData() async {
    // Implementation
  }
}

// Repository Implementation
class MyRepositoryImpl implements MyRepository {
  MyRepositoryImpl({
    required this.remoteDataSource,
    required this.localDataSource,
  });

  final MyRemoteDataSource remoteDataSource;
  final MyLocalDataSource localDataSource;

  @override
  Future<Result<MyEntity>> getMyData() async {
    // Implementation
  }
}
```

### Step 2: Register in Service Locator

```dart
// In lib/src/app/di/service_locator.dart

// Add imports
import 'package:tmdbmaze/src/feature/my_feature/data/datasources/my_remote_datasource.dart';
import 'package:tmdbmaze/src/feature/my_feature/data/datasources/my_local_datasource.dart';
import 'package:tmdbmaze/src/feature/my_feature/data/repositories/my_repository_impl.dart';
import 'package:tmdbmaze/src/feature/my_feature/domain/repositories/my_repository.dart';

// In _setupDataLayer()
void _setupDataLayer() {
  // Existing code...

  // Remote data source
  getIt.registerSingleton<MyRemoteDataSource>(
    MyRemoteDataSourceImpl(client: getIt<http.Client>()),
  );

  // Local data source
  getIt.registerSingleton<MyLocalDataSource>(
    MyLocalDataSourceImpl(isar: getIt<Isar>()),
  );

  // Repository
  getIt.registerSingleton<MyRepository>(
    MyRepositoryImpl(
      remoteDataSource: getIt<MyRemoteDataSource>(),
      localDataSource: getIt<MyLocalDataSource>(),
    ),
  );
}
```

## Example 3: Adding a Utility Service

### Step 1: Create the Service

```dart
// lib/src/app/services/my_service.dart
class MyService {
  MyService({required this.httpClient});

  final http.Client httpClient;

  Future<void> doSomething() async {
    // Implementation
  }
}
```

### Step 2: Register in Service Locator

```dart
// In lib/src/app/di/service_locator.dart

// Add import
import 'package:tmdbmaze/src/app/services/my_service.dart';

// In _setupCoreDependencies() or new _setupServices()
void _setupCoreDependencies() async {
  // Existing code...

  getIt.registerSingleton<MyService>(
    MyService(httpClient: getIt<http.Client>()),
  );
}
```

### Step 3: Use Anywhere

```dart
// Access from any file
final myService = getIt<MyService>();
await myService.doSomething();
```

## Example 4: Using Factory for Multiple Instances

```dart
// Sometimes you need a new instance each time (e.g., form validators)
getIt.registerFactory<FormValidator>(() => FormValidator());

// Each call gets a new instance
final validator1 = getIt<FormValidator>(); // New instance
final validator2 = getIt<FormValidator>(); // Different instance
```

## Example 5: Testing with DI

```dart
// test/my_feature/presentation/bloc/my_bloc_test.dart
import 'package:tmdbmaze/src/app/di/service_locator.dart';

void main() {
  group('MyBloc', () {
    setUpAll(() async {
      // Reset GetIt before each test
      await resetServiceLocator();
    });

    setUp(() async {
      // Register mocks for testing
      final mockRepository = MockMyRepository();
      getIt.registerSingleton<MyRepository>(mockRepository);
    });

    tearDown(() async {
      await resetServiceLocator();
    });

    test('should emit MyLoaded when getMyData succeeds', () async {
      final bloc = MyBloc(repository: getIt<MyRepository>());

      expect(
        bloc.stream,
        emitsInOrder([
          isA<MyLoading>(),
          isA<MyLoaded>(),
        ]),
      );

      bloc.add(FetchMyData());
    });
  });
}
```

## Best Practices

### ✅ DO

- Register dependencies in the appropriate setup function
- Use abstract types (interfaces) for registration
- Keep core services, data layer, and presentation layer separate
- Use singletons for stateless services
- Use factories for stateful widgets or form validators

### ❌ DON'T

- Register concrete implementations directly in BLoCs
- Create dependencies inside BLoCs
- Pass GetIt references around
- Use getIt inside widgets (use BlocProvider instead)
- Register without proper type annotations

## Dependency Order

The order matters! Dependencies must be registered before they're used. Following the layer approach:

```
1. Core Services (database, http client) - NO DEPENDENCIES
2. Data Sources - DEPENDS ON: Core Services
3. Repositories - DEPENDS ON: Data Sources
4. BLoCs - DEPENDS ON: Repositories
5. Services - MAY DEPEND ON: Core Services or Other Services
```
