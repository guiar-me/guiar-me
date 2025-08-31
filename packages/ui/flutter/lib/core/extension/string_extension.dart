import 'package:intl/intl.dart';
import 'dart:ui' as ui;

extension StringExtension on String {
  // TODO: Use format based on the locale
  String toDatabaseDateFormat() {
    try {
      String date = DateFormat(
        'yyyy-MM-dd',
      ).format(DateFormat('dd/MM/yyyy').parse(this));

      return date;
    } catch (e) {
      return this;
    }
  }

  // TODO: Use format based on the locale
  String toDisplayDateFormat() {
    try {
      String date = DateFormat(
        'dd/MM/yyyy',
      ).format(DateFormat('yyyy-MM-dd').parse(this));

      return date;
    } catch (e) {
      return this;
    }
  }

  String toDisplayInTimelineFormat() {
    String languageCode = ui.PlatformDispatcher.instance.locale.languageCode;

    try {
      return DateFormat.yMMMMEEEEd(languageCode).format(DateTime.parse(this));
    } catch (e) {
      return this;
    }
  }

  String trimSpaces() {
    return replaceAll(' ', '');
  }

  DateTime toDateTime() {
    return DateTime.parse(this);
  }
}
