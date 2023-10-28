import 'package:flutter/material.dart';

/// `CustomListTile` is a reusable list tile widget designed for consistency and
/// customization across your Flutter application.
///
/// It wraps Flutter's built-in [ListTile] widget, providing additional
/// customization options and ensuring a uniform design throughout your app.
///
/// The widget supports leading and trailing widgets, title and subtitle text, 
/// as well as onTap and onLongPress callbacks.
///
/// Example usage:
/// ```dart
/// CustomListTile(
///   leading: Icon(Icons.person),
///   title: 'John Doe',
///   subtitle: 'Software Engineer',
///   onTap: () {
///     print('Tile tapped!');
///   },
///   onLongPress: () {
///     print('Tile long-pressed!');
///   },
/// )
/// ```
class CustomListTile extends StatelessWidget {
  /// The leading widget, typically an [Icon] or an [Image].
  final Widget? leading;

  /// The title text of the list tile.
  final String title;

  /// The subtitle text of the list tile.
  final String? subtitle;

  /// The trailing widget, typically an [Icon].
  final Widget? trailing;

  /// The callback that is called when the list tile is tapped.
  final VoidCallback? onTap;

  /// The callback that is called when the list tile is long-pressed.
  final VoidCallback? onLongPress;

  /// Creates a [CustomListTile].
  ///
  /// The [title] parameter must not be null.
  const CustomListTile({
    Key? key,
    this.leading,
    required this.title,
    this.subtitle,
    this.trailing,
    this.onTap,
    this.onLongPress,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListTile(
      leading: leading,
      title: Text(title),
      subtitle: subtitle != null ? Text(subtitle!) : null,
      trailing: trailing,
      onTap: onTap,
      onLongPress: onLongPress,
    );
  }
}
