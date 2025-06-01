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
  late CitiesRepository citiesRepository;
  SecureStorageMock secureStorageMock = SecureStorageMock();

  setUpAll(() async {
    GetIt getIt = GetIt.instance;

    getIt.registerSingleton<SecureStorageContract>(secureStorageMock);
    getIt.registerSingleton<HttpClientContract>(HttpClient());

    usersRepository = UsersRepository(getIt(), getIt());
    citiesRepository = CitiesRepository(getIt());

    // Sign in
    Either<UserModel> signInResult = await usersRepository.signInUser(
      params: SignInUserBodyParam(
        email: ConstantsForTest.userEmail,
        password: ConstantsForTest.userPassword,
      ),
    );

    secureStorageMock.setToken(signInResult.right!.authorization ?? '');
  });

  group('CitiesRepository tests', () {
    test('it should return list of cities', () async {
      // Act
      Either<List<CityModel>> result = await citiesRepository.get();

      // Assert
      List<CityModel> cities = result.right!;

      expect(result.isRight, true);
      expect(cities, isNotEmpty);
      expect(cities.first.name, isNotEmpty);
      expect(cities.first.nameHumanReadable, isNotEmpty);
    });
  });
}
