import 'package:flutter/material.dart';

import 'components/body.dart';

class CarFines extends StatelessWidget {
  static String routeName = "/carFines";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Car Fines'),
      ),
      body: Body(),
    );
  }
}
