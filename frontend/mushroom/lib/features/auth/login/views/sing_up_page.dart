import 'package:flutter/material.dart';
import 'package:mushroom/features/auth/login/views/login_page.dart';
import 'package:mushroom/features/auth/login/widgets/custom_elevated_button.dart';
import 'package:mushroom/services/firebase_auth_service.dart';

class SingUpPage extends StatefulWidget {
  const SingUpPage({super.key});

  @override
  State<SingUpPage> createState() => _SingUpPageState();
}

class _SingUpPageState extends State<SingUpPage> {
  final _authService = FirebaseAuthService();
  final _emailController = TextEditingController();
  final _adController = TextEditingController();
  final _soyadController = TextEditingController();
  final _sifreController = TextEditingController();
  final _sifreTekrarController = TextEditingController();
  bool _isLoading = false;

  @override
  void dispose() {
    _emailController.dispose();
    _adController.dispose();
    _soyadController.dispose();
    _sifreController.dispose();
    _sifreTekrarController.dispose();
    super.dispose();
  }

  Future<void> _kayitOl() async {
    final email = _emailController.text.trim();
    final ad = _adController.text.trim();
    final soyad = _soyadController.text.trim();
    final sifre = _sifreController.text;

    if (email.isEmpty || ad.isEmpty || soyad.isEmpty || sifre.isEmpty) {
      _mesajGoster('Lütfen tüm alanları doldurun.');
      return;
    }
    if (sifre != _sifreTekrarController.text) {
      _mesajGoster('Şifreler eşleşmiyor.');
      return;
    }
    if (sifre.length < 6) {
      _mesajGoster('Şifre en az 6 karakter olmalı.');
      return;
    }

    setState(() => _isLoading = true);
    try {
      await _authService.registerWithEmail(
        email: email,
        password: sifre,
        displayName: '$ad $soyad',
      );
      if (!mounted) return;
      _mesajGoster('Kayıt başarılı, giriş yapabilirsiniz.');
      Navigator.pushReplacement(
        context,
        MaterialPageRoute(builder: (context) => const LoginPage()),
      );
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

                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Sing Up',
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
                      'Enter your information to access your account.',
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
                        //hintText: 'E-mail',
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
                    child: TextField(
                      controller: _adController,
                      textCapitalization: TextCapitalization.words,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        labelText: 'Ad',
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
                    child: TextField(
                      controller: _soyadController,
                      textCapitalization: TextCapitalization.words,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        labelText: 'Soyad',
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
                    child: TextField(
                      controller: _sifreController,
                      obscureText: true,
                      textInputAction: TextInputAction.next,
                      decoration: const InputDecoration(
                        labelText: 'Şifre',
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
                    child: TextField(
                      controller: _sifreTekrarController,
                      obscureText: true,
                      textInputAction: TextInputAction.done,
                      onSubmitted: (_) => _kayitOl(),
                      decoration: const InputDecoration(
                        labelText: 'Şifre Tekrar',
                        border: InputBorder.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 28),
                  CustomElevatedButton(
                    text: _isLoading ? 'Kaydediliyor...' : 'Kayıt Ol',
                    onPressed: _isLoading ? null : _kayitOl,
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