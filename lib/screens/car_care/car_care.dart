import 'package:flutter/material.dart';

import 'components/body.dart';

class CarCare extends StatelessWidget {
  static String routeName = "/carCare";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New car care'),
      ),
      body: Body(),
    );
  }
}
