enum AppSpacings {
  /// 0
  none,

  /// 4
  xxs,

  /// 8
  xs,

  /// 12
  sm,

  /// 16
  md,

  /// 20
  lg,

  /// 24
  xl,

  /// 32
  xxl,
}

extension AppSpacingsExtension on AppSpacings {
  double get value {
    switch (this) {
      case AppSpacings.none:
        return 0;
      case AppSpacings.xxs:
        return 4;
      case AppSpacings.xs:
        return 8;
      case AppSpacings.sm:
        return 12;
      case AppSpacings.md:
        return 16;
      case AppSpacings.lg:
        return 20;
      case AppSpacings.xl:
        return 24;
      case AppSpacings.xxl:
        return 32;
    }
  }
}
