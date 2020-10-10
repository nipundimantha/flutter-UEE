import 'package:flutter/material.dart';

import 'components/body.dart';

class CaseProcesScreen extends StatelessWidget {
  static String routeName = "/Case_Proces_Screen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Cash Outflow Inflow'),
      ),
      body: Body(),
    );
  }
}
