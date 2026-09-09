import 'package:flutter/material.dart';
import 'package:mushroom/features/premium/widgets/premium_header.dart';
import 'package:mushroom/features/premium/widgets/premium_plan_tile.dart';

class PremiumPage extends StatefulWidget {
  const PremiumPage({super.key});

  @override
  State<PremiumPage> createState() => _PremiumPageState();
}

class _PremiumPageState extends State<PremiumPage> {
  bool weeklySelected = true;
  bool monthlySelected = false;
  bool yearlySelected = false;
  bool unlimitedSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0EB),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 60),
        children: [
          const PremiumHeader(),

          Padding(
            padding: const EdgeInsets.fromLTRB(20, 12, 20, 0),
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 24),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(16),
              ),
              child: Column(
                children: [
                  PremiumPlanTile(
                    title: 'Weekly Plan',
                    price: '\$4,99',
                    period: '/ Weekly',
                    selected: weeklySelected,
                    onSelected: () {
                      setState(() {
                        weeklySelected = !weeklySelected;
                      });
                    },
                    onFeaturesTap: () {},
                  ),

                  PremiumPlanTile(
                    title: 'Monthly Plan',
                    price: '\$24,99',
                    period: '/ Monthly',
                    selected: monthlySelected,
                    onSelected: () {
                      setState(() {
                        monthlySelected = !monthlySelected;
                      });
                    },
                    onFeaturesTap: () {},
                  ),

                  PremiumPlanTile(
                    title: 'Yearly Plan',
                    price: '\$59,99',
                    period: '/ Yearly',
                    selected: yearlySelected,
                    onSelected: () {
                      setState(() {
                        yearlySelected = !yearlySelected;
                      });
                    },
                    onFeaturesTap: () {},
                  ),

                  PremiumPlanTile(
                    title: 'Unlimited Plan',
                    price: '\$59,99',
                    period: '/ One-time purchase',
                    selected: unlimitedSelected,
                    showDivider: false,
                    onSelected: () {
                      setState(() {
                        unlimitedSelected = !unlimitedSelected;
                      });
                    },
                    onFeaturesTap: () {},
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
