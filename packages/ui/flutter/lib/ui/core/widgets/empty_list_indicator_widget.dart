import 'package:ui_flutter/ui/core/theme/app_colors.dart';
import 'package:ui_flutter/ui/core/theme/app_font_sizes.dart';
import 'package:ui_flutter/ui/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class EmptyListIndicatorWidget extends StatelessWidget {
  final String text;

  const EmptyListIndicatorWidget({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Icon(Icons.search_off, size: 64, color: AppColors.secondaryText.value),
        const SizedBox(height: 16),
        TextWidget(
          text,
          fontSize: AppFontSizes.md,
          color: AppColors.secondaryText,
        ),
      ],
    );
  }
}
