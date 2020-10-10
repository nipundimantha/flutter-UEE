import 'package:flutter/material.dart';

import 'components/body.dart';

class NewClientsHomeScreen extends StatelessWidget {
  static String routeName = "/new_clients_Home";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('New Clients'),
      ),
      body: Body(),
    );
  }
}
