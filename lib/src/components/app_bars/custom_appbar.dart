import 'package:flutter/material.dart';

/// `CustomAppBar` is a reusable widget that creates a styled app bar.
///
/// This widget provides a consistent appearance for app bars across your application.
/// You can specify the [title], [actions], and customize the appearance through
/// properties like [backgroundColor], [textColor], and [elevation].
///
/// Example usage:
/// ```dart
/// CustomAppBar(
///   title: 'My App',
///   actions: [
///     IconButton(
///       icon: Icon(Icons.search),
///       onPressed: () {
///         // Action when pressed
///       },
///     ),
///   ],
///   backgroundColor: Colors.blue,
///   textColor: Colors.white,
///   elevation: 4.0,
/// )
/// ```
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  /// The primary content of the app bar.
  final String title;

  /// Widgets to display after the [title] widget.
  final List<Widget>? actions;

  /// The color to use for the app bar's background.
  final Color? backgroundColor;

  /// The color to use for the app bar's text.
  final Color? textColor;

  /// The z-coordinate at which to place this app bar relative to its parent.
  final double elevation;

  /// Creates a [CustomAppBar].
  ///
  /// The [title] argument must not be null.
  const CustomAppBar({
    Key? key,
    required this.title,
    this.actions,
    this.backgroundColor,
    this.textColor,
    this.elevation = 4.0,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      title: Text(
        title,
        style: TextStyle(color: textColor ?? Colors.white),
      ),
      actions: actions,
      backgroundColor: backgroundColor,
      elevation: elevation,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
