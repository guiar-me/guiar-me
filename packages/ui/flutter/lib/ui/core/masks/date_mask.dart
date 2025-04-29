import 'package:ui_flutter/core/extension/text_input_formatter_extension.dart';
import 'package:flutter/services.dart';

class DateMask extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
    TextEditingValue oldValue,
    TextEditingValue newValue,
  ) {
    String numbers = newValue.onlyNumbers();
    String formatted = '';

    for (var i = 0; i < numbers.length && i < 8; i++) {
      if (i == 2 || i == 4) formatted += '/';

      formatted += numbers[i];
    }

    return TextEditingValue(
      text: formatted,
      selection: TextSelection.collapsed(offset: formatted.length),
    );
  }
}
