import 'package:flutter/material.dart';
import 'package:mushroom/features/main_shell/widgets/app_bottom_navigation_bar.dart';
import 'package:mushroom/features/settings/widgets/settings_header.dart';

class SettingsPage extends StatefulWidget {
  const SettingsPage({super.key});

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  bool pauseNotification = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0EB),
      body: ListView(
        // MainShellView extendBody: true kullaniyor, alt bar icerigi ortmesin.
        padding: EdgeInsets.only(bottom: bottomNavContentInset(context, margin: 40)),
        children: [
          const SettingsHeader(),

          const SizedBox(height: 28),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 30),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      // Pause Notification
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 16),
                        child: Row(
                          children: [
                            const Icon(
                              Icons.notifications_none_outlined,
                              size: 22,
                              color: Color(0xFF3B3B3B),
                            ),
                            const SizedBox(width: 16),
                            const Expanded(
                              child: Text(
                                'Pause Notification',
                                style: TextStyle(
                                  fontSize: 15,
                                  fontFamily: 'Lufga',
                                  fontWeight: FontWeight.w500,
                                  color: Color(0xFF3B3B3B),
                                ),
                              ),
                            ),
                            Switch(
                              value: pauseNotification,
                              activeThumbColor: Colors.white,
                              activeTrackColor: const Color(0xFF66B538),
                              onChanged: (value) {
                                setState(() {
                                  pauseNotification = value;
                                });
                              },
                            ),
                          ],
                        ),
                      ),

                      Divider(
                        height: 1,
                        indent: 54,
                        endIndent: 16,
                        color: Colors.black.withValues(alpha: 0.05),
                      ),

                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: const Padding(
                          // Satir yuksekligi = 2 x vertical + 22 (ikon boyutu).
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.tune,
                                size: 22,
                                color: Color(0xFF3B3B3B),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  'General Settings',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Lufga',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF3B3B3B),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.translate,
                                size: 22,
                                color: Color(0xFF3B3B3B),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  'Language Settings',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Lufga',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF3B3B3B),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),

                      Divider(
                        height: 1,
                        indent: 54,
                        endIndent: 16,
                        color: Colors.black.withValues(alpha: 0.05),
                      ),

                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.person_outline,
                                size: 22,
                                color: Color(0xFF3B3B3B),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  'My Contact',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Lufga',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF3B3B3B),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),

                      Divider(
                        height: 1,
                        indent: 54,
                        endIndent: 16,
                        color: Colors.black.withValues(alpha: 0.05),
                      ),

                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.workspace_premium_outlined,
                                size: 22,
                                color: Color(0xFF3B3B3B),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  'Pro Plan',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Lufga',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF3B3B3B),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                const SizedBox(height: 16),

                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                      // FAQ
                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.help_outline,
                                size: 22,
                                color: Color(0xFF3B3B3B),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  'FAQ',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Lufga',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF3B3B3B),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),

                      Divider(
                        height: 1,
                        indent: 54,
                        endIndent: 16,
                        color: Colors.black.withValues(alpha: 0.05),
                      ),

                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.grid_view_outlined,
                                size: 22,
                                color: Color(0xFF3B3B3B),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  'Terms of Service',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Lufga',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF3B3B3B),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),

                      Divider(
                        height: 1,
                        indent: 54,
                        endIndent: 16,
                        color: Colors.black.withValues(alpha: 0.05),
                      ),

                      GestureDetector(
                        behavior: HitTestBehavior.opaque,
                        onTap: () {},
                        child: const Padding(
                          padding: EdgeInsets.symmetric(
                            horizontal: 16,
                            vertical: 12,
                          ),
                          child: Row(
                            children: [
                              Icon(
                                Icons.vpn_key_outlined,
                                size: 22,
                                color: Color(0xFF3B3B3B),
                              ),
                              SizedBox(width: 16),
                              Expanded(
                                child: Text(
                                  'User Policy',
                                  style: TextStyle(
                                    fontSize: 15,
                                    fontFamily: 'Lufga',
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xFF3B3B3B),
                                  ),
                                ),
                              ),
                              Icon(
                                Icons.arrow_forward_ios,
                                size: 16,
                                color: Colors.grey,
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
