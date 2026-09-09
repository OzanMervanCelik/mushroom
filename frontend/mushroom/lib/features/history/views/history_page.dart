import 'package:flutter/material.dart';
import 'package:mushroom/features/home/widgets/app_app_bar.dart';
import 'package:mushroom/features/main_shell/widgets/app_bottom_navigation_bar.dart';

class HistoryPage extends StatelessWidget {
  const HistoryPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Color(0xFFFFF0EB),
      appBar: const AppAppBar(),
      body: Container(
        decoration: const BoxDecoration(
          gradient: LinearGradient(
            colors: [Color(0xFFFFF0EB), Color(0xFFFFF0EB)],
            begin: Alignment.topCenter,
            end: Alignment.bottomCenter,
          ),
        ),
        child: SingleChildScrollView(
          padding: EdgeInsets.fromLTRB(
            28,
            14,
            28,
            bottomNavContentInset(context, margin: 40),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text(
                    "Recent Scans",
                    style: TextStyle(
                      color: Color(0xFF2A103C),
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(width: 155),
                  GestureDetector(
                    onTap: () {},
                    child: const Text(
                      'Filter',
                      style: TextStyle(color: Colors.grey, fontFamily: 'Lufga'),
                    ),           
                  ),
                  const SizedBox(width: 4),
                  Image.asset(
                    'assets/images/Vector.png',
                    width: 16,
                    height: 16,
                  ),
                ],
              ),
              const SizedBox(height: 8),
              Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/images/Rectangle47.png',
                  width: 45,
                  height: 45,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Boletus edulis',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lufga',
                        color: Color(0xFF3B3B3B),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'is a prized edible mushroom...',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Lufga',
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
              const SizedBox(width: 8),
            ],
          ),
        ),

              Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/images/Rectangle49.png',
                  width: 45,
                  height: 45,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Morchella',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lufga',
                        color: Color(0xFF3B3B3B),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'mushrooms offer a unique, earthy...',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Lufga',
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
              const SizedBox(width: 8),
            ],
          ),
        ),

              Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/images/Rectangle50.png',
                  width: 45,
                  height: 45,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Tuber spp.',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lufga',
                        color: Color(0xFF3B3B3B),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'deliver luxurious aroma and deep...',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Lufga',
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
              const SizedBox(width: 8),
            ],
          ),
        ),

              Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/images/Rectangle51.png',
                  width: 45,
                  height: 45,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ganoderma lucidum',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lufga',
                        color: Color(0xFF3B3B3B),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'is known for its glossy cap and...',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Lufga',
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
              const SizedBox(width: 8),
            ],
          ),
        ),

              Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/images/Rectangle51.png',
                  width: 45,
                  height: 45,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ganoderma lucidum',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lufga',
                        color: Color(0xFF3B3B3B),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'is known for its glossy cap and...',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Lufga',
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
              const SizedBox(width: 8),
            ],
          ),
        ),

              Container(
          margin: const EdgeInsets.only(bottom: 10),
          padding: const EdgeInsets.all(6),
          decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.circular(40),
          ),
          child: Row(
            children: [
              ClipRRect(
                borderRadius: BorderRadius.circular(30),
                child: Image.asset(
                  'assets/images/Rectangle51.png',
                  width: 45,
                  height: 45,
                  fit: BoxFit.cover,
                ),
              ),
              const SizedBox(width: 12),
              const Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Ganoderma lucidum',
                      style: TextStyle(
                        fontSize: 12,
                        fontWeight: FontWeight.bold,
                        fontFamily: 'Lufga',
                        color: Color(0xFF3B3B3B),
                      ),
                    ),
                    SizedBox(height: 2),
                    Text(
                      'is known for its glossy cap and...',
                      style: TextStyle(
                        fontSize: 12,
                        fontFamily: 'Lufga',
                        color: Colors.grey,
                      ),
                      overflow: TextOverflow.ellipsis,
                    ),
                  ],
                ),
              ),
              const Icon(Icons.arrow_forward_ios, color: Colors.grey, size: 16),
              const SizedBox(width: 8),
            ],
          ),
        ),

            ],
          ),
          
        ),
      ),
    );
  }
}
