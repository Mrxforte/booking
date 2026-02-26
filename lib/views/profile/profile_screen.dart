import 'package:booking/views/view_profile/view_profile_screen.dart';
import 'package:booking/views/widgets/user_info_tile_widget.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Profile'), centerTitle: true),
      body: Container(
        padding: EdgeInsets.symmetric(horizontal: 32),
        child: Column(
          children: [
            SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.max,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    'assets/images/image.png',
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 20),
                Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('John Doe', style: TextStyle(fontSize: 24)),
                    SizedBox(height: 5),
                    Text(
                      'john.doe@example.com',
                      style: TextStyle(fontSize: 16),
                    ),
                  ],
                ),
              ],
            ),
            SizedBox(height: 40),
            UserInfoTileWidget(
              text: "Personal Information",
              icon: Icons.person,
              ontapHandler: () {
                Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => ViewProfileScreen()),
                );
              },
            ),
            UserInfoTileWidget(text: "Become a Host ", icon: Icons.hotel),
            UserInfoTileWidget(text: "Logout"),
          ],
        ),
      ),
    );
  }
}
