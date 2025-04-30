import 'package:ui_flutter/ui/core/theme/app_colors.dart';
import 'package:ui_flutter/ui/core/theme/app_font_sizes.dart';
import 'package:ui_flutter/ui/core/theme/app_spacings.dart';
import 'package:ui_flutter/ui/core/widgets/spacing_widget.dart';
import 'package:ui_flutter/ui/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class LinkWidget extends StatelessWidget {
  final VoidCallback? onPress;
  final AppFontSizes fontSize;
  final AppFontSizes iconSize;
  final bool isDisabled;
  final AppColors color;
  final IconData? icon;
  final String? route;
  final String text;

  const LinkWidget({
    required this.text,
    this.fontSize = AppFontSizes.md,
    this.iconSize = AppFontSizes.lg,
    this.color = AppColors.primary,
    this.isDisabled = false,
    this.onPress,
    this.route,
    this.icon,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      cursor: isDisabled ? SystemMouseCursors.basic : SystemMouseCursors.click,
      child: GestureDetector(
        onTap: () {
          if (isDisabled) return;

          if (onPress != null) onPress!();

          if (route != null) GoRouter.of(context).push(route!);
        },
        child: Opacity(
          opacity: isDisabled ? 0.5 : 1.0,
          child: Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              if (icon != null) ...[
                Icon(icon, size: iconSize.value, color: color.value),
                const SpacingWidget(AppSpacings.xs),
              ],
              TextWidget(text, color: color, fontSize: fontSize),
            ],
          ),
        ),
      ),
    );
  }
}
