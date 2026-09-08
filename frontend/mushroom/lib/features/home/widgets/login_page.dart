import 'package:flutter/material.dart';
import 'package:mushroom/features/auth/login/views/forgot_password.dart';
import 'package:mushroom/features/auth/login/views/sing_up_page.dart';
import 'package:mushroom/features/auth/login/widgets/custom_elevated_button.dart';
import 'package:mushroom/services/firebase_auth_service.dart';
import 'package:mushroom/features/main_shell/views/main_shell_page.dart';


class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  final _authService = FirebaseAuthService();
  final _emailController = TextEditingController();
  final _passwordController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _passwordController.dispose();
    super.dispose();
  }

  Future<void> _emailIleGiris() async {
    final email = _emailController.text.trim();
    final password = _passwordController.text;

    if (email.isEmpty || password.isEmpty) {
      _mesajGoster('E-posta ve şifre boş bırakılamaz.');
      return;
    }

    setState(() => _isLoading = true);
    try {
      final user = await _authService.signInWithEmail(
        email: email,
        password: password,
      );
      if (!mounted) return;
      _mesajGoster('Hoşgeldiniz ${user.user?.displayName ?? user.user?.email}');
      Navigator.pushReplacement(context, MaterialPageRoute(builder: (context) => const MainShellPage()),
      );
          } on AuthException catch (e) {
      if (mounted) _mesajGoster(e.message);
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  Future<void> _googleIleGiris() async {
    setState(() => _isLoading = true);
    try {
      final user = await _authService.signInWithGoogle();
      if (user != null && mounted) {
        _mesajGoster('Hoşgeldiniz ${user.user?.email}');
        Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const MainShellPage()),
      );
    }
    } finally {
      if (mounted) setState(() => _isLoading = false);
    }
  }

  void _mesajGoster(String mesaj) {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(mesaj)));
  }

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
                    width: 230,
                    height: 70,
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
                    child: TextField(
                      controller: _emailController,
                      keyboardType: TextInputType.emailAddress,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
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

                  // Password Input
                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: TextField(
                      controller: _passwordController,
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      onSubmitted: (_) => _emailIleGiris(),
                      decoration: const InputDecoration(
                        labelText: 'Password',
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
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=> const ForgotPassword()),
                         );
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
                    text: _isLoading ? 'Giriş yapılıyor' : 'Login',
                    onPressed: _isLoading ? null : _emailIleGiris,
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
                    onPressed: _isLoading ? null : _googleIleGiris,
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
                          Navigator.push(context, 
                          MaterialPageRoute(builder: (context)=> const SingUpPage()),
                         );
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