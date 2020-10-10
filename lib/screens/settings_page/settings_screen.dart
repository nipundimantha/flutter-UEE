import 'package:flutter/material.dart';

import 'components/body.dart';

class SettingsScreen extends StatelessWidget {
  static String routeName = "/settingsScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Body(),
    );
  }
}
