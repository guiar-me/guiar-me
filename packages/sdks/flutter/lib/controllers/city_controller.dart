import 'package:go_router/go_router.dart';
import 'package:sdk_flutter/controllers/base_controller.dart';
import 'package:sdk_flutter/controllers/contracts/alert.dart';
import 'package:sdk_flutter/core/either/either.dart';
import 'package:sdk_flutter/data/repositories/cities/city_repository.dart';
import 'package:sdk_flutter/domain/models/city_model.dart';
import 'package:mobx/mobx.dart';

part 'city_controller.g.dart';

class CityController = CityControllerBase with _$CityController;

abstract class CityControllerBase with Store, BaseController {
  final CitiesRepository citiesRepository;
  final AlertContract alert;
  final GoRouter router;

  CityControllerBase(this.citiesRepository, this.alert, this.router);

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
