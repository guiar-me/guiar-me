import 'package:sdk_flutter/core/extension/string_extension.dart';
import 'package:sdk_flutter/core/types/json.dart';
import 'package:equatable/equatable.dart';

class EditUserParams extends Equatable {
  final int id;
  final String name;
  final String email;
  final String phone;
  final String birth;
  // TODO: Move to address model
  final String state;
  final String city;
  final String neighborhood;
  final String address;
  final int? addressId;
  final String? zipCode;
  final String? number;
  final String? complement;

  @override
  List<Object> get props => <Object>[
    id,
    name,
    email,
    phone,
    birth,
    state,
    city,
    neighborhood,
    address,
    addressId ?? 0,
    zipCode ?? '',
    number ?? '',
    complement ?? '',
  ];

  const EditUserParams({
    required this.id,
    required this.name,
    required this.email,
    required this.phone,
    required this.birth,
    required this.state,
    required this.city,
    required this.neighborhood,
    required this.address,
    this.addressId,
    this.zipCode,
    this.number,
    this.complement,
  });

  Json toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'email': email,
      'phone': phone,
      'birth': birth.toDatabaseDateFormat(),
      'address': {
        'id': addressId,
        'zip_code': zipCode,
        'state': state,
        'city': city,
        'neighborhood': neighborhood,
        'address': address,
        'number': number,
        'complement': complement,
      },
    };
  }

  EditUserParams copyWith({
    int? id,
    String? name,
    String? email,
    String? phone,
    String? birth,
    String? state,
    String? city,
    String? neighborhood,
    String? address,
    int? addressId,
    String? zipCode,
    String? number,
    String? complement,
  }) {
    return EditUserParams(
      id: id ?? this.id,
      name: name ?? this.name,
      email: email ?? this.email,
      phone: phone ?? this.phone,
      birth: birth ?? this.birth,
      state: state ?? this.state,
      city: city ?? this.city,
      neighborhood: neighborhood ?? this.neighborhood,
      address: address ?? this.address,
      addressId: addressId ?? this.addressId,
      zipCode: zipCode ?? this.zipCode,
      number: number ?? this.number,
      complement: complement ?? this.complement,
    );
  }
}
