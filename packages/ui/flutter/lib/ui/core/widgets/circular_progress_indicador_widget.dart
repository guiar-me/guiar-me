import 'package:ui_flutter/ui/core/theme/app_circular_progress_indicator_widget_size.dart';
import 'package:ui_flutter/ui/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class CircularProgressIndicatorWidget extends StatelessWidget {
  final AppColors color;
  final AppCircularProgressIndicatorWidgetSizes size;

  const CircularProgressIndicatorWidget({
    this.color = AppColors.contrastText,
    this.size = AppCircularProgressIndicatorWidgetSizes.sm,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    double strokeWidth = 2;

    return SizedBox(
      height: size.value,
      width: size.value,
      child: CircularProgressIndicator(
        color: color.value,
        strokeWidth: strokeWidth,
      ),
    );
  }
}
