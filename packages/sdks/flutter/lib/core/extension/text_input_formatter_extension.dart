import 'package:flutter/services.dart';

extension TextInputFormatterExtension on TextEditingValue {
  String onlyNumbers() {
    String numbers = text.replaceAll(RegExp(r'[^\d]'), '');

    return numbers;
  }
}
