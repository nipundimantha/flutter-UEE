import 'package:flutter/material.dart';

import 'components/body.dart';

class MoneyTransaction extends StatelessWidget {
  static String routeName = "/moneyTransaction";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Money Transaction'),
      ),
      body: Body(),
    );
  }
}
