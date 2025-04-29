import 'package:ui_flutter/ui/core/theme/app_colors.dart';
import 'package:ui_flutter/ui/core/theme/app_font_sizes.dart';
import 'package:ui_flutter/ui/core/theme/app_radius.dart';
import 'package:ui_flutter/ui/core/theme/app_spacings.dart';
import 'package:ui_flutter/ui/core/widgets/circular_progress_indicador_widget.dart';
import 'package:ui_flutter/ui/core/widgets/spacing_widget.dart';
import 'package:ui_flutter/ui/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  final VoidCallback onPressed;
  final FontWeight fontWeight;
  final AppColors textColor;
  final AppRadius radius;
  final AppColors color;
  final bool isLoading;
  final bool isDisabled;
  final String text;
  final Widget? icon;

  const ElevatedButtonWidget({
    required this.onPressed,
    required this.text,
    this.textColor = AppColors.contrastText,
    this.fontWeight = FontWeight.normal,
    this.color = AppColors.primary,
    this.radius = AppRadius.sm,
    this.isLoading = false,
    this.isDisabled = false,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    const double elevatedButtonWidth = 48;

    return SizedBox(
      height: elevatedButtonWidth,
      width: double.infinity,
      child: Opacity(
        opacity: isDisabled ? 0.5 : 1.0,
        child: ElevatedButton(
          onPressed: !isLoading && !isDisabled ? onPressed : null,
          style: ButtonStyle(
            backgroundColor: WidgetStateProperty.all(color.value),
            shape: WidgetStatePropertyAll<RoundedRectangleBorder>(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.all(Radius.circular(radius.value)),
              ),
            ),
          ),
          child:
              !isLoading
                  ? Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      if (icon != null) ...[
                        icon!,
                        const SpacingWidget(
                          AppSpacings.xxs,
                          axis: Axis.horizontal,
                        ),
                      ],
                      TextWidget(
                        text,
                        fontSize: AppFontSizes.lg,
                        fontWeight: fontWeight,
                        color: textColor,
                      ),
                    ],
                  )
                  : const CircularProgressIndicatorWidget(),
        ),
      ),
    );
  }
}
