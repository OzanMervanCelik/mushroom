import 'dart:io';

import 'package:flutter/material.dart';

class ScanPage extends StatelessWidget {
  const ScanPage({super.key, this.imagePath});

  final String? imagePath;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0EB),
      appBar: AppBar(
        backgroundColor: const Color(0xFFFFF0EB),
        elevation: 0,
        title: const Text(
          'Tara',
          style: TextStyle(
            fontFamily: 'Lufga',
            fontWeight: FontWeight.w600,
            color: Color(0xFF2A0B02),
          ),
        ),
        iconTheme: const IconThemeData(color: Color(0xFF2A0B02)),
      ),
      body: Center(
        child: imagePath == null
            ? const Text(
                'Tarama ekranı',
                style: TextStyle(fontFamily: 'Lufga'),
              )
            : Padding(
                padding: const EdgeInsets.all(20),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.file(File(imagePath!)),
                ),
              ),
      ),
    );
  }
}
