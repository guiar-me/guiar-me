enum AppCircularProgressIndicatorWidgetSizes {
  /// 20
  sm,

  /// 40
  md,

  /// 60
  lg,

  /// 80
  xl,
}

extension AppCircularProgressIndicatorWidgetSizesExtension
    on AppCircularProgressIndicatorWidgetSizes {
  double get value {
    switch (this) {
      case AppCircularProgressIndicatorWidgetSizes.sm:
        return 20;
      case AppCircularProgressIndicatorWidgetSizes.md:
        return 40;
      case AppCircularProgressIndicatorWidgetSizes.lg:
        return 80;
      case AppCircularProgressIndicatorWidgetSizes.xl:
        return 120;
    }
  }
}
