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
    getIt.registerLazySingleton<ActivityController>(
      () => ActivityController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<AuthController>(
      () => AuthController(getIt(), getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<CategoryController>(
      () => CategoryController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<CityController>(
      () => CityController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<FavoriteController>(
      () => FavoriteController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<HighlightController>(
      () => HighlightController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<LegalContentController>(
      () => LegalContentController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<PlanController>(
      () => PlanController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<ReviewController>(
      () => ReviewController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<SubscriptionController>(
      () => SubscriptionController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<UserController>(
      () => UserController(getIt(), getIt(), getIt()),
    );
  }
}
