import 'package:flutter/material.dart';

/// `CustomTextField` is a reusable widget that creates a styled text field.
///
/// It provides a consistent appearance and behavior for text input across your application.
/// The [hintText] property is used to display a hint text when the text field is empty.
/// The [controller] property is used to control and access the text content of the text field.
/// Additional customization can be done through properties like [borderColor], [textColor],
/// [hintTextColor], and [fontSize].
///
/// Example usage:
/// ```dart
/// CustomTextField(
///   hintText: 'Enter your text here',
///   controller: myTextEditingController,
///   borderColor: Colors.blue,
///   textColor: Colors.black,
///   hintTextColor: Colors.grey,
///   fontSize: 16.0,
/// )
/// ```
class CustomTextField extends StatelessWidget {
  /// Text that suggests what sort of input the field accepts.
  final String hintText;

  /// Controls the text being edited.
  final TextEditingController controller;

  /// The color of the text field's border.
  final Color borderColor;

  /// The color of the text being edited.
  final Color textColor;

  /// The color of the hint text.
  final Color hintTextColor;

  /// The size of the text being edited.
  final double fontSize;

  /// Creates a [CustomTextField].
  ///
  /// The [hintText] and [controller] arguments must not be null.
  const CustomTextField({
    Key? key,
    required this.hintText,
    required this.controller,
    this.borderColor = Colors.grey,
    this.textColor = Colors.black,
    this.hintTextColor = Colors.grey,
    this.fontSize = 16.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextField(
      // Text Controller
      controller: controller,
      // Text Style
      style: TextStyle(
        color: textColor,
        fontSize: fontSize,
      ),
      // Text Decoration
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(color: hintTextColor),
        border: OutlineInputBorder(
          borderSide: BorderSide(color: borderColor),
        ),
      ),
    );
  }
}
