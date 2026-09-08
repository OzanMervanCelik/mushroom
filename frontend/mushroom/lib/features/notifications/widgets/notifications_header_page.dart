import 'package:flutter/material.dart';

class NotificationsHeaderPage extends StatelessWidget {
  const NotificationsHeaderPage({super.key});

  @override
  Widget build(BuildContext context) {
    double screenWidth = MediaQuery.of(context).size.width;

    return Stack(
      alignment: Alignment.topCenter,
      children: [
        Container(
          width: double.infinity,
          height: 120,
          decoration: BoxDecoration(
            color: const Color(0xFFEFDAD0),
            borderRadius: BorderRadius.only(
              bottomLeft: Radius.elliptical(screenWidth / 1.2, 30),
              bottomRight: Radius.elliptical(screenWidth / 1.2, 30),
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
                    'Notification',
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
             


        
            ],
          ),
        ),
      ],
    );
  }
}
