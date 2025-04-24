import 'package:sdk_flutter/core/types/json.dart';
import 'package:equatable/equatable.dart';

class AddPlanParams extends Equatable {
  final String name;
  final String shortDescription;
  final String longDescription;
  final String frequency;
  final double value;
  final int couponLimit;

  @override
  List<Object> get props => <Object>[
    name,
    shortDescription,
    longDescription,
    frequency,
    value,
    couponLimit,
  ];

  const AddPlanParams({
    required this.name,
    required this.shortDescription,
    required this.longDescription,
    required this.frequency,
    required this.value,
    required this.couponLimit,
  });

  Json toMap() {
    return <String, dynamic>{
      'name': name,
      'short_description': shortDescription,
      'long_description': longDescription,
      'frequency': frequency,
      'value': value,
      'coupon_limit': couponLimit,
    };
  }

  AddPlanParams copyWith({
    String? name,
    String? shortDescription,
    String? longDescription,
    String? frequency,
    double? value,
    int? couponLimit,
  }) {
    return AddPlanParams(
      name: name ?? this.name,
      shortDescription: shortDescription ?? this.shortDescription,
      longDescription: longDescription ?? this.longDescription,
      frequency: frequency ?? this.frequency,
      value: value ?? this.value,
      couponLimit: couponLimit ?? this.couponLimit,
    );
  }
}
