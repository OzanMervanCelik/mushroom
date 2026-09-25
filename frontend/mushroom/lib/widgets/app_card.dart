import 'package:flutter/material.dart';

class AppCard extends StatelessWidget {
  const AppCard({
    super.key,
    required this.child,
    this.padding = const EdgeInsets.all(16),
    this.margin = const EdgeInsets.only(bottom: 12),
    this.backgroundColor = Colors.white,
    this.borderRadius = 12,
    this.elevation = 2,
  });

  final Widget child;
  final EdgeInsets padding;
  final EdgeInsets margin;
  final Color backgroundColor;
  final double borderRadius;
  final double elevation;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Card(
        elevation: elevation,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(borderRadius),
        ),
        color: backgroundColor,
        child: Padding(
          padding: padding,
          child: child,
        ),
      ),
    );
  }
}
