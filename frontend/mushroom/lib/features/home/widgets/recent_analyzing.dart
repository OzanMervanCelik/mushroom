import 'package:flutter/material.dart';

class RecentAnalyzing extends StatelessWidget {
  const RecentAnalyzing({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: const [
            Text(
              'Recent Analyzing',
              style: TextStyle(
                fontSize: 12,
                fontWeight: FontWeight.bold,
                fontFamily: 'Lufga',
                color: Color(0xFF3B3B3B),
              ),
            ),
            Text(
              'All',
              style: TextStyle(
                fontSize: 12,
                fontFamily: 'Lufga',
                color: Colors.black54,
              ),
            ),
          ],
        ),

        const SizedBox(height: 12),
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
      ],
    );
  }
}
