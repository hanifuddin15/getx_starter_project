import 'package:flutter/material.dart';

import 'package:intl/intl.dart';

final DateFormat postDateTimeFormate = DateFormat('MMM d, yyyy hh:mm a');
final DateFormat productDateTimeFormate = DateFormat('MMM d, yyyy');
final DateFormat postTimeFormate = DateFormat('hh:mm a');

String formatDateOfBirth(String? dob) {
  try {
    DateTime dt = DateTime.parse(dob ?? '');

    String formattedDate = DateFormat('MMMM dd, yyyy').format(dt);
    debugPrint('++++++DOBB++++: $formattedDate');
    return formattedDate;
  } catch (e) {
    return '';
  }
}

String getWorkPlaceDuration(String? duration) {
  try {
    DateTime dt = DateTime.parse(duration ?? '');
    String? workDuration = DateFormat('yyyy MMMM').format(dt);
    debugPrint('Duration: $workDuration');

    return workDuration;
  } catch (e) {
    return '';
  }
}
