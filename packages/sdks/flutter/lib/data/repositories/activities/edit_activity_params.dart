import 'dart:typed_data';

import 'package:sdk_flutter/core/types/json.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class EditActivityParams extends Equatable {
  final int id;
  final String name;
  final String description;
  final String category;
  final bool isVerified;
  final int addressId;
  final String state;
  final String city;
  final String neighborhood;
  final String address;
  final String? number;
  final String? complement;
  final String? fileName;
  final Uint8List? fileBytes;

  @override
  List<Object> get props => <Object>[
    id,
    name,
    description,
    category,
    isVerified,
    addressId,
    state,
    city,
    neighborhood,
    address,
  ];

  const EditActivityParams({
    required this.id,
    required this.name,
    required this.description,
    required this.category,
    required this.isVerified,
    required this.addressId,
    required this.state,
    required this.city,
    required this.neighborhood,
    required this.address,
    this.number,
    this.complement,
    this.fileName,
    this.fileBytes,
  });

  Json toMap() {
    return <String, dynamic>{
      'id': id,
      'name': name,
      'description': description,
      'category': category,
      'is_verified': isVerified,
      'address': {
        'id': addressId,
        'state': state,
        'city': city,
        'neighborhood': neighborhood,
        'address': address,
        'number': number,
        'complement': complement,
      },
      'image':
          fileBytes != null
              ? MultipartFile.fromBytes(fileBytes!, filename: fileName)
              : null,
    };
  }

  EditActivityParams copyWith({
    int? id,
    String? name,
    String? description,
    String? category,
    bool? isVerified,
    int? addressId,
    String? state,
    String? city,
    String? neighborhood,
    String? address,
    String? number,
    String? complement,
    String? fileName,
    Uint8List? fileBytes,
  }) {
    return EditActivityParams(
      id: id ?? this.id,
      name: name ?? this.name,
      description: description ?? this.description,
      category: category ?? this.category,
      isVerified: isVerified ?? this.isVerified,
      addressId: addressId ?? this.addressId,
      state: state ?? this.state,
      city: city ?? this.city,
      neighborhood: neighborhood ?? this.neighborhood,
      address: address ?? this.address,
      number: number ?? this.number,
      complement: complement ?? this.complement,
      fileName: fileName ?? this.fileName,
      fileBytes: fileBytes ?? this.fileBytes,
    );
  }
}
