import 'package:flutter/material.dart';

import 'components/body1.dart';

class NewCarScreen1 extends StatelessWidget {
  static String routeName = "/new_car1";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Car'),
      ),
      body: Body1(),
    );
  }
}
