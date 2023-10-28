import 'package:flutter/material.dart';

/// `CustomDropdown` is a reusable dropdown button widget that allows users to
/// choose one value from a list.
///
/// This widget simplifies the usage of dropdown menus in your application and ensures
/// consistency in the design and behavior of dropdowns across your app. It offers various
/// customization options such as [items], [value], [onChanged], [dropdownColor],
/// [textStyle], and [icon].
///
/// Example usage:
/// ```dart
/// CustomDropdown<String>(
///   value: dropdownValue,
///   onChanged: (String? newValue) {
///     setState(() {
///       dropdownValue = newValue!;
///     });
///   },
///   items: <String>['One', 'Two', 'Three', 'Four']
///       .map<DropdownMenuItem<String>>((String value) {
///     return DropdownMenuItem<String>(
///       value: value,
///       child: Text(value),
///     );
///   }).toList(),
/// )
/// ```
class CustomDropdown<T> extends StatelessWidget {
  /// The list of items the user can select.
  final List<DropdownMenuItem<T>> items;

  /// The value of the currently selected item.
  final T? value;

  /// Called when the user selects an item.
  final ValueChanged<T?>? onChanged;

  /// The color of the dropdown's background.
  final Color? dropdownColor;

  /// The text style of the items.
  final TextStyle? textStyle;

  /// The dropdown's icon.
  final Icon? icon;

  /// Creates a [CustomDropdown].
  ///
  /// The [items] and [value] arguments must not be null.
  const CustomDropdown({
    Key? key,
    required this.items,
    required this.value,
    required this.onChanged,
    this.dropdownColor,
    this.textStyle,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return DropdownButton<T>(
      value: value,
      icon: icon ?? const Icon(Icons.arrow_downward),
      dropdownColor: dropdownColor,
      style: textStyle ?? const TextStyle(color: Colors.deepPurple),
      underline: Container(
        height: 2,
        color: Colors.deepPurpleAccent,
      ),
      onChanged: onChanged,
      items: items,
    );
  }
}
