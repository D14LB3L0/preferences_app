import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/side_menu.dart';

class SettingsScreen extends StatelessWidget {
  static const String routerName = 'Settings';

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Settings'),
      ),
      drawer: const SideMenu(),
      body: Center(child: Text('SettingsScreen')));
  }
}
