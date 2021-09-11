library boxer;

import 'dart:developer';

import 'package:intl/intl.dart';

/// [Boxer] is the main class which provides APIs for logging
class Boxer {
  /// [punch] method accepts a [dynamic] [message] & an optional [String] [label] & logs out the message
  static punch(dynamic message, {String? label}) {
    if (message is! List) {
      _printLogs([message], label, StackTrace.current);
    } else {
      _printLogs(message, label, StackTrace.current);
    }
  }

  /// [_printLogs] method is responsible for printing the log messages passed to it as [vargs] of type [List]
  static void _printLogs(
      List<dynamic> vargs, String? label, StackTrace current) {
    String s = current.toString();
    var list = s.split("\n");
    var sourcePath = list[1].substring(list[1].indexOf("package"));
    DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd | hh:mm:ss');
    final String dt = formatter.format(now);
    label = label ??
        sourcePath.substring(
            sourcePath.indexOf("/") + 1, sourcePath.lastIndexOf(":"));
    log("$dt $sourcePath", name: label);
    for (var item in vargs) {
      log(item.toString(), name: label);
    }
  }
}
