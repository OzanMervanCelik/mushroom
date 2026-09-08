import 'package:flutter/material.dart';


class AppBackButton extends StatelessWidget {
  final VoidCallback onTap;
  final double size;
  final double iconSize;
  final Color? backgroundColor;
  final Color? borderColor;
  final Color? iconColor;
  final EdgeInsetsGeometry? margin;

  const AppBackButton({
    super.key,
    required this.onTap,
    this.size = 54,
    this.iconSize = 22,
    this.backgroundColor,
    this.borderColor,
    this.iconColor,
    this.margin,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: margin,
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          customBorder: const CircleBorder(),
          child: Ink(
            width: size,
            height: size,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: backgroundColor ?? Colors.transparent,
              border: Border.all(
                width: 1.2,
              ),
            ),
            child: Center(
              child: Icon(
                Icons.arrow_back_ios_new_rounded,
                size: iconSize,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
