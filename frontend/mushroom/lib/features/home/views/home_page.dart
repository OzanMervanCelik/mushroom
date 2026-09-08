import 'package:flutter/material.dart';
import 'package:mushroom/features/home/widgets/app_app_bar.dart';
import 'package:mushroom/features/home/widgets/app_app_button.dart';
import 'package:mushroom/features/home/widgets/recent_analyzing.dart';
import 'package:mushroom/features/main_shell/widgets/app_bottom_navigation_bar.dart';


class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0EB),
      appBar: const AppAppBar(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Color(0xFFFFF0EB),
              Color(0xFFFFF0EB),
            ],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            
          ),  
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(28, 28, 28, bottomNavContentInset(context)),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const Align(
                      alignment: Alignment.centerLeft,
                      child: Text(
                        'AI Assistant Start Analyzing Now',
                        style: TextStyle(
                          fontSize: 24, 
                          fontFamily: 'Lufga',
                          color: Color(0xFF3B3B3B),
                        ),
                      ),
                    ),
                    const SizedBox(height: 28),
                    const AppAppButton(
                      text: 'Start Analyzing',
                    ),
                    const SizedBox(height: 28),
                    
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Expanded(
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(16),
                            child: SizedBox(
                              height: 260,
                              child: Stack(
                                fit: StackFit.expand,
                                children: [
                                  Image.asset(
                                    'assets/images/home1.png',
                                    fit: BoxFit.cover,
                                  ),
                                  const Positioned(
                                    left: 16,
                                    top: 16,
                                    right: 16,
                                    child: Text(
                                      'Scan.\nIdentify.\nDiscover.',
                                      style: TextStyle(
                                        color: Colors.white,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w500,
                                        fontFamily: 'Lufga',
                                        height: 1.2,
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    left: 16,
                                    bottom: 16,
                                    child: Container(
                                      width: 48,
                                      height: 48,
                                      decoration: const BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Color(0xFF2A0B02),
                                      ),
                                      child: const Icon(
                                        Icons.arrow_forward,
                                        color: Colors.white,
                                        size: 22,
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),

                        const SizedBox(width: 12),

                        Expanded(
                          child: Column(
                            children: [
                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: SizedBox(
                                  height: 124,
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: [
                                      Image.asset(
                                        'assets/images/home3.png',
                                        fit: BoxFit.cover,
                                      ),
                                      const Positioned(
                                        left: 16,
                                        top: 16,
                                        right: 16,
                                        child: Text(
                                          'Instant\nFungi Insights',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Lufga',
                                            height: 1.2,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 16,
                                        bottom: 16,
                                        child: Container(
                                          width: 48,
                                          height: 48,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF2A0B02),
                                          ),
                                          child: const Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                            size: 22,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              const SizedBox(height: 12),

                              ClipRRect(
                                borderRadius: BorderRadius.circular(16),
                                child: SizedBox(
                                  height: 124,
                                  child: Stack(
                                    fit: StackFit.expand,
                                    children: [
                                      Image.asset(
                                        'assets/images/home2.png',
                                        fit: BoxFit.cover,
                                      ),
                                      const Positioned(
                                        left: 16,
                                        top: 16,
                                        right: 16,
                                        child: Text(
                                          'AI-Powered\nMushroom Scan',
                                          style: TextStyle(
                                            color: Colors.white,
                                            fontSize: 14,
                                            fontWeight: FontWeight.w500,
                                            fontFamily: 'Lufga',
                                            height: 1.2,
                                          ),
                                        ),
                                      ),
                                      Positioned(
                                        left: 16,
                                        bottom: 16,
                                        child: Container(
                                          width: 48,
                                          height: 48,
                                          decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Color(0xFF2A0B02),
                                          ),
                                          child: const Icon(
                                            Icons.arrow_forward,
                                            color: Colors.white,
                                            size: 22,
                                          ),
                                        ),
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

                    const SizedBox(height: 28),
                    const RecentAnalyzing(),
              ],
            ),
          ),

        
      ),
      
    );
  }
}
