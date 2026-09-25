import 'package:flutter/material.dart';
//import 'package:mushroom/features/home/widgets/app_app_button.dart';
import 'package:mushroom/features/notifications/widgets/notifications_header_page.dart';
//import 'package:mushroom/features/profile/widgets/profile_header.dart';

class NotificationProfilePage extends StatefulWidget {
  const NotificationProfilePage({super.key});

  @override
  State<NotificationProfilePage> createState() => _NotificationProfilePageState();
}

class _NotificationProfilePageState extends State<NotificationProfilePage> {
  bool pauseNotification = true;

   final TextEditingController _birthDateController = TextEditingController();
  DateTime? _selectedBirthDate;


  Future<void> _selectBirthDate(BuildContext context) async {
    final DateTime? picked = await showDatePicker(
      context: context,
      initialDate: _selectedBirthDate ?? DateTime(2000), 
      firstDate: DateTime(1930), 
      lastDate: DateTime.now(),  
    );
    
    if (picked != null && picked != _selectedBirthDate) {
      setState(() {
        _selectedBirthDate = picked;
        _birthDateController.text = "${picked.day.toString().padLeft(2, '0')}.${picked.month.toString().padLeft(2, '0')}.${picked.year}";
      });
    }
  }

  @override
  void dispose() {
    _birthDateController.dispose();
    super.dispose();
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFFFFF0EB),
      body: ListView(
        padding: const EdgeInsets.only(bottom: 60),
        children: [
          //const SizedBox(height: 1),
          const NotificationsHeaderPage(),
          Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [Text('Herhangibir Bildiriminiz Bulunmamaktadır...')],
             )
             
          


          
        ],
        
        
      ),
      
      
    );
    
  }
}
