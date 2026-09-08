import 'package:flutter/material.dart';
import 'package:mushroom/features/auth/login/widgets/custom_elevated_button.dart';

class RegisterPage extends StatelessWidget {
  const RegisterPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
        child: SafeArea(
          child: Center(
            child: SingleChildScrollView(
              padding: const EdgeInsets.all(28.0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Image.asset(
                    'assets/logo/Union.png',
                    width: 550,
                    height: 50,
                    fit: BoxFit.cover,
                  ),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Login',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lufga',
                        color: Color(0xFF2A103C),
                      ),
                    ),
                  ),
                  const SizedBox(height: 6),
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Please login to your account.',
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lufga',
                        color: Colors.grey,
                      ),
                    ),
                  ),

                  const SizedBox(height: 28),

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const TextField(
                      decoration: InputDecoration(
                        labelText: 'E-Mail address',
                        hintText: 'Please login to your account',
                        hintStyle: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Lufga',
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 16),

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  const SizedBox(height: 16),

                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: const TextField(
                      obscureText: true,
                      decoration: InputDecoration(
                        labelText: 'Re - Enter Your Password',
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 14),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Row(
                        children: [
                          Icon(Icons.check_box_outline_blank, color: Colors.grey, size: 20),
                          SizedBox(width: 6),
                          Text(
                            'Remember Me',
                            style: TextStyle(
                              color: Colors.grey,
                              fontSize: 13,
                              fontFamily: 'Lufga',
                            ),
                          ),
                        ],
                      ),
                      TextButton(
                        onPressed: () {
                          // Forgot Password aksiyonu
                        },
                        style: TextButton.styleFrom(
                          padding: EdgeInsets.zero,
                          minimumSize: Size.zero,
                          tapTargetSize: MaterialTapTargetSize.shrinkWrap,
                        ),
                        child: const Text(
                          'Forgot Password',
                          style: TextStyle(
                            color: Colors.grey,
                            fontSize: 13,
                            fontFamily: 'Lufga',
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 28),
                  CustomElevatedButton(
                    text: 'Login',
                    onPressed: () {},
                    gradient: const RadialGradient(
                      center: Alignment(0.0, 1.9),
                      radius: 3.0,
                      colors: [
                        Color(0xFF7A2B0E),
                        Color(0xFF2A0B02),
                      ]
                    ),
                  ),


                  const SizedBox(height: 20),
                  CustomElevatedButton(
                    text: 'Continue with Google',
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    textColor: Colors.black87,
                    leadingIcon: Image.asset('assets/Icons/google.png', width: 22, height: 22),
                  ),

                  const SizedBox(height: 12),

                  CustomElevatedButton(
                    text: 'Continue with Apple',
                    onPressed: () {},
                    backgroundColor: Colors.white,
                    textColor: Colors.black87,
                    leadingIcon: Image.asset('assets/Icons/apple.png', width: 22, height: 22),
                  ),



                 

                  const SizedBox(height: 24),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Don't have an account? ",
                        style: TextStyle(color: Colors.grey, fontFamily: 'Lufga'),
                      ),
                      GestureDetector(
                        onTap: () {
                          // Sign Up aksiyonu
                        },
                        child: const Text(
                          'Sign Up',
                          style: TextStyle(
                            color: Color(0xFF2A103C),
                            fontWeight: FontWeight.bold,
                            fontFamily: 'Lufga',
                          ),
                        ),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}