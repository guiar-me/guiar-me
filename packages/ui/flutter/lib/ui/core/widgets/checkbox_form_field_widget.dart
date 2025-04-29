import 'package:ui_flutter/ui/core/theme/app_colors.dart';
import 'package:ui_flutter/ui/core/theme/app_spacings.dart';
import 'package:ui_flutter/ui/core/widgets/spacing_widget.dart';
import 'package:ui_flutter/ui/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class CheckboxFormFieldWidget extends StatelessWidget {
  final ValueChanged<bool?>? onChanged;
  final double borderRadius;
  final String labelText;
  final bool value;
  final bool enable;

  const CheckboxFormFieldWidget({
    this.onChanged,
    required this.labelText,
    this.value = false,
    this.borderRadius = 12,
    this.enable = true,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        CheckboxListTile(
          controlAffinity: ListTileControlAffinity.leading,
          title: TextWidget(labelText),
          value: value,
          onChanged: enable ? onChanged : null,
          activeColor: AppColors.primary.value,
          checkColor: AppColors.primary.value,
          tileColor: AppColors.secondaryBackground.value,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        const SpacingWidget(AppSpacings.md),
      ],
    );
  }
}
