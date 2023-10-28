import 'package:flutter/material.dart';

/// `CustomIcon` is a reusable icon widget that provides a consistent and
/// customizable way to display icons across your application.
///
/// This widget encapsulates the common patterns of icon usage and ensures
/// consistency in the design and behavior of icons throughout your app. It offers various
/// customization options such as [icon], [color], [size], and [onPressed].
///
/// Example usage:
/// ```dart
/// CustomIcon(
///   icon: Icons.add,
///   color: Colors.blue,
///   size: 24.0,
///   onPressed: () {
///     print('Icon Pressed!');
///   },
/// )
/// ```
class CustomIcon extends StatelessWidget {
  /// The icon to display.
  final IconData icon;

  /// The color of the icon.
  final Color? color;

  /// The size of the icon.
  final double? size;

  /// The callback that is called when the icon is tapped or otherwise activated.
  final VoidCallback? onPressed;

  /// Creates a [CustomIcon].
  ///
  /// The [icon] argument must not be null.
  const CustomIcon({
    Key? key,
    required this.icon,
    this.color,
    this.size,
    this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: Icon(icon),
      color: color,
      iconSize: size ?? 24.0,
      onPressed: onPressed,
    );
  }
}
