import 'package:flutter/material.dart';

extension ContextExt on BuildContext {
  TextTheme get textTheme {
    return Theme.of(this).textTheme;
  }

  void showSnackbar(String message) {
    ScaffoldMessenger.of(this).clearSnackBars();
    ScaffoldMessenger.of(this).showSnackBar(
      SnackBar(
        behavior: SnackBarBehavior.floating,
        content: Text(message),
        dismissDirection: DismissDirection.up,
      ),
    );
  }
}
