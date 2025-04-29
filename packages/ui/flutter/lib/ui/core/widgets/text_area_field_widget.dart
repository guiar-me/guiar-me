import 'dart:convert';

import 'package:ui_flutter/ui/core/theme/app_colors.dart';
import 'package:ui_flutter/ui/core/theme/app_font_sizes.dart';
import 'package:ui_flutter/ui/core/theme/app_radius.dart';
import 'package:ui_flutter/ui/core/theme/app_spacings.dart';
import 'package:ui_flutter/ui/core/widgets/spacing_widget.dart';
import 'package:ui_flutter/ui/core/widgets/text_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:vsc_quill_delta_to_html/vsc_quill_delta_to_html.dart';

class TextAreaFieldWidget extends StatefulWidget {
  final void Function(String, String)? onChanged;
  final String? labelText;
  final String? hintText;
  final String? defaultValue;
  final double? height;

  const TextAreaFieldWidget({
    this.onChanged,
    this.labelText,
    this.hintText,
    this.defaultValue,
    this.height,
    super.key,
  });

  @override
  State<TextAreaFieldWidget> createState() => _TextAreaFieldWidgetState();
}

class _TextAreaFieldWidgetState extends State<TextAreaFieldWidget> {
  late QuillController _controller;

  @override
  void initState() {
    super.initState();
    _controller = QuillController.basic();
    if (widget.defaultValue != null) {
      try {
        _controller.document = Document.fromJson(
          jsonDecode(widget.defaultValue!),
        );
      } catch (e) {
        _controller.document.insert(0, widget.defaultValue!);
      }
    }

    _controller.addListener(_onTextChanged);
  }

  @override
  void dispose() {
    _controller.removeListener(_onTextChanged);
    _controller.dispose();
    super.dispose();
  }

  void _onTextChanged() {
    if (widget.onChanged != null) {
      var converter = QuillDeltaToHtmlConverter(
        _controller.document.toDelta().toJson(),
      );

      String html = converter.convert();
      String json = jsonEncode(_controller.document.toDelta().toJson());

      widget.onChanged!(json, html);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        if (widget.labelText != null) ...[
          TextWidget(widget.labelText!, fontSize: AppFontSizes.md),
          const SpacingWidget(AppSpacings.xs),
        ],
        Container(
          decoration: BoxDecoration(
            color: AppColors.secondaryBackground.value,
            borderRadius: BorderRadius.circular(AppRadius.sm.value),
          ),
          child: Column(
            children: [
              QuillSimpleToolbar(
                controller: _controller,
                config: const QuillSimpleToolbarConfig(
                  showFontFamily: false,
                  showInlineCode: false,
                  showSubscript: false,
                  showSuperscript: false,
                  showCodeBlock: false,
                ),
              ),
              Container(
                height: widget.height ?? 150,
                padding: EdgeInsets.all(AppSpacings.md.value),
                child: QuillEditor(
                  controller: _controller,
                  focusNode: FocusNode(),
                  scrollController: ScrollController(),
                  config: QuillEditorConfig(
                    customStyles: DefaultStyles(
                      paragraph: DefaultTextBlockStyle(
                        GoogleFonts.poppins(),
                        const HorizontalSpacing(0, 0),
                        const VerticalSpacing(0, 0),
                        const VerticalSpacing(0, 0),
                        null,
                      ),
                      lists: DefaultListBlockStyle(
                        GoogleFonts.poppins(),
                        const HorizontalSpacing(0, 0),
                        const VerticalSpacing(6, 0),
                        const VerticalSpacing(0, 6),
                        null,
                        null,
                      ),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
