import 'package:flutter/material.dart';
import 'package:mushroom/features/auth/login/widgets/custom_elevated_button.dart';
import 'package:mushroom/services/firebase_auth_service.dart';

class ForgotPassword extends StatefulWidget {
  const ForgotPassword({super.key});

  @override
  State<ForgotPassword> createState() => _ForgotPasswordState();
}

class _ForgotPasswordState extends State<ForgotPassword> {
  final _authService = FirebaseAuthService();
  final _emailController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  Future<void> _sifreSifirla() async {
    final email = _emailController.text.trim();
    if (email.isEmpty) {
      _mesajGoster('Lütfen e-posta adresinizi girin.');
      return;
    }

    setState(() => _isLoading = true);
    try {
      await _authService.sendPasswordResetEmail(email);
      if (!mounted) return;
      _mesajGoster('Şifre sıfırlama bağlantısı e-postanıza gönderildi.');
      Navigator.pop(context);
    } on AuthException catch (e) {
      if (mounted) _mesajGoster(e.message);
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
      appBar:AppBar(
      automaticallyImplyLeading: true,
      backgroundColor: const Color(0xFFFFF0EB),
      elevation: 0,
      leading: IconButton(
        icon: const Icon(Icons.arrow_back),
        color:  const Color(0xFF2A103C), 
        onPressed: () {
          Navigator.pop(context);
        },
       ),
      ),
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
                    height: 60,
                    fit: BoxFit.cover,
                  ),
                  const SizedBox(height: 28),

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'identifier',
                      style: TextStyle(
                        fontSize: 32,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lufga',
                        color: Color(0xFF2A103C),
                      ),
                    ),
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
                      textInputAction: TextInputAction.done,
                      onSubmitted: (_) => _sifreSifirla(),
                      decoration: const InputDecoration(
                        labelText: 'E-Mail address',
                        hintText: 'Please login to your account.',
                        hintStyle: TextStyle(
                          color: Colors.black87,
                          fontFamily: 'Lufga',
                        ),
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                 
                  const SizedBox(height: 28),
                  CustomElevatedButton(
                    text: _isLoading ? 'Sender' : 'Send',
                    onPressed: _isLoading ? null : _sifreSifirla,
                    gradient: const RadialGradient(
                      center: Alignment(0.0, 1.9),
                      radius: 3.0,
                      colors: [
                        Color(0xFF7A2B0E),
                        Color(0xFF2A0B02),
                      ]
                    ),
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