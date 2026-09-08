import 'package:flutter/material.dart';

class SettingsHeader extends StatelessWidget {
  const SettingsHeader({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: double.infinity,
          height: 230,
          decoration: BoxDecoration(
            color: const Color(0xFFEFDAD0),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(screenWidth / 2, 85),
              bottomRight: Radius.elliptical(screenWidth / 2, 85),
            ),
          ),
        ),

        SafeArea(
          bottom: false,
          child: Column(
            children: [
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back_ios_new_rounded),
                    iconSize: 20,
                    color: const Color(0xFF2A0B02),
                    onPressed: () {},
                  ),
                  const Text(
                    'Settings',
                    style: TextStyle(
                      fontSize: 18,
                      fontFamily: 'Lufga',
                      fontWeight: FontWeight.w600,
                      color: Color(0xFF2A0B02),
                    ),
                  ),
                  const Spacer(),
                  IconButton(
                    icon: const Icon(Icons.more_vert),
                    color: const Color(0xFF2A0B02),
                    onPressed: () {},
                  ),
                ],
              ),

              const SizedBox(height: 56),

              const CircleAvatar(
                radius: 82,
                backgroundColor: Color(0xFFFFF0EB),
                child: CircleAvatar(
                  radius: 78,
                  backgroundColor: Color(0xFFEFDAD0),
                  backgroundImage: AssetImage('assets/images/Ellipse86.png'),
                ),
              ),

              const SizedBox(height: 14),

              const Text(
                'Daniel Carter',
                style: TextStyle(
                  fontSize: 20,
                  fontFamily: 'Lufga',
                  fontWeight: FontWeight.w500,
                  color: Color(0xFF2A0B02),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
