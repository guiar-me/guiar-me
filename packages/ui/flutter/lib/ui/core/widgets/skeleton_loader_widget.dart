import 'package:ui_flutter/ui/core/theme/app_colors.dart';
import 'package:flutter/material.dart';

class AnimatedSkeletonLoaderWidget extends StatefulWidget {
  final double height;
  final double width;

  const AnimatedSkeletonLoaderWidget({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  AnimatedSkeletonLoaderWidgetState createState() =>
      AnimatedSkeletonLoaderWidgetState();
}

class AnimatedSkeletonLoaderWidgetState
    extends State<AnimatedSkeletonLoaderWidget>
    with SingleTickerProviderStateMixin {
  late AnimationController _controller;

  @override
  void initState() {
    super.initState();
    _controller = AnimationController(
      duration: const Duration(seconds: 1),
      vsync: this,
    )..repeat(reverse: true);
  }

  @override
  Widget build(BuildContext context) {
    return FadeTransition(
      opacity: Tween<double>(
        begin: 0.7,
        end: 0.3,
      ).animate(CurvedAnimation(parent: _controller, curve: Curves.easeInOut)),
      child: SkeletonLoaderWidget(height: widget.height, width: widget.width),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}

class SkeletonLoaderWidget extends StatelessWidget {
  final double height;
  final double width;

  const SkeletonLoaderWidget({
    super.key,
    required this.height,
    required this.width,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
        color: AppColors.secondaryBackground.value,
        borderRadius: BorderRadius.circular(8.0),
      ),
    );
  }
}
