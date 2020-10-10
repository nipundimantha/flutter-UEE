import 'package:flutter/material.dart';

import 'components/body.dart';

class MyCarHomeScreen extends StatelessWidget {
  static String routeName = "/My_car_home_screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('My Cars'),
      ),
      body: Body(),
    );
  }
}
