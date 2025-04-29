enum AppRadius {
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

extension AppRadiusExtension on AppRadius {
  double get value {
    switch (this) {
      case AppRadius.none:
        return 0;
      case AppRadius.xxs:
        return 4;
      case AppRadius.xs:
        return 8;
      case AppRadius.sm:
        return 12;
      case AppRadius.md:
        return 16;
      case AppRadius.lg:
        return 20;
      case AppRadius.xl:
        return 24;
      case AppRadius.xxl:
        return 32;
    }
  }
}
