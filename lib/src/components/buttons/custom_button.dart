import 'package:flutter/material.dart';

/// `CustomButton` is a reusable widget that creates a styled button.
///
/// This button automatically adapts its colors for dark and light themes,
/// but you can also provide custom [backgroundColor] and [textColor].
///
/// [text] is required and is displayed as the button's label.
/// [onPressed] is required and is called when the button is tapped.
///
/// [fontSize] and [fontWeight] can be optionally provided to customize
/// the text style. Their default values are 16.0 and FontWeight.normal,
/// respectively.
class CustomButton extends StatelessWidget {
  /// The text that the button will display.
  final String text;

  /// The callback function that is called when the button is tapped.
  final VoidCallback onPressed;

  /// The color of the button's background.
  ///
  /// If null, the button will use the default color for the current theme.
  final Color? backgroundColor;

  /// The color of the button's text.
  ///
  /// If null, the text will be white.
  final Color? textColor;

  /// The size of the button's text.
  final double fontSize;

  /// The weight of the font used for the button's text.
  final FontWeight fontWeight;

  /// Creates a [CustomButton].
  ///
  /// The [text] and [onPressed] arguments are required and must not be null.
  const CustomButton({
    Key? key,
    required this.text,
    required this.onPressed,
    this.backgroundColor,
    this.textColor,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.normal,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Color defaultBackgroundColor =
        Theme.of(context).brightness == Brightness.dark
            ? Colors.grey[800]!
            : Colors.blue;
    Color defaultTextColor = Colors.white;

    return ElevatedButton(
      onPressed: onPressed,
      style: ElevatedButton.styleFrom(
        backgroundColor: backgroundColor ?? defaultBackgroundColor,
        textStyle: TextStyle(
          color: textColor ?? defaultTextColor,
          fontSize: fontSize,
          fontWeight: fontWeight,
        ),
      ),
      child: Text(
        text,
        style: TextStyle(color: textColor ?? defaultTextColor),
      ),
    );
  }
}
