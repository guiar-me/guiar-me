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

  late ActivityRepository activityRepository;
  late UserRepository userRepository;
  SecureStorageMock secureStorageMock = SecureStorageMock();

  setUpAll(() async {
    GetIt getIt = GetIt.instance;

    getIt.registerSingleton<SecureStorageContract>(secureStorageMock);
    getIt.registerSingleton<HttpClientContract>(HttpClient());

    userRepository = UserRepository(getIt(), getIt());
    activityRepository = ActivityRepository(getIt());

    // Sign in
    Either<UserModel> signInResult = await userRepository.signIn(
      params: SignInParams(
        email: ConstantsForTest.userEmail,
        password: ConstantsForTest.userPassword,
      ),
    );

    secureStorageMock.setToken(signInResult.right!.authorization!);
  });

  group('ActivityRepository tests', () {
    test('it should return paginated activities', () async {
      // Act
      Either<PaginatedData<ActivityModel>> result =
          await activityRepository.index();

      // Assert
      PaginatedData<ActivityModel> paginatedData = result.right!;

      expect(result.isRight, true);
      expect(paginatedData.meta.currentPage, 1);
      expect(paginatedData.meta.perPage, greaterThan(0));
      expect(paginatedData.meta.total, greaterThan(0));
      expect(paginatedData.data, isNotEmpty);
      expect(paginatedData.data.first.id, isNotNull);
      expect(paginatedData.data.first.name, isNotEmpty);
      expect(paginatedData.data.first.description, isNotEmpty);
      expect(paginatedData.data.first.category, isNotEmpty);
    });

    test('it should return second page of activities', () async {
      // Act
      Either<PaginatedData<ActivityModel>> result = await activityRepository
          .index(page: 2);

      // Assert
      PaginatedData<ActivityModel> paginatedData = result.right!;

      expect(result.isRight, true);
      expect(paginatedData.meta.currentPage, 2);
    });

    test('it should return filtered activities by category', () async {
      // Arrange
      const category = 'restaurant';

      // Act
      Either<PaginatedData<ActivityModel>> result = await activityRepository
          .index(category: category);

      // Assert
      PaginatedData<ActivityModel> paginatedData = result.right!;

      expect(result.isRight, true);

      for (var activity in paginatedData.data) {
        expect(activity.category, category);
      }
    });

    test('it should return filtered activities by city', () async {
      // Arrange
      const city = 'vitória';

      // Act
      Either<PaginatedData<ActivityModel>> result = await activityRepository
          .index(city: city);

      // Assert
      PaginatedData<ActivityModel> paginatedData = result.right!;

      expect(result.isRight, true);

      for (var activity in paginatedData.data) {
        expect(
          activity.addresses.any(
            (address) => address.city.toLowerCase() == city,
          ),
          true,
        );
      }
    });
  });

  group('Edit Activity tests', () {
    test('it should edit activity', () async {
      // Arrange
      Either<PaginatedData<ActivityModel>> activitiesResult =
          await activityRepository.index();
      expect(activitiesResult.isRight, true);

      ActivityModel activityToEdit = activitiesResult.right!.data.first;

      // Act
      Either<bool> result = await activityRepository.edit(
        params: EditActivityParams(
          id: activityToEdit.id,
          addressId: activityToEdit.addresses.first.id,
          name: 'Test Activity Edited',
          description: 'Test Description Edited',
          category: activityToEdit.category,
          isVerified: activityToEdit.isVerified,
          state: activityToEdit.addresses.first.state,
          city: activityToEdit.addresses.first.city,
          neighborhood: activityToEdit.addresses.first.neighborhood,
          address: activityToEdit.addresses.first.address,
          number: activityToEdit.addresses.first.number,
          complement: activityToEdit.addresses.first.complement,
        ),
      );

      // Assert
      expect(result.isRight, true);
      expect(result.right, true);
    });
  });

  group('Post Activity tests', () {
    test('it should post activity', () async {
      // Act
      Either<ActivityModel> result = await activityRepository.add(
        params: AddActivityParams(
          name: 'Test Activity',
          description: 'Test Description',
          category: 'activity',
          isVerified: true,
          state: 'Test State',
          city: 'Test City',
          neighborhood: 'Test Neighborhood',
          address: 'Test Address',
          number: '123',
          complement: 'Test Complement',
        ),
      );

      // Assert
      expect(result.isRight, true);
      expect(result.right!.name, 'Test Activity');
    });
  });
}
