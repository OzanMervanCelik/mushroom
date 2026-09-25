import 'package:flutter/material.dart';

class AppButton extends StatelessWidget {
  const AppButton({
    super.key,
    required this.label,
    required this.onPressed,
    this.backgroundColor = const Color(0xFF2F80ED),
    this.textColor = Colors.white,
    this.width = double.infinity,
    this.height = 50,
    this.isLoading = false,
  });

  final String label;
  final VoidCallback onPressed;
  final Color backgroundColor;
  final Color textColor;
  final double width;
  final double height;
  final bool isLoading;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: width,
      height: height,
      child: ElevatedButton(
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        onPressed: isLoading ? null : onPressed,
        child: isLoading
            ? const SizedBox(
                width: 20,
                height: 20,
                child: CircularProgressIndicator(
                  strokeWidth: 2,
                  valueColor: AlwaysStoppedAnimation<Color>(Colors.white),
                ),
              )
            : Text(
                label,
                style: TextStyle(
                  color: textColor,
                  fontSize: 16,
                  fontWeight: FontWeight.w600,
                ),
              ),
      ),
    );
  }
}
