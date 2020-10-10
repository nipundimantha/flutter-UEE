import 'package:flutter/material.dart';

import 'components/body.dart';

class RegUserScreen extends StatelessWidget {
  static String routeName = "/reg_user";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Body(),
    );
  }
}
