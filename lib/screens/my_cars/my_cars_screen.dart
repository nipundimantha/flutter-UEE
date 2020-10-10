import 'package:flutter/material.dart';

import 'components/body.dart';

class MyCarsScreen extends StatelessWidget {
  static String routeName = "/myCars";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("My Cars"),
      ),
      body: Body(),
    );
  }
}
