import 'package:ui_flutter/ui/core/theme/app_circular_progress_indicator_widget_size.dart';
import 'package:ui_flutter/ui/core/theme/app_colors.dart';
import 'package:ui_flutter/ui/core/theme/app_spacings.dart';
import 'package:ui_flutter/ui/core/widgets/circular_progress_indicador_widget.dart';
import 'package:ui_flutter/ui/core/widgets/empty_list_indicator_widget.dart';
import 'package:ui_flutter/ui/core/widgets/spacing_widget.dart';
import 'package:flutter/material.dart';

class ListBuilderWidget extends StatefulWidget {
  final bool isLoading;
  final bool isEmpty;
  final String emptyText;
  final List<dynamic> items;
  final Widget Function(BuildContext context, dynamic item) builder;
  final Future<void> Function()? loadMoreData;
  final String scrollKey;

  const ListBuilderWidget({
    super.key,
    required this.isLoading,
    required this.isEmpty,
    required this.emptyText,
    required this.items,
    required this.builder,
    required this.scrollKey,
    this.loadMoreData,
  });

  @override
  State<ListBuilderWidget> createState() => _ListBuilderWidgetState();
}

class _ListBuilderWidgetState extends State<ListBuilderWidget>
    with AutomaticKeepAliveClientMixin {
  final ScrollController _scrollController = ScrollController();

  @override
  bool get wantKeepAlive => true;

  @override
  void initState() {
    super.initState();

    _scrollController.addListener(_onScroll);
  }

  Future<void> _loadMoreData() async {
    if (widget.loadMoreData != null) {
      await widget.loadMoreData!();
    }
  }

  void _onScroll() {
    if (_scrollController.position.pixels >=
        _scrollController.position.maxScrollExtent - 100) {
      _loadMoreData();
    }
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    if (widget.isLoading) {
      return Center(
        child: CircularProgressIndicatorWidget(
          color: AppColors.primary,
          size: AppCircularProgressIndicatorWidgetSizes.lg,
        ),
      );
    }

    if (widget.isEmpty) {
      return Center(child: EmptyListIndicatorWidget(text: widget.emptyText));
    }

    return ListView.separated(
      controller: _scrollController,
      key: PageStorageKey(widget.scrollKey),
      itemCount: widget.items.length,
      separatorBuilder: (context, index) => const SpacingWidget(AppSpacings.sm),
      itemBuilder: (context, index) {
        var item = widget.items[index];
        return widget.builder(context, item);
      },
    );
  }
}
