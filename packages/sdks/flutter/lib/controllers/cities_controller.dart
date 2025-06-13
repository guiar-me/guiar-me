import 'package:go_router/go_router.dart';
import 'package:sdk_flutter/controllers/base_controller.dart';
import 'package:sdk_flutter/controllers/contracts/alert.dart';
import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/data/repositories/cities/city_repository.dart';
import 'package:sdk_flutter/domain/models/city_model.dart';
import 'package:mobx/mobx.dart';

part 'cities_controller.g.dart';

class CitiesController = CitiesControllerBase with _$CitiesController;

abstract class CitiesControllerBase with Store, BaseController {
  final CitiesRepository citiesRepository;
  final AlertContract alert;
  final GoRouter router;

  CitiesControllerBase(this.citiesRepository, this.alert, this.router);

  @observable
  List<CityModel> cities = [];

  @observable
  bool isLoadingIndex = false;

  @action
  void setCities(List<CityModel> data) {
    cities = data;
  }

  @action
  void setIsLoadingIndex(bool loading) {
    isLoadingIndex = loading;
  }

  @action
  Future<void> index() async {
    setIsLoadingIndex(true);

    Either<List<CityModel>> citiesResponse = await citiesRepository.get();

    if (citiesResponse.isLeft) {
      handleApiError(citiesResponse.left!, alert, router);

      setIsLoadingIndex(false);
    }

    if (citiesResponse.isRight) {
      setCities(citiesResponse.right!);
      setIsLoadingIndex(false);
    }
  }
}
