import 'package:ui_flutter/ui/core/theme/app_colors.dart';
import 'package:ui_flutter/ui/core/theme/app_font_sizes.dart';
import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TextWidget extends Text {
  final AppFontSizes fontSize;
  final FontWeight fontWeight;
  final AppColors color;

  const TextWidget(
    super.data, {
    this.fontWeight = FontWeight.normal,
    this.color = AppColors.primaryText,
    this.fontSize = AppFontSizes.md,
    super.textAlign,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      data!,
      textAlign: textAlign,
      style: GoogleFonts.poppins(
        textStyle: TextStyle(
          color: color.value,
          fontSize: fontSize.value,
          fontWeight: fontWeight,
        ),
      ),
    );
  }
}
