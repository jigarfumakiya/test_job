import 'package:flutter/material.dart';

/// A class have global config for app loading
class AppLoading {
  /// use this methods whenever we want to show loading
  /// Params: BuildContext
  static void showLoading(BuildContext context) {
    showDialog(
        context: context,
        builder: (BuildContext context) {
          return appLoading();
        });
  }

  static void hideLoading(BuildContext context) {
    Navigator.pop(context);
  }

  /// widget for app loading

  static Widget appLoading() {
    return const Center(
        child: CircularProgressIndicator(
      strokeWidth: 5,
      color: Colors.teal,
    ));
  }
}
