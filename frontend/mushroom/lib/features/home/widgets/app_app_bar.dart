import 'package:flutter/material.dart';
import 'package:mushroom/features/notifications/views/notification_profile_page.dart';

class AppAppBar extends StatelessWidget implements PreferredSizeWidget {
  const AppAppBar({super.key});

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: const Color(0xFFFFF0EB),
      elevation: 0,
      title: const Text(
        'identifier',
        style: TextStyle(
          fontSize: 20,
          fontWeight: FontWeight.bold,
          fontFamily: 'Lufga',
          color: Color(0xFF2A103C),
        ),
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.workspace_premium_outlined),
          color: const Color(0xFF3B3B3B),
          onPressed: () {},
        ),
        IconButton(
          icon: const Icon(Icons.notifications_none_rounded),
          color: const Color(0xFF3B3B3B),
          onPressed: () {
            Navigator.push(context, 
            MaterialPageRoute(builder: (context)=> const NotificationProfilePage()),
            );
          },
        ),
        const CircleAvatar(
          radius: 22,
          backgroundColor: Color(0xFFE8D5CC),
          backgroundImage: AssetImage('assets/images/Ellipse86.png'),
          /*child: Icon(Icons.person,
            size: 36,
            color: Color(0xFF2A103C),
          ),*/
        ),
        const SizedBox(width: 12),
      ],
    );
  }
}