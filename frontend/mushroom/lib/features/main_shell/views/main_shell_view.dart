import 'package:flutter/material.dart';
import 'package:mushroom/features/home/views/home_page.dart';
import 'package:mushroom/features/history/views/history_page.dart';
import 'package:mushroom/features/main_shell/widgets/app_bottom_navigation_bar.dart';
import 'package:mushroom/features/profile/views/profile_page.dart';
import 'package:mushroom/features/scan/views/scan_page.dart';
import 'package:mushroom/features/settings/views/settings_page.dart';


class MainShellView extends StatefulWidget {
  const MainShellView({super.key});

  @override
  State<MainShellView> createState() => _MainShellViewState();
}

class _MainShellViewState extends State<MainShellView> {
  int _currentIndex = 0;

  List<Widget> _buildPages() {
    return const [
      HomePage(),
      HistoryPage(),
      ProfilePage(),
      SettingsPage(),
    ];
  }

  void _onTabSelected(int index) {
    setState(() => _currentIndex = index);
  }

  void _onScanTap() {
    Navigator.of(
      context,
    ).push(MaterialPageRoute<void>(builder: (_) => const ScanPage()));
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBody: true,
      body: IndexedStack(index: _currentIndex, children: _buildPages()),
      bottomNavigationBar: AppBottomNavigationBar(
        currentIndex: _currentIndex,
        onItemSelected: _onTabSelected,
        onScanTap: _onScanTap,
      ),
    );
  }
}