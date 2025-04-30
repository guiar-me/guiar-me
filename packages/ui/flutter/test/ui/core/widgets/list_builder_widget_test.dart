import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:ui_flutter/ui/core/widgets/circular_progress_indicador_widget.dart';
import 'package:ui_flutter/ui/core/widgets/empty_list_indicator_widget.dart';
import 'package:ui_flutter/ui/core/widgets/list_builder_widget.dart';

class CustomWidget extends StatelessWidget {
  final String text;

  const CustomWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Text(text);
  }
}

void main() {
  group('ListBuilderWidget', () {
    testWidgets('should show loading indicator when isLoading is true', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: ListBuilderWidget<int>(
            isLoading: true,
            isEmpty: false,
            emptyText: 'No items',
            items: const [],
            builder: (context, item) => CustomWidget(text: 'Item $item'),
            scrollKey: 'test',
          ),
        ),
      );

      expect(find.byType(CircularProgressIndicatorWidget), findsOneWidget);
    });

    testWidgets('should show empty indicator when isEmpty is true', (
      WidgetTester tester,
    ) async {
      await tester.pumpWidget(
        MaterialApp(
          home: ListBuilderWidget<int>(
            isLoading: false,
            isEmpty: true,
            emptyText: 'No items',
            items: const [],
            builder: (context, item) => CustomWidget(text: 'Item $item'),
            scrollKey: 'test',
          ),
        ),
      );

      expect(find.byType(EmptyListIndicatorWidget), findsOneWidget);
    });

    testWidgets('should render list items correctly', (
      WidgetTester tester,
    ) async {
      var items = [1, 2, 3];

      await tester.pumpWidget(
        MaterialApp(
          home: ListBuilderWidget<int>(
            isLoading: false,
            isEmpty: false,
            emptyText: 'No items',
            items: items,
            builder:
                (BuildContext context, int item) =>
                    CustomWidget(text: 'Item $item'),
            scrollKey: 'test',
          ),
        ),
      );

      expect(find.byType(CustomWidget), findsNWidgets(items.length));
    });

    testWidgets('should call loadMoreData when scrolling to bottom', (
      WidgetTester tester,
    ) async {
      var loadMoreCalled = false;
      var items = List.generate(20, (index) => index);

      await tester.pumpWidget(
        MaterialApp(
          home: ListBuilderWidget<int>(
            isLoading: false,
            isEmpty: false,
            emptyText: 'No items',
            items: items,
            builder:
                (context, item) => SizedBox(
                  height: 100,
                  child: CustomWidget(text: 'Item $item'),
                ),
            scrollKey: 'test',
            loadMoreData: () async {
              loadMoreCalled = true;
            },
          ),
        ),
      );

      // Scroll to bottom
      await tester.drag(find.byType(ListView), const Offset(0, -1700));
      await tester.pumpAndSettle();

      expect(loadMoreCalled, isTrue);
    });
  });
}
