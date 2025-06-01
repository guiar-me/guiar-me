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
  late HighlightsRepository highlightsRepository;
  SecureStorageMock secureStorageMock = SecureStorageMock();

  setUpAll(() async {
    GetIt getIt = GetIt.instance;

    getIt.registerSingleton<SecureStorageContract>(secureStorageMock);
    getIt.registerSingleton<HttpClientContract>(HttpClient());

    usersRepository = UsersRepository(getIt(), getIt());
    highlightsRepository = HighlightsRepository(getIt());

    // Sign in
    Either<UserModel> signInResult = await usersRepository.signInUser(
      params: SignInUserBodyParam(
        email: ConstantsForTest.userEmail,
        password: ConstantsForTest.userPassword,
      ),
    );

    secureStorageMock.setToken(signInResult.right!.authorization ?? '');
  });

  group('HighlightRepository tests', () {
    test('it should return list of highlights', () async {
      // Act
      Either<PaginatedData<HighlightModel>> result =
          await highlightsRepository.listHighlights();

      // Assert
      List<HighlightModel> highlights = result.right!.data;

      expect(result.isRight, true);
      expect(highlights, isNotEmpty);
      expect(highlights.first.id, isNotNull);
      expect(highlights.first.order, isNotNull);
    });
  });
}
