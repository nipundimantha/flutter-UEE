import 'package:flutter/material.dart';

import 'components/body.dart';

class ProSettings extends StatelessWidget {
  static String routeName = "/proSettings";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Program Settings'),
      ),
      body: Body(),
    );
  }
}
