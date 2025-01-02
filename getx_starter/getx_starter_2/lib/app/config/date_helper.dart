import 'package:intl/intl.dart';

class DateHelper {
  static String formatDate(String date) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat('MMMM d, yyyy').format(dateTime);
    return formattedDate;
  }

  static String formatDateWithDay(String date) {
    DateTime dateTime = DateTime.parse(date);
    String formattedDate = DateFormat('EEE, d MMMM yyyy').format(dateTime);
    return formattedDate;
  }
}
