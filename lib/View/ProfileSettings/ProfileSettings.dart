import 'package:flutter/material.dart';

class ProfileSettings extends StatefulWidget {
  const ProfileSettings({Key? key}) : super(key: key);

  @override
  _ProfileSettingsState createState() => _ProfileSettingsState();
}

class _ProfileSettingsState extends State<ProfileSettings> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            decoration: BoxDecoration(
              image: DecorationImage(
                image: AssetImage('assets/vegetable-salad-plate.png'), // Replace with your image path
                fit: BoxFit.cover,
              ),
            ),
            child: Stack(
              children: [
                // Your profile content goes here
              ],
            ),
          ),
        ],
      ),
    );
  }
}
