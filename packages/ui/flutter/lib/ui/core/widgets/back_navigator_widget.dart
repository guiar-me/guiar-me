import 'package:ui_flutter/ui/core/theme/app_font_sizes.dart';
import 'package:ui_flutter/ui/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class BackNavigatorWidget extends StatelessWidget {
  final String title;

  const BackNavigatorWidget({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        IconButton(
          icon: const Icon(Icons.chevron_left),
          onPressed: () {
            GoRouter.of(context).pop();
          },
          iconSize: AppFontSizes.xxl.value,
        ),
        const SizedBox(width: 8),
        TextWidget(title, fontSize: AppFontSizes.lg),
      ],
    );
  }
}
