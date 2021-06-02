import 'package:intl/intl.dart';

extension DateTimeExtension on DateTime {
  String toBrString() {
    try {
      return new DateFormat("dd/MM/yyyy").format(this);
    } catch (e) {
      return null;
    }
  }
}