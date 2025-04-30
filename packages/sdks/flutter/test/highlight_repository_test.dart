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
  late HighlightRepository highlightRepository;
  SecureStorageMock secureStorageMock = SecureStorageMock();

  setUpAll(() async {
    GetIt getIt = GetIt.instance;

    getIt.registerSingleton<SecureStorageContract>(secureStorageMock);
    getIt.registerSingleton<HttpClientContract>(HttpClient());

    userRepository = UserRepository(getIt(), getIt());
    highlightRepository = HighlightRepository(getIt());

    // Sign in
    Either<UserModel> signInResult = await userRepository.signIn(
      params: SignInParams(
        email: ConstantsForTest.userEmail,
        password: ConstantsForTest.userPassword,
      ),
    );

    secureStorageMock.setToken(signInResult.right!.authorization ?? '');
  });

  group('HighlightRepository tests', () {
    test('it should return list of highlights', () async {
      // Act
      Either<List<HighlightModel>> result = await highlightRepository.index();

      // Assert
      List<HighlightModel> highlights = result.right!;

      expect(result.isRight, true);
      expect(highlights, isNotEmpty);
      expect(highlights.first.id, isNotNull);
      expect(highlights.first.order, isNotNull);
    });
  });
}
