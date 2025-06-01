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
  SecureStorageMock secureStorageMock = SecureStorageMock();

  setUpAll(() async {
    GetIt getIt = GetIt.instance;

    getIt.registerSingleton<SecureStorageContract>(secureStorageMock);
    getIt.registerSingleton<HttpClientContract>(HttpClient());

    usersRepository = UsersRepository(getIt(), getIt());

    // Sign in
    Either<UserModel> signInResult = await usersRepository.signInUser(
      params: SignInUserBodyParam(
        email: ConstantsForTest.userEmail,
        password: ConstantsForTest.userPassword,
      ),
    );

    secureStorageMock.setToken(signInResult.right!.authorization ?? '');
  });

  group('UserRepository tests', () {
    test('it should return paginated users', () async {
      // Act
      Either<PaginatedData<UserModel>> result =
          await usersRepository.listUsers();

      // Assert
      PaginatedData<UserModel> paginatedData = result.right!;

      expect(result.isRight, true);
      expect(paginatedData.meta.currentPage, 1);
      expect(paginatedData.meta.perPage, greaterThan(0));
      expect(paginatedData.meta.total, greaterThan(0));
      expect(paginatedData.data, isNotEmpty);
      expect(paginatedData.data.first.id, isNotNull);
      expect(paginatedData.data.first.name, isNotEmpty);
      expect(paginatedData.data.first.email, isNotEmpty);
    });
  });
}
