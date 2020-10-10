import 'package:flutter/material.dart';

import 'components/body.dart';

class ClientInfoScreen extends StatelessWidget {
  static String routeName = "/client_info";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Client Information'),
      ),
      body: Body(),
    );
  }
}
