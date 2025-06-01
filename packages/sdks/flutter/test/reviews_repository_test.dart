import 'package:flutter_dotenv/flutter_dotenv.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:get_it/get_it.dart';
import 'package:sdk_flutter/core/constants/constants_for_test.dart';
import 'package:sdk_flutter/sdk_flutter.dart';
import 'package:path/path.dart' as path;

import 'mocks/secure_storage.dart';

void main() async {
  String envPath = path.join('test', '..', '.env.test');

  await dotenv.load(fileName: envPath);

  late UsersRepository usersRepository;
  late ReviewsRepository reviewsRepository;
  SecureStorageMock secureStorageMock = SecureStorageMock();

  setUpAll(() async {
    GetIt getIt = GetIt.instance;

    getIt.registerSingleton<SecureStorageContract>(secureStorageMock);
    getIt.registerSingleton<HttpClientContract>(HttpClient());

    usersRepository = UsersRepository(getIt(), getIt());
    reviewsRepository = ReviewsRepository(getIt());

    // Sign in
    Either<UserModel> signInResult = await usersRepository.signInUser(
      params: SignInUserBodyParam(
        email: ConstantsForTest.userEmail,
        password: ConstantsForTest.userPassword,
      ),
    );

    secureStorageMock.setToken(signInResult.right!.authorization ?? '');
  });

  group('ReviewRepository tests', () {
    test('it should return paginated reviews', () async {
      // Act
      Either<PaginatedData<ReviewModel>> result = await reviewsRepository
          .listReviews(queryParams: ListReviewsQueryParam(activityId: 2));

      // Assert
      List<ReviewModel> reviews = result.right!.data;

      expect(result.isRight, true);
      expect(reviews, isNotEmpty);
      expect(reviews.first.id, isNotNull);
      expect(reviews.first.activity.id, isNotNull);
    });
  });
}
