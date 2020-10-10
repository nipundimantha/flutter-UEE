import 'package:flutter/material.dart';

import 'components/body.dart';

class RegisterScreen extends StatelessWidget {
  static String routeName = "/register";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Register"),
      ),
      body: Body(),
    );
  }
}
