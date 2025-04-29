import 'package:ui_flutter/ui/core/theme/app_colors.dart';
import 'package:ui_flutter/ui/core/theme/app_font_sizes.dart';
import 'package:ui_flutter/ui/core/theme/app_spacings.dart';
import 'package:ui_flutter/ui/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class NavigationDrawerItem {
  final String title;
  final String route;
  final IconData icon;

  NavigationDrawerItem({
    required this.title,
    required this.route,
    required this.icon,
  });
}

class NavigationDrawerWidget extends StatelessWidget {
  final String title;
  final List<NavigationDrawerItem> items;

  const NavigationDrawerWidget({
    super.key,
    required this.title,
    required this.items,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 320,
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground.value,
        border: Border(
          right: BorderSide(color: AppColors.primaryBorder.value, width: 1.0),
        ),
      ),
      child: Column(
        children: [
          Container(
            padding: EdgeInsets.all(AppSpacings.md.value),
            alignment: Alignment.center,
            child: TextWidget(
              title,
              fontSize: AppFontSizes.lg,
              fontWeight: FontWeight.w500,
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: items.length,
              itemBuilder: (context, index) {
                return ListTile(
                  leading: Icon(items[index].icon),
                  title: TextWidget(items[index].title),
                  onTap: () {
                    GoRouter.of(context).push(items[index].route);
                  },
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
