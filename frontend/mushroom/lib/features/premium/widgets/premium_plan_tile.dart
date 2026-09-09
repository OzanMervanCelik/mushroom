import 'package:flutter/material.dart';

class PremiumPlanTile extends StatelessWidget {
  const PremiumPlanTile({
    super.key,
    required this.title,
    required this.price,
    required this.period,
    required this.selected,
    this.onSelected,
    this.onFeaturesTap,
    this.showDivider = true,
  });

  final String title;
  final String price;
  final String period;
  final bool selected;
  final VoidCallback? onSelected;
  final VoidCallback? onFeaturesTap;
  final bool showDivider;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 13,
                fontFamily: 'Lufga',
                color: Color(0xFF3B3B3B),
              ),
            ),
            const Spacer(),
            GestureDetector(
              onTap: onFeaturesTap,
              child: const Row(
                mainAxisSize: MainAxisSize.min,
                children: [
                  Text(
                    'Package Features',
                    style: TextStyle(
                      fontSize: 13,
                      fontFamily: 'Lufga',
                      color: Color(0xFF3B3B3B),
                      decoration: TextDecoration.underline,
                    ),
                  ),
                  SizedBox(width: 6),
                  Icon(
                    Icons.arrow_forward,
                    size: 14,
                    color: Color(0xFF3B3B3B),
                  ),
                ],
              ),
            ),
          ],
        ),

        const SizedBox(height: 8),

        Row(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Text(
              price,
              style: const TextStyle(
                fontSize: 30,
                fontFamily: 'Lufga',
                fontWeight: FontWeight.w300,
                color: Color(0xFF3B3B3B),
              ),
            ),
            const SizedBox(width: 6),
            Padding(
              padding: const EdgeInsets.only(bottom: 6),
              child: Text(
                period,
                style: const TextStyle(
                  fontSize: 13,
                  fontFamily: 'Lufga',
                  color: Color(0xFF3B3B3B),
                ),
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(bottom: 4),
              child: _PlanSwitch(selected: selected, onTap: onSelected),
            ),
          ],
        ),

        if (showDivider) ...[
          const SizedBox(height: 16),
          const Divider(height: 1, thickness: 1, color: Color(0xFFF0E4EC)),
          const SizedBox(height: 16),
        ],
      ],
    );
  }
}

class _PlanSwitch extends StatelessWidget {
  const _PlanSwitch({required this.selected, this.onTap});

  final bool selected;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Container(
        width: 54,
        height: 28,
        padding: const EdgeInsets.all(3),
        decoration: BoxDecoration(
          color: const Color(0xFFEDE1F0),
          borderRadius: BorderRadius.circular(14),
        ),
        child: AnimatedAlign(
          duration: const Duration(milliseconds: 180),
          curve: Curves.easeOutCubic,
          alignment: selected ? Alignment.centerRight : Alignment.centerLeft,
          child: Container(
            width: 22,
            height: 22,
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              color: selected ? const Color(0xFF6FA86B) : Colors.black,
            ),
          ),
        ),
      ),
    );
  }
}
