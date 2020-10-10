import 'package:flutter/material.dart';

import 'components/body.dart';

class CarCareHomeScreen extends StatelessWidget {
  static String routeName = "/carcare_Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car care'),
      ),
      body: Body(),
    );
  }
}
