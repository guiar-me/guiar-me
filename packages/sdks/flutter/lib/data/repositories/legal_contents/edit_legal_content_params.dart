import 'package:sdk_flutter/core/types/json.dart';
import 'package:equatable/equatable.dart';

class EditLegalContentParams extends Equatable {
  final int id;
  final String type;
  final String description;
  final String descriptionHtml;

  @override
  List<Object> get props => <Object>[id, type, description, descriptionHtml];

  const EditLegalContentParams({
    required this.id,
    required this.type,
    required this.description,
    required this.descriptionHtml,
  });

  Json toMap() {
    return <String, dynamic>{
      'description': description,
      'description_html': descriptionHtml,
    };
  }

  EditLegalContentParams copyWith({
    int? id,
    String? type,
    String? description,
    String? descriptionHtml,
  }) {
    return EditLegalContentParams(
      id: id ?? this.id,
      type: type ?? this.type,
      description: description ?? this.description,
      descriptionHtml: descriptionHtml ?? this.descriptionHtml,
    );
  }
}
