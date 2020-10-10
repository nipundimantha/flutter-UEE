import 'package:flutter/material.dart';

import 'components/body.dart';

class NewCarHomeScreen extends StatelessWidget {
  static String routeName = "/new_car_Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Car'),
      ),
      body: Body(),
    );
  }
}
