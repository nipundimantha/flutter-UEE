import 'package:flutter/material.dart';

import 'components/body.dart';

class TransactionScreen extends StatelessWidget {
  static String routeName = "/Money_transaction";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Money Transaction'),
      ),
      body: Body(),
    );
  }
}
