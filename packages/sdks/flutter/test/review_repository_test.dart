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

  late UserRepository userRepository;
  late ReviewRepository reviewRepository;
  SecureStorageMock secureStorageMock = SecureStorageMock();

  setUpAll(() async {
    GetIt getIt = GetIt.instance;

    getIt.registerSingleton<SecureStorageContract>(secureStorageMock);
    getIt.registerSingleton<HttpClientContract>(HttpClient());

    userRepository = UserRepository(getIt(), getIt());
    reviewRepository = ReviewRepository(getIt());

    // Sign in
    Either<UserModel> signInResult = await userRepository.signIn(
      params: SignInParams(
        email: ConstantsForTest.userEmail,
        password: ConstantsForTest.userPassword,
      ),
    );

    secureStorageMock.setToken(signInResult.right!.authorization ?? '');
  });

  group('ReviewRepository tests', () {
    test('it should return paginated reviews', () async {
      // Act
      Either<List<ReviewModel>> result = await reviewRepository.index(
        activityId: 2,
      );

      // Assert
      List<ReviewModel> reviews = result.right!;

      expect(result.isRight, true);
      expect(reviews, isNotEmpty);
      expect(reviews.first.id, isNotNull);
      expect(reviews.first.activity.id, isNotNull);
    });
  });
}
