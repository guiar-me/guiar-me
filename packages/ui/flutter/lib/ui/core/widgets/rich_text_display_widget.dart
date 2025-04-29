import 'dart:convert';

import 'package:ui_flutter/ui/core/theme/app_colors.dart';
import 'package:ui_flutter/ui/core/theme/app_font_sizes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_quill/flutter_quill.dart';
import 'package:google_fonts/google_fonts.dart';

class RichTextDisplayWidget extends StatelessWidget {
  final String value;

  const RichTextDisplayWidget({required this.value, super.key});

  @override
  Widget build(BuildContext context) {
    QuillController controller = QuillController.basic();

    try {
      controller.readOnly = true;
      controller.document = Document.fromJson(jsonDecode(value));
    } catch (e) {
      controller.document.insert(0, value);
    }

    return QuillEditor(
      controller: controller,
      focusNode: FocusNode(canRequestFocus: false),
      scrollController: ScrollController(),
      config: QuillEditorConfig(
        customStyles: DefaultStyles(
          paragraph: DefaultTextBlockStyle(
            GoogleFonts.poppins(
              color: AppColors.primaryText.value,
              fontSize: AppFontSizes.md.value,
            ),
            const HorizontalSpacing(0, 0),
            const VerticalSpacing(0, 0),
            const VerticalSpacing(0, 0),
            null,
          ),
          lists: DefaultListBlockStyle(
            GoogleFonts.poppins(
              color: AppColors.primaryText.value,
              fontSize: AppFontSizes.md.value,
            ),
            const HorizontalSpacing(0, 0),
            const VerticalSpacing(6, 0),
            const VerticalSpacing(0, 6),
            null,
            null,
          ),
        ),
      ),
    );
  }
}
