import 'package:flutter/material.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0EB),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF0EB),
        title: const Text('Tara'),
      ),
      body: const Center(child: Text('Tarama ekranı')),
    );
  }
}
