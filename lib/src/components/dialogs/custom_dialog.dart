import 'package:flutter/material.dart';

/// `CustomDialog` is a reusable dialog widget designed to maintain a consistent
/// appearance and behavior across your Flutter application.
///
/// It wraps Flutter's built-in [Dialog] widget and provides a standardized
/// layout with customizable elements, including a title, content, and action buttons.
///
/// Example usage:
/// ```dart
/// CustomDialog(
///   title: 'Confirmation',
///   content: 'Are you sure you want to proceed?',
///   onConfirm: () {
///     print('Confirmed');
///   },
///   onCancel: () {
///     print('Cancelled');
///   },
/// )
/// ```
class CustomDialog extends StatelessWidget {
  /// The title text displayed at the top of the dialog.
  final String title;

  /// The content text displayed below the title.
  final String content;

  /// The text displayed on the confirm button.
  final String confirmButtonText;

  /// The text displayed on the cancel button.
  final String cancelButtonText;

  /// The callback function executed when the confirm button is pressed.
  final VoidCallback onConfirm;

  /// The callback function executed when the cancel button is pressed.
  final VoidCallback onCancel;

  /// Creates a [CustomDialog].
  ///
  /// The [title], [content], [confirmButtonText], [cancelButtonText],
  /// [onConfirm], and [onCancel] parameters must not be null.
  const CustomDialog({
    Key? key,
    required this.title,
    required this.content,
    this.confirmButtonText = 'Confirm',
    this.cancelButtonText = 'Cancel',
    required this.onConfirm,
    required this.onCancel,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(title),
      content: Text(content),
      actions: <Widget>[
        TextButton(
          onPressed: onCancel,
          child: Text(cancelButtonText),
        ),
        TextButton(
          onPressed: onConfirm,
          child: Text(confirmButtonText),
        ),
      ],
    );
  }
}
