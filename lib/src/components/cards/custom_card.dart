import 'package:flutter/material.dart';

/// `CustomCard` is a reusable widget that creates a styled card.
///
/// This card can contain any widget and provides options to customize its appearance.
///
/// The [child] property is required and contains the widget that will be displayed inside the card.
/// The [elevation] property controls the size of the shadow below the card. It defaults to 4.0.
/// The [borderRadius] property controls the roundness of the card's corners. It defaults to 8.0.
/// The [cardColor] property allows you to set a custom color for the card.
///
/// This card automatically adapts its color for dark and light themes,
/// but you can also provide a custom color using [cardColor].
class CustomCard extends StatelessWidget {
  /// The widget that will be displayed inside the card.
  final Widget child;

  /// The size of the shadow below the card.
  final double elevation;

  /// The roundness of the card's corners.
  final BorderRadius borderRadius;

  /// The color of the card.
  ///
  /// If null, the card will use the default color for the current theme.
  final Color? cardColor;

  /// Creates a [CustomCard].
  ///
  /// The [child] argument is required and must not be null.
  const CustomCard({
    Key? key,
    required this.child,
    this.elevation = 4.0,
    this.borderRadius = const BorderRadius.all(Radius.circular(8.0)),
    this.cardColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Set the default card color based on the theme
    Color defaultCardColor = Theme.of(context).brightness == Brightness.dark
        ? Colors.grey[850]!
        : Colors.white;

    return Card(
      // Apply the custom or default card color
      color: cardColor ?? defaultCardColor,
      // Apply the elevation
      elevation: elevation,
      // Apply the border radius
      shape: RoundedRectangleBorder(
        borderRadius: borderRadius,
      ),
      // The main content of the card
      child: child,
    );
  }
}
