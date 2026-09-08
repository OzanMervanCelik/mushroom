import 'package:flutter/material.dart';
import 'package:mushroom/features/auth/login/views/login_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: SplashPage(),
    );
  }
}

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  Widget _buildImageItem(
    String imagePath, {
    required double height,
  }) {
    return Container(
      height: height,
      width: double.infinity,
      margin: EdgeInsets.all(3),
      child: ClipRRect(
        borderRadius: BorderRadius.circular(8),
        child: Image.asset(
          imagePath,
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFF121212),
      body: Container(
        width: double.infinity,
        height: double.infinity,
        decoration: BoxDecoration(
          gradient: LinearGradient(
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
            colors: [
              Color(0xFF381201),
              Color(0xFF381201),
              //Color(0xFF250D04),
            ],
          ),
        ),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Stack(
                children: [
                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildImageItem('assets/images/Rectangle49.png', height: 80),
                            _buildImageItem('assets/images/Rectangle52.png', height: 195),
                            _buildImageItem('assets/images/Rectangle55.png', height: 170),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildImageItem('assets/images/Rectangle47.png', height: 100),
                            _buildImageItem('assets/images/Rectangle50.png', height: 185),
                            _buildImageItem('assets/images/Rectangle53.png', height: 160),
                          ],
                        ),
                      ),
                      Expanded(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          children: [
                            _buildImageItem('assets/images/Rectangle51.png', height: 222),
                            _buildImageItem('assets/images/Rectangle54.png', height: 222),
                          ],
                        ),
                      ),
                    ],
                  ),
                  Positioned.fill(
                    child: IgnorePointer(
                      child: DecoratedBox(
                        decoration: BoxDecoration(
                          gradient: LinearGradient(
                            begin: Alignment.topCenter,
                            end: Alignment.bottomCenter,
                            colors: [
                              Color(0x00381201),
                              Color(0x59381201),
                              Color(0xD9381201),
                              Color(0xFF381201),
                            ],
                            stops: [0.0, 0.85, 0.95, 1.0],
                          ),
                        )),
                    ))
                ],
              ),
              SizedBox(height: 12),
              SafeArea(
                top: false,
                child: Padding(
                  padding: EdgeInsets.symmetric(horizontal: 15.0),
                  child: Column(
                    children: [
                      TextButton(
                        onPressed: () {},
                        child: ShaderMask(
                          shaderCallback: (bounds) => LinearGradient(
                            colors: [
                              Color(0xFFFFAB87),
                              Color(0xFFFF8347),
                            ],
                          ).createShader(bounds),
                          child: Text(
                            textAlign: TextAlign.center,
                            'Explore',
                            style: TextStyle(
                              fontFamily: 'Lufga',
                              color: Colors.white,
                              fontSize: 26,
                              fontWeight: FontWeight.w700,
                            ),
                          ),
                        ),
                      ),
                      Transform.translate(
                        offset: Offset(0, -15),
                        child: TextButton(
                          onPressed: () {},
                          child: ShaderMask(
                            shaderCallback: (bounds) => LinearGradient(
                              colors: [
                                Color(0xFFFFAB87),
                                Color(0xFFFF8347),
                              ],
                            ).createShader(bounds),
                            child: Text(
                              textAlign: TextAlign.center,
                              'Mushrooms with AI.',
                              style: TextStyle(
                                fontFamily: 'Lufga',
                                color: Colors.white,
                                fontSize: 26,
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20),
                      Text(
                        'Discover the hidden world of mushrooms around you. Use your camera to identify species quickly and accurately. Learn, explore, and stay safe with every scan.',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Lufga',
                          color: Color(0xFFFFFFFF),
                          fontSize: 14,
                        ),
                      ),
                      SizedBox(height: 30),
                      Container(
                        width: double.infinity,
                        height: 52,
                        child: ElevatedButton(
                          onPressed: () {
                             Navigator.push(context,
                             MaterialPageRoute(builder: (context) => const LoginPage()),
                        );
                          },
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.all(0),
                            elevation: 6,
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(14),
                            ),
                          ),
                          child: Ink(
                            decoration: BoxDecoration(
                              gradient: LinearGradient(
                                begin: Alignment.topCenter,
                                end: Alignment.bottomCenter,
                                colors: [
                                  Color(0xFFFF4C00),
                                  Color(0xFFAC420E),
                                ],
                              ),
                              borderRadius: BorderRadius.circular(14),
                            ),
                            child: Container(
                              alignment: Alignment.center,
                              child: Text(
                                'Explore Now',
                                style: TextStyle(
                                  fontFamily: 'Lufga',
                                  color: Color(0xFFFFFFFF),
                                  fontSize: 15,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 18),
                      TextButton(
                        onPressed: () {},
                        child: ShaderMask(
                          shaderCallback: (bounds) => LinearGradient(
                            colors: [
                              Color(0xFFFFAB87),
                              Color(0xFFFF8347),
                            ],
                          ).createShader(bounds),
                          child: Text(
                            'I already have an account',
                            style: TextStyle(
                              fontFamily: 'Lufga',
                              color: Colors.white,
                              fontSize: 13,
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 8),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}