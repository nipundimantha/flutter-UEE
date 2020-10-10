import 'package:flutter/material.dart';

import 'components/body2.dart';

class NewCarScreen2 extends StatelessWidget {
  static String routeName = "/new_car2";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Car'),
      ),
      body: Body2(),
    );
  }
}
