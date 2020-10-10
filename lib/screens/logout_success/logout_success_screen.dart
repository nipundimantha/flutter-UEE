import 'package:flutter/material.dart';

import 'components/body.dart';

class LogoutSuccessScreen extends StatelessWidget {
  static String routeName = "/logout_success";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: SizedBox(),
        title: Text("Logout Successfully"),
      ),
      body: Body(),
    );
  }
}
