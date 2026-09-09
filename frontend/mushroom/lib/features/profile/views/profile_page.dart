import 'package:flutter/material.dart';
import 'package:mushroom/features/home/widgets/app_app_button.dart';
import 'package:mushroom/features/main_shell/widgets/app_bottom_navigation_bar.dart';
import 'package:mushroom/features/profile/widgets/profile_header.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
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
        padding: EdgeInsets.only(bottom: bottomNavContentInset(context, margin: 40)),
        children: [
          const ProfileHeader(),

          const SizedBox(height: 18),

          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 40),
            child: Column(
              children: [
                Container(
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(16),
                  ),
                  child: Column(
                    children: [
                    ],
                  ),
                ),
                Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: TextField(
                      textCapitalization: TextCapitalization.words,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(fontSize: 14),
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 6),
                        labelText: 'Name',
                        labelStyle: TextStyle(color: Colors.black, fontSize: 13),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                        hintText: 'Name',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                    const SizedBox(height: 12),
                   Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: TextField(
                      textCapitalization: TextCapitalization.words,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(fontSize: 14),
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 6),
                        labelText: 'Surname',
                        labelStyle: TextStyle(color: Colors.black, fontSize: 13),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                        hintText: 'Surname',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                   const SizedBox(height: 12),
                   Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: TextField(
                      textCapitalization: TextCapitalization.words,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(fontSize: 14),
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 6),
                        labelText: 'Gender',
                        labelStyle: TextStyle(color: Colors.black, fontSize: 13),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                        hintText: 'Gender',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  
                   const SizedBox(height: 12),


                  Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: TextField(
                      controller: _birthDateController,
                      readOnly: true, // Klavyenin açılmasını engeller
                      onTap: () => _selectBirthDate(context), // Tıklayınca takvim açılır
                      style: const TextStyle(fontSize: 14),
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 6),
                        labelText: 'Birth Date',
                        labelStyle: TextStyle(color: Colors.black, fontSize: 13),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                        hintText: 'Select your birth date',
                        border: InputBorder.none,
                        suffixIcon: Icon(Icons.calendar_month, size: 20, color: Colors.grey),
                        suffixIconConstraints: BoxConstraints(minWidth: 0, minHeight: 0),
                      ),
                    ),
                  ),

                   const SizedBox(height: 12),

                  Row(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Expanded(child: Container(
                        padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(14),
                        ),
                        child: TextField(
                          textCapitalization: TextCapitalization.words,
                          textInputAction: TextInputAction.next,
                          style: const TextStyle(fontSize: 14),
                          decoration: const InputDecoration(
                            isDense: true,
                            contentPadding: EdgeInsets.symmetric(vertical: 6),
                            labelText: 'height',
                            labelStyle: TextStyle(color: Colors.black, fontSize: 13),
                            hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                            hintText:'height',
                            border: InputBorder.none,
                          
                          ),
                        ),
                      ),
                     ),
                     SizedBox(width: 12),
                     Expanded(child: Container(
                       padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                       decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                       ),
                       child: TextField(
                        textCapitalization: TextCapitalization.words,
                        textInputAction: TextInputAction.next,
                        style: const TextStyle(fontSize: 14),
                        decoration: const InputDecoration(
                          isDense: true,
                          contentPadding: EdgeInsets.symmetric(vertical: 6),
                          labelText: 'weight',
                          labelStyle: TextStyle(color: Colors.black,fontSize: 13),
                          hintText: 'Weight',
                          hintStyle: TextStyle(color:Colors.grey, fontSize: 13),
                          border: InputBorder.none
                        ),
                       ),
                      ),
                     ),
                    ],
                  ),
                  const SizedBox(height: 12),
                   Container(
                    padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 2),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: TextField(
                      textCapitalization: TextCapitalization.words,
                      textInputAction: TextInputAction.next,
                      style: const TextStyle(fontSize: 14),
                      decoration: const InputDecoration(
                        isDense: true,
                        contentPadding: EdgeInsets.symmetric(vertical: 6),
                        labelText: 'E mail',
                        labelStyle: TextStyle(color: Colors.black, fontSize: 13),
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13),
                        hintText: 'E mail',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                  
                  const SizedBox(height: 12),

                  const AppAppButton(text: 'Save My Information'),

                  const SizedBox(height: 12),

                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Text(
                        "Close My Account ",
                        style: TextStyle(
                          color: Color(0xFF464646),
                          fontFamily: 'Lufga',
                          fontWeight: FontWeight.bold,                        ),
                      ),

                    ],
                  ),

              ],
            ),
          ),
        ],
      ),
    );
  }
}
