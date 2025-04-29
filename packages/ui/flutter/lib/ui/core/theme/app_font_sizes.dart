enum AppFontSizes {
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

extension AppFontSizesExtension on AppFontSizes {
  double get value {
    switch (this) {
      case AppFontSizes.xs:
        return 8;
      case AppFontSizes.sm:
        return 12;
      case AppFontSizes.md:
        return 16;
      case AppFontSizes.lg:
        return 20;
      case AppFontSizes.xl:
        return 24;
      case AppFontSizes.xxl:
        return 32;
    }
  }
}
