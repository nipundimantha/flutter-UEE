import 'package:flutter/material.dart';

import 'components/body.dart';

class CashRegScreen extends StatelessWidget {
  static String routeName = "/Cash_Reg_Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cash Register Reports'),
      ),
      body: Body(),
    );
  }
}
