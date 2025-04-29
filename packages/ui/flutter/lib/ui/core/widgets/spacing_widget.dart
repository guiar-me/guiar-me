import 'package:ui_flutter/ui/core/theme/app_spacings.dart';
import 'package:flutter/material.dart';

class SpacingWidget extends StatelessWidget {
  final AppSpacings size;
  final Axis axis;

  const SpacingWidget(this.size, {this.axis = Axis.vertical, super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: axis == Axis.vertical ? size.value : AppSpacings.none.value,
      width: axis != Axis.vertical ? size.value : AppSpacings.none.value,
    );
  }
}
