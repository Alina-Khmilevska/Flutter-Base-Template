import 'package:flutter/material.dart';

/// `CustomSnackBar` is a reusable widget to display brief messages to the user.
///
/// This widget provides a consistent and customizable way to show snack bars across
/// your application. You can specify the [content], [duration], and customize its
/// appearance through properties like [backgroundColor], [textColor], and [action].
///
/// Example usage:
/// ```dart
/// CustomSnackBar.show(
///   context,
///   content: 'This is a snack bar',
///   action: SnackBarAction(
///     label: 'Undo',
///     onPressed: () {
///       // Action when pressed
///     },
///   ),
///   duration: Duration(seconds: 3),
///   backgroundColor: Colors.blue,
///   textColor: Colors.white,
/// )
/// ```
class CustomSnackBar {
  /// The main content of the snack bar.
  final String content;

  /// The duration that the snack bar will be displayed.
  final Duration duration;

  /// An optional action that the user can take.
  final SnackBarAction? action;

  /// The color to use for the snack bar's background.
  final Color? backgroundColor;

  /// The color to use for the snack bar's text.
  final Color? textColor;

  /// Creates a [CustomSnackBar].
  ///
  /// The [content] and [duration] arguments must not be null.
  CustomSnackBar({
    required this.content,
    required this.duration,
    this.action,
    this.backgroundColor,
    this.textColor,
  });

  /// Displays the snack bar.
  ///
  /// The [context] argument must not be null.
  static void show(
    BuildContext context, {
    required String content,
    required Duration duration,
    SnackBarAction? action,
    Color? backgroundColor,
    Color? textColor,
  }) {
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        content: Text(
          content,
          style: TextStyle(color: textColor),
        ),
        duration: duration,
        action: action,
        backgroundColor: backgroundColor,
      ),
    );
  }
}
