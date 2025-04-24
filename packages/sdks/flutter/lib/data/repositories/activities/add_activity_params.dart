import 'dart:typed_data';

import 'package:sdk_flutter/core/types/json.dart';
import 'package:dio/dio.dart';
import 'package:equatable/equatable.dart';

class AddActivityParams extends Equatable {
  final String name;
  final String description;
  final String category;
  final bool isVerified;
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
    name,
    description,
    category,
    isVerified,
    state,
    city,
    neighborhood,
    address,
  ];

  const AddActivityParams({
    required this.name,
    required this.description,
    required this.category,
    required this.isVerified,
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
      'name': name,
      'description': description,
      'category': category,
      'is_verified': isVerified,
      'address': {
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

  AddActivityParams copyWith({
    String? name,
    String? description,
    String? category,
    bool? isVerified,
    String? state,
    String? city,
    String? neighborhood,
    String? address,
    String? number,
    String? complement,
    String? fileName,
    Uint8List? fileBytes,
  }) {
    return AddActivityParams(
      name: name ?? this.name,
      description: description ?? this.description,
      category: category ?? this.category,
      isVerified: isVerified ?? this.isVerified,
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
