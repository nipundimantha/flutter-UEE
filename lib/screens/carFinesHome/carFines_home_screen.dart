import 'package:flutter/material.dart';

import 'components/body.dart';

class CarFinesHomeScreen extends StatelessWidget {
  static String routeName = "/carFines_Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Fines'),
      ),
      body: Body(),
    );
  }
}
