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
  late CityRepository cityRepository;
  SecureStorageMock secureStorageMock = SecureStorageMock();

  setUpAll(() async {
    GetIt getIt = GetIt.instance;

    getIt.registerSingleton<SecureStorageContract>(secureStorageMock);
    getIt.registerSingleton<HttpClientContract>(HttpClient());

    userRepository = UserRepository(getIt(), getIt());
    cityRepository = CityRepository(getIt());

    // Sign in
    Either<UserModel> signInResult = await userRepository.signIn(
      params: SignInParams(
        email: ConstantsForTest.userEmail,
        password: ConstantsForTest.userPassword,
      ),
    );

    secureStorageMock.setToken(signInResult.right!.authorization ?? '');
  });

  group('CityRepository tests', () {
    test('it should return list of cities', () async {
      // Act
      Either<List<CityModel>> result = await cityRepository.index();

      // Assert
      List<CityModel> cities = result.right!;

      expect(result.isRight, true);
      expect(cities, isNotEmpty);
      expect(cities.first.name, isNotEmpty);
      expect(cities.first.nameHumanReadable, isNotEmpty);
    });
  });
}
