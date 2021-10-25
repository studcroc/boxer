library boxer;

import 'dart:developer';

import 'package:intl/intl.dart';

import 'colors.dart';

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
    var sourcePath = "";
    var regex = RegExp(r"[a-zA-Z]*:.*[a-zA-Z]:{1}\d\d", multiLine: false);
    var matches = regex.allMatches(current.toString());
    if (matches.isNotEmpty && matches.length >= 2) {
      int start = matches.elementAt(0).start;
      int end = matches.elementAt(0).end;
      sourcePath = current.toString().substring(start, end);
    }
    DateTime now = DateTime.now();
    final DateFormat formatter = DateFormat('yyyy-MM-dd | hh:mm:ss');
    final String dt = formatter.format(now);
    label = label ??
        sourcePath.substring(
            sourcePath.indexOf('/') + 1, sourcePath.lastIndexOf(':'));
    log('$yellow$dt || $sourcePath', name: label);
    for (var item in vargs) {
      if (item is Exception) {
        dynamic x = item;
        log('$white$redbg${x.message}', name: label, error: current);
      } else if (item is Error) {
        dynamic x = item;
        log('$white$redbg${x.toString()}', name: label, error: current);
      } else {
        log('${item.toString().replaceAll("", white)}', name: label);
      }
    }
  }
}
