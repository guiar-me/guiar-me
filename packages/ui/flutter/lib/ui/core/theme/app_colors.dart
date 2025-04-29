import 'package:flutter/material.dart';

enum AppColors {
  primary,
  primaryBackground,
  secondaryBackground,
  primaryText,
  secondaryText,
  contrastText,
  primaryBorder,
  primaryShadow,
  danger,
  success,
  transparent,
  tertiaryBackground,
  gradient,
}

extension AppColorsExtension on AppColors {
  Color get value {
    switch (this) {
      // Main colors
      case AppColors.primary:
        return const Color(0xFF007AFF);

      // Background colors
      case AppColors.primaryBackground:
        return const Color(0xFFF2F2F2);
      case AppColors.secondaryBackground:
        return const Color(0xFFFFFFFF);
      case AppColors.tertiaryBackground:
        return const Color(0xFF767676).withValues(alpha: 0.7);

      // Text colors
      case AppColors.primaryText:
        return const Color(0xFF5E6A81);
      case AppColors.secondaryText:
        return const Color(0xFF767676).withValues(alpha: 0.7);
      case AppColors.contrastText:
        return const Color(0xFFFFFFFF);

      // Border
      case AppColors.primaryBorder:
        return const Color(0xFF0D0F11);

      // Shadow
      case AppColors.primaryShadow:
        return const Color(0xFF0D0F11).withValues(alpha: 0.25);

      // Generics colors
      case AppColors.danger:
        return const Color(0xFFF9837C);
      case AppColors.success:
        return const Color(0xFF34A853);
      case AppColors.transparent:
        return Colors.transparent;
      case AppColors.gradient:
        return AppColors.primary.value.withValues(alpha: 0.5);
    }
  }
}
