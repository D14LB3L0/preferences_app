import 'package:flutter/material.dart';
import 'package:preferences_app/widgets/side_menu.dart';

class SettingsScreen extends StatelessWidget {
  static const String routerName = 'Settings';

  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Settings')),
      drawer: const SideMenu(),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Settings',
                style: TextStyle(fontSize: 45, fontWeight: FontWeight.w300),
              ),
              const Divider(),

              SwitchListTile(
                value: true,
                title: const Text('Darkmode'),
                onChanged: (value) {},
              ),
              const Divider(),

              RadioListTile(
                value: 1,
                groupValue: 1,
                title: const Text('Male'),
                onChanged: (value) {},
              ),
              const Divider(),

              RadioListTile(
                value: 2,
                groupValue: 1,
                title: const Text('Female'),
                onChanged: (value) {},
              ),
              const Divider(),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20),
                child: TextFormField(
                  initialValue: 'Diego',
                  decoration: const InputDecoration(
                    labelText: 'Name',
                    helperText: 'User name'
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
