import 'package:ui_flutter/ui/core/theme/app_colors.dart';
import 'package:ui_flutter/ui/core/theme/app_font_sizes.dart';
import 'package:ui_flutter/ui/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class DialogWidget extends StatelessWidget {
  final String title;
  final String content;
  final String? confirmText;
  final String? cancelText;
  final Function(BuildContext context)? onPressedConfirm;
  final Function(BuildContext context)? onPressedCancel;

  const DialogWidget({
    super.key,
    required this.title,
    required this.content,
    this.confirmText,
    this.cancelText,
    this.onPressedConfirm,
    this.onPressedCancel,
  });

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: TextWidget(
        title,
        fontSize: AppFontSizes.md,
        fontWeight: FontWeight.bold,
      ),
      content: TextWidget(content, fontSize: AppFontSizes.sm),
      actions: [
        if (onPressedCancel != null && cancelText != null)
          TextButton(
            onPressed: () {
              onPressedCancel!(context);
            },
            child: TextWidget(cancelText!, color: AppColors.primary),
          ),
        if (onPressedConfirm != null && confirmText != null)
          TextButton(
            onPressed: () async {
              await onPressedConfirm!(context);
            },
            child: TextWidget(confirmText!, color: AppColors.danger),
          ),
      ],
    );
  }
}
