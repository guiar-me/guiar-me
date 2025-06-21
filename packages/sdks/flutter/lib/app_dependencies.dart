import 'package:sdk_flutter/sdk_flutter.dart';
import 'package:get_it/get_it.dart';

class SdkFlutterDependencies {
  static Future<void> init() async {
    GetIt getIt = GetIt.instance;

    // Infra
    getIt.registerSingleton<SecureStorageContract>(SecureStorage());
    getIt.registerSingleton<HttpClientContract>(HttpClient());

    // Repositories
    getIt.registerLazySingleton<ActivitiesRepository>(
      () => ActivitiesRepository(getIt()),
    );
    getIt.registerLazySingleton<CategoriesRepository>(
      () => CategoriesRepository(getIt()),
    );
    getIt.registerLazySingleton<CitiesRepository>(
      () => CitiesRepository(getIt()),
    );
    getIt.registerLazySingleton<EventsRepository>(
      () => EventsRepository(getIt()),
    );
    getIt.registerLazySingleton<FavoritesRepository>(
      () => FavoritesRepository(getIt()),
    );
    getIt.registerLazySingleton<HighlightsRepository>(
      () => HighlightsRepository(getIt()),
    );
    getIt.registerLazySingleton<LegalContentsRepository>(
      () => LegalContentsRepository(getIt()),
    );
    getIt.registerLazySingleton<PlansRepository>(
      () => PlansRepository(getIt()),
    );
    getIt.registerLazySingleton<ReviewsRepository>(
      () => ReviewsRepository(getIt()),
    );
    getIt.registerLazySingleton<SubscriptionsRepository>(
      () => SubscriptionsRepository(getIt()),
    );
    getIt.registerLazySingleton<UsersRepository>(
      () => UsersRepository(getIt(), getIt()),
    );

    // Controllers
    getIt.registerLazySingleton<ActivitiesController>(
      () => ActivitiesController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<AuthController>(
      () => AuthController(getIt(), getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<CategoriesController>(
      () => CategoriesController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<CitiesController>(
      () => CitiesController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<EventsController>(
      () => EventsController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<FavoritesController>(
      () => FavoritesController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<HighlightsController>(
      () => HighlightsController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<LegalContentsController>(
      () => LegalContentsController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<PlansController>(
      () => PlansController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<ReviewsController>(
      () => ReviewsController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<SubscriptionsController>(
      () => SubscriptionsController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<UsersController>(
      () => UsersController(getIt(), getIt(), getIt()),
    );
  }
}
