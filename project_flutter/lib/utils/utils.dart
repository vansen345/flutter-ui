import 'dart:developer';

void printWrapped(
  String text, {
  String name = '',
  Object? error,
  StackTrace? stackTrace,
}) =>
    log(
      text,
      name: name,
      error: error,
      stackTrace: stackTrace,
    );
