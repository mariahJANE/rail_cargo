import 'package:flutter/material.dart';
import 'package:rail_cargo/utils/settings_tile.dart';
import 'package:firebase_auth/firebase_auth.dart';

class SettingsPage extends StatefulWidget {
  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  void logout() async {
    await FirebaseAuth.instance.signOut();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Settings")),
      body: ListView(
        children: [
          SettingsTile(icons: Icons.person, option: 'Profile'),
          SizedBox(height: 10),
          SettingsTile(
            icons: Icons.edit_notifications_rounded,
            option: 'Notification',
          ),
          SizedBox(height: 10),
          SettingsTile(icons: Icons.person_pin, option: 'Customer Care'),
          SizedBox(height: 10),
          SettingsTile(
            icons: Icons.language_rounded,
            option: 'Language Preference',
          ),
          SizedBox(height: 10),
          SettingsTile(icons: Icons.logout_rounded, option: 'Logout'),
          SizedBox(height: 10),
        ],
      ),
    );
  }
}
