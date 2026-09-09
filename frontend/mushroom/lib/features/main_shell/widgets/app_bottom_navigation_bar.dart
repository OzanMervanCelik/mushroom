
import 'dart:ui' show ImageFilter;

import 'package:flutter/material.dart';
import 'package:solar_icons/solar_icons.dart';



double bottomNavContentInset(BuildContext context, {double margin = 8}) {
  final metrics = _BottomBarMetrics.fromContext(context);
  final safeBottom = MediaQuery.viewPaddingOf(context).bottom;
  final barBottomInset = safeBottom > metrics.safeBottomInset
      ? safeBottom
      : metrics.safeBottomInset;
  return metrics.barHeight + barBottomInset + margin;
}

//const _barColor = Color(0xFFAAAAAA);
const _iconColor = Color(0xFFFFF0EB);
const _iconSelectedColor = Color(0xFF2A0B02);
//const _itemCircleSelectedColor = Color(0xFFFFAB87);
const _scanButtonColor = Color(0xFF351201);
const _scanIconColor = Color(0xFFFFFFFF);

const _glassBlurSigma = 10.0;
final _glassBorderColor = Colors.white.withValues(alpha: 0.10);
final _floatingShadow = <BoxShadow>[
  BoxShadow(
    color: Colors.black.withValues(alpha: 0.25),
    blurRadius: 24,
    offset: const Offset(0, 8),
  ),
];

class AppBottomNavigationBar extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onItemSelected;
  final VoidCallback onScanTap;

  const AppBottomNavigationBar({
    super.key,
    required this.currentIndex,
    required this.onItemSelected,
    required this.onScanTap,
  });

  List<_BottomNavigationItem> _buildItems(BuildContext context) => const [
    _BottomNavigationItem(
      index: 0,
      label: 'Anasayfa',
      icon: SolarIconsOutline.homeSmile,
    ),
    _BottomNavigationItem(
      index: 1,
      label: 'Geçmiş',
      icon: SolarIconsOutline.clockCircle,
      ),
    _BottomNavigationItem(
      index: 2,
      label: 'Profil',
      icon: SolarIconsOutline.user
    ),
    _BottomNavigationItem(
      index: 3,
      label: 'Ayarlar',
      icon: SolarIconsOutline.settings,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    final metrics = _BottomBarMetrics.fromContext(context);
    final items = _buildItems(context);

    return SafeArea(
      top: false,
      minimum: EdgeInsets.fromLTRB(
        metrics.horizontalInset,
        0,
        metrics.horizontalInset,
        metrics.safeBottomInset,
      ),
      child: Row(
        children: [
          Expanded(
            child: DecoratedBox(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(metrics.barHeight / 2),
                boxShadow: _floatingShadow,
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(metrics.barHeight / 2),
                child: BackdropFilter(
                  filter: ImageFilter.blur(
                    sigmaX: _glassBlurSigma,
                    sigmaY: _glassBlurSigma,
                  ),
                  child: Container(
                    height: metrics.barHeight,
                    padding: EdgeInsets.symmetric(
                      horizontal: metrics.innerHorizontalPadding,
                    ),
                    decoration: BoxDecoration(
                      //color: _barColor,
                      borderRadius: BorderRadius.circular(
                        metrics.barHeight / 2,
                      ),
                      border: Border.all(color: _glassBorderColor),
                    ),
                    child: Row(
                      children: [
                        for (final item in items)
                          Expanded(
                            child: _NavIconButton(
                              item: item,
                              selected: currentIndex == item.index,
                              metrics: metrics,
                              onTap: () => onItemSelected(item.index),
                            ),
                          ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ),
          SizedBox(width: metrics.scanButtonGap),
          _ScanButton(
            label: 'Tara',
            metrics: metrics,
            onTap: onScanTap,
          ),
        ],
      ),
    );
  }
}

class _BottomBarMetrics {
  const _BottomBarMetrics({
    required this.horizontalInset,
    required this.safeBottomInset,
    required this.barHeight,
    required this.innerHorizontalPadding,
    required this.itemCircleSize,
    required this.navIconSize,
    required this.scanButtonGap,
    required this.scanIconSize,
  });

  final double horizontalInset;
  final double safeBottomInset;
  final double barHeight;
  final double innerHorizontalPadding;
  final double itemCircleSize;
  final double navIconSize;
  final double scanButtonGap;
  final double scanIconSize;

  double get scanButtonSize => barHeight;

  static _BottomBarMetrics fromContext(BuildContext context) {
    final shortestSide = MediaQuery.sizeOf(context).shortestSide;
    final barHeight = (shortestSide * 0.164).clamp(58.0, 68.0).toDouble();

    return _BottomBarMetrics(
      horizontalInset: (shortestSide * 0.041).clamp(14.0, 18.0).toDouble(),
      safeBottomInset: (shortestSide * 0.05).clamp(16.0, 22.0).toDouble(),
      barHeight: barHeight,
      innerHorizontalPadding: (shortestSide * 0.015).clamp(5.0, 7.0).toDouble(),
      itemCircleSize: barHeight - 12,
      navIconSize: (shortestSide * 0.064).clamp(23.0, 27.0).toDouble(),
      scanButtonGap: (shortestSide * 0.036).clamp(12.0, 16.0).toDouble(),
      scanIconSize: (barHeight * 0.55).clamp(32.0, 38.0).toDouble(),
    );
  }
}

class _NavIconButton extends StatelessWidget {
  const _NavIconButton({
    required this.item,
    required this.selected,
    required this.metrics,
    required this.onTap,
  });

  final _BottomNavigationItem item;
  final bool selected;
  final _BottomBarMetrics metrics;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: item.label,
      child: Semantics(
        button: true,
        selected: selected,
        label: item.label,
        child: GestureDetector(
          onTap: onTap,
          behavior: HitTestBehavior.opaque,
          child: Center(
            child: AnimatedContainer(
              duration: const Duration(milliseconds: 180),
              curve: Curves.easeOutCubic,
              width: metrics.itemCircleSize,
              height: metrics.itemCircleSize,
              decoration: BoxDecoration(
                //color: selected
                    //? _itemCircleSelectedColor
                   // : Colors.transparent,
                shape: BoxShape.circle,
              ),
              child: Center(
                child: Icon(
                  item.icon,
                  size: metrics.navIconSize,
                  color: selected? _iconSelectedColor: _iconColor,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class _ScanButton extends StatelessWidget {
  const _ScanButton({
    required this.label,
    required this.metrics,
    required this.onTap,
  });

  final String label;
  final _BottomBarMetrics metrics;
  final VoidCallback onTap;

  @override
  Widget build(BuildContext context) {
    return Tooltip(
      message: label,
      child: Semantics(
        button: true,
        label: label,
        child: GestureDetector(
          onTap: onTap,
          behavior: HitTestBehavior.opaque,
          child: Container(
            width: metrics.scanButtonSize,
            height: metrics.scanButtonSize,
            decoration: const BoxDecoration(
              color: _scanButtonColor,
              shape: BoxShape.circle,
              gradient: RadialGradient(
                center: Alignment(0,0.7),
                radius: 0.4,
                colors: [
                  Color(0xFFFF8347),
                  _scanButtonColor,
                ],
              ),
            ),
            child: Center(
              child: Icon(
                SolarIconsOutline.scanner,
                size: metrics.scanIconSize,
                color: _scanIconColor,
                //boxShadow: _floatingShadow,
              ),
            ),
          ),
        ),
     ),
    );
  }
}

class _BottomNavigationItem {
  final int index;
  final String label;
  final IconData icon;

  const _BottomNavigationItem({
    required this.index,
    required this.label,
    required this.icon,
  });
}