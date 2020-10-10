import 'package:flutter/material.dart';

import 'components/body.dart';

class CarCalanderScreen extends StatelessWidget {
  static String routeName = "/car_calander";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Car Calander'),
      ),
      body: Body(),
    );
  }
}
