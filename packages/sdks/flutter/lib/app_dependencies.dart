import 'package:sdk_flutter/controllers/activity_controller.dart';
import 'package:sdk_flutter/controllers/auth_controller.dart';
import 'package:sdk_flutter/controllers/category_controller.dart';
import 'package:sdk_flutter/controllers/city_controller.dart';
import 'package:sdk_flutter/controllers/favorite_controller.dart';
import 'package:sdk_flutter/controllers/highlight_controller.dart';
import 'package:sdk_flutter/controllers/plan_controller.dart';
import 'package:sdk_flutter/controllers/legal_content_controller.dart';
import 'package:sdk_flutter/controllers/review_controller.dart';
import 'package:sdk_flutter/controllers/subscription_controller.dart';
import 'package:sdk_flutter/controllers/user_controller.dart';
import 'package:sdk_flutter/data/contracts/http_client_contract.dart';
import 'package:sdk_flutter/data/contracts/secure_storage_contract.dart';
import 'package:sdk_flutter/data/repositories/activities/activity_repository.dart';
import 'package:sdk_flutter/data/repositories/categories/category_repository.dart';
import 'package:sdk_flutter/data/repositories/cities/city_repository.dart';
import 'package:sdk_flutter/data/repositories/favorites/favorite_repository.dart';
import 'package:sdk_flutter/data/repositories/highlights/highlight_repository.dart';
import 'package:sdk_flutter/data/repositories/legal_contents/legal_content_repository.dart';
import 'package:sdk_flutter/data/repositories/plans/plan_repository.dart';
import 'package:sdk_flutter/data/repositories/reviews/review_repository.dart';
import 'package:sdk_flutter/data/repositories/subscriptions/subscription_repository.dart';
import 'package:sdk_flutter/data/repositories/users/user_repository.dart';
import 'package:sdk_flutter/infra/http_client.dart';
import 'package:sdk_flutter/infra/secure_storage.dart';
import 'package:get_it/get_it.dart';

class SdkFlutterDependencies {
  static Future<void> init() async {
    GetIt getIt = GetIt.instance;

    // Infra
    getIt.registerSingleton<SecureStorageContract>(SecureStorage());
    getIt.registerSingleton<HttpClientContract>(HttpClient());

    // Repositories
    getIt.registerLazySingleton<ActivityRepository>(
      () => ActivityRepository(getIt()),
    );
    getIt.registerLazySingleton<CategoryRepository>(
      () => CategoryRepository(getIt()),
    );
    getIt.registerLazySingleton<CityRepository>(() => CityRepository(getIt()));
    getIt.registerLazySingleton<FavoriteRepository>(
      () => FavoriteRepository(getIt()),
    );
    getIt.registerLazySingleton<HighlightRepository>(
      () => HighlightRepository(getIt()),
    );
    getIt.registerLazySingleton<LegalContentRepository>(
      () => LegalContentRepository(getIt()),
    );
    getIt.registerLazySingleton<PlanRepository>(() => PlanRepository(getIt()));
    getIt.registerLazySingleton<ReviewRepository>(
      () => ReviewRepository(getIt()),
    );
    getIt.registerLazySingleton<SubscriptionRepository>(
      () => SubscriptionRepository(getIt()),
    );
    getIt.registerLazySingleton<UserRepository>(
      () => UserRepository(getIt(), getIt()),
    );

    // Controllers
    getIt.registerLazySingleton<ActivityController>(
      () => ActivityController(getIt(), getIt(), getIt()),
    );
    getIt.registerLazySingleton<AuthController>(
      () => AuthController(getIt(), getIt(), getIt()),
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
