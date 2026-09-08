import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;

  final List<Color>? gradientColors;
  final Gradient? gradient;
  final Color? backgroundColor;
  final Color textColor;
  final double fontSize;
  final FontWeight fontWeight;
  final String fontFamily;
  final double borderRadius;
  final double height;
  final Widget? leadingIcon; 

  const CustomElevatedButton({
    super.key,
    required this.text,
    required this.onPressed,
    this.gradientColors,
    this.gradient,
    this.backgroundColor,
    this.textColor = Colors.white,
    this.fontSize = 16.0,
    this.fontWeight = FontWeight.bold,
    this.fontFamily = 'Lufga',
    this.borderRadius = 16.0,
    this.height = 52.0,
    this.leadingIcon,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      height: height,
      child: ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor ?? Colors.transparent,
          shadowColor: Colors.transparent,
          padding: EdgeInsets.zero,
          elevation: backgroundColor != null ? 1 : 2,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(borderRadius),
          ),
        ),
        child: Ink(
          decoration: BoxDecoration(
            color: gradientColors == null && gradient == null ? (backgroundColor ?? Colors.white) : null,
            gradient: gradient ?? (gradientColors != null
                ? LinearGradient(colors: gradientColors!)
                : null),
            borderRadius: BorderRadius.circular(borderRadius),
          ),
          child: Container(
            alignment: Alignment.center,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                
                if (leadingIcon != null) ...[
                  leadingIcon!,
                  const SizedBox(width: 8),
                ],
                Text(
                  text,
                  style: TextStyle(
                    color: textColor,
                    fontSize: fontSize,
                    fontWeight: FontWeight.w500,
                    fontFamily: fontFamily,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}