// This file is auto generated. DO NOT edit this file manually!
import 'package:equatable/equatable.dart';
import 'package:sdk_flutter/sdk_flutter.dart';

class EditHighlightUrlParam extends Equatable {
  final int highlightId;

  @override
  List<Object> get props => <Object>[
    highlightId,
  ];

  const EditHighlightUrlParam({
    required this.highlightId,
  });

  Json toMap() {
    return <String, dynamic>{
      'highlight_id': highlightId,
    };
  }

  EditHighlightUrlParam copyWith({
    int? highlightId,
  }) {
    return EditHighlightUrlParam(
      highlightId: highlightId ?? this.highlightId,
    );
  }
}
