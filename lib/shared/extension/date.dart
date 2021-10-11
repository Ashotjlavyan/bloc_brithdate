import 'package:intl/intl.dart';

extension DateAddition on DateTime {
  String format(String format) {
    final dateFormat = DateFormat(format);

    return dateFormat.format(this);
  }
}
