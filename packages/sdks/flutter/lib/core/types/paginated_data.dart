import 'package:sdk_flutter/core/types/json.dart';

class PaginatedData<T> {
  List<T> data;
  Meta meta;

  PaginatedData({required this.data, required this.meta});

  static PaginatedData fromMap(Json data) {
    return PaginatedData(data: data['data'], meta: Meta.fromMap(data['meta']));
  }
}

class Meta {
  int currentPage;
  int lastPage;
  int perPage;
  int total;

  Meta({
    required this.currentPage,
    required this.lastPage,
    required this.perPage,
    required this.total,
  });

  static Meta fromMap(Json data) {
    return Meta(
      currentPage: data['current_page'],
      lastPage: data['last_page'],
      perPage: data['per_page'],
      total: data['total'],
    );
  }
}
