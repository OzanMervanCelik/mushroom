import 'package:flutter/material.dart';
import 'app_colors.dart';

class AppTextStyles {
  static const String _fontFamily = 'Lufga';

  // Display Styles (H1, Büyük başlıklar)
  static const TextStyle displayLarge = TextStyle(
    fontSize: 32,
    fontWeight: FontWeight.bold,
    fontFamily: _fontFamily,
    color: AppColors.darkText,
    height: 1.2,
  );

  // Heading Styles (H2)
  static const TextStyle displayMedium = TextStyle(
    fontSize: 24,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamily,
    color: AppColors.darkText,
    height: 1.3,
  );

  // Heading Styles (H3)
  static const TextStyle displaySmall = TextStyle(
    fontSize: 20,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamily,
    color: AppColors.darkText,
    height: 1.4,
  );

  // Body Large (Normal başlık, kart başlığı)
  static const TextStyle headlineLarge = TextStyle(
    fontSize: 18,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamily,
    color: AppColors.darkText,
    height: 1.4,
  );

  // Body Medium (Normal metin, açıklama)
  static const TextStyle bodyLarge = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.normal,
    fontFamily: _fontFamily,
    color: AppColors.darkText,
    height: 1.5,
  );

  // Body Small
  static const TextStyle bodyMedium = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.normal,
    fontFamily: _fontFamily,
    color: AppColors.mediumGrey,
    height: 1.5,
  );

  // Caption (Çok küçük metinler)
  static const TextStyle bodySmall = TextStyle(
    fontSize: 13,
    fontWeight: FontWeight.normal,
    fontFamily: _fontFamily,
    color: AppColors.lightGrey,
    height: 1.4,
  );

  // Label Small (En küçük metinler, etiketler)
  static const TextStyle labelSmall = TextStyle(
    fontSize: 12,
    fontWeight: FontWeight.normal,
    fontFamily: _fontFamily,
    color: AppColors.lightGrey,
    height: 1.3,
  );

  // Button Text
  static const TextStyle button = TextStyle(
    fontSize: 16,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamily,
    color: Colors.white,
    height: 1.2,
  );

  // Button Small
  static const TextStyle buttonSmall = TextStyle(
    fontSize: 14,
    fontWeight: FontWeight.w600,
    fontFamily: _fontFamily,
    color: Colors.white,
    height: 1.2,
  );
}
