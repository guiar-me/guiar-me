import 'package:ui_flutter/ui/core/theme/app_colors.dart';
import 'package:ui_flutter/ui/core/theme/app_font_sizes.dart';
import 'package:ui_flutter/ui/core/theme/app_spacings.dart';
import 'package:ui_flutter/ui/core/widgets/spacing_widget.dart';
import 'package:ui_flutter/ui/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:google_fonts/google_fonts.dart';

class TextFormFieldWidget extends StatelessWidget {
  final void Function(String)? onChanged;
  final TextInputType? keyboardType;
  final String? initialValue;
  final AppColors labelColor;
  final double borderRadius;
  final IconData? prefixIcon;
  final String? labelText;
  final String? hintText;
  final bool obscureText;
  final bool readOnly;
  final bool enable;
  final TextInputFormatter? inputFormatter;

  const TextFormFieldWidget({
    this.onChanged,
    this.keyboardType,
    this.initialValue,
    this.labelText,
    this.hintText,
    this.labelColor = AppColors.primaryText,
    this.obscureText = false,
    this.borderRadius = 12,
    this.readOnly = false,
    this.enable = true,
    this.prefixIcon,
    this.inputFormatter,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double textFieldHeight = 48;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (labelText != null) ...[
          TextWidget(labelText!, fontSize: AppFontSizes.md, color: labelColor),
          const SpacingWidget(AppSpacings.xs),
        ],
        TextFormField(
          keyboardType: keyboardType,
          obscureText: obscureText,
          readOnly: readOnly,
          enabled: enable,
          onChanged: onChanged,
          initialValue: initialValue,
          inputFormatters: inputFormatter != null ? [inputFormatter!] : null,
          style: GoogleFonts.poppins(
            color: AppColors.primaryText.value,
            fontSize: AppFontSizes.md.value,
          ),
          decoration: InputDecoration(
            hintText: hintText,
            contentPadding: EdgeInsets.symmetric(
              horizontal: AppSpacings.md.value,
            ),
            filled: true,
            fillColor: AppColors.secondaryBackground.value,
            hintStyle: GoogleFonts.poppins(
              color: AppColors.secondaryText.value,
              fontSize: AppFontSizes.md.value,
            ),
            constraints: const BoxConstraints(minHeight: textFieldHeight),
            prefixIcon:
                prefixIcon != null
                    ? Icon(
                      prefixIcon,
                      color: AppColors.secondaryText.value,
                      size: 24.0,
                    )
                    : null,
            disabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              borderSide: BorderSide(
                color: AppColors.transparent.value,
                width: 1,
              ),
            ),
            enabledBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              borderSide: BorderSide(
                color: AppColors.transparent.value,
                width: 1,
              ),
            ),
            focusedBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              borderSide: BorderSide(width: 1, color: AppColors.primary.value),
            ),
            errorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              borderSide: BorderSide(width: 1, color: AppColors.danger.value),
            ),
            focusedErrorBorder: OutlineInputBorder(
              borderRadius: BorderRadius.all(Radius.circular(borderRadius)),
              borderSide: BorderSide(width: 1, color: AppColors.danger.value),
            ),
          ),
        ),
        const SpacingWidget(AppSpacings.md),
      ],
    );
  }
}
