import 'package:flutter/material.dart';
// import 'package:shop_app/components/drawer.dart';
import 'package:shop_app/screens/nav/components/body.dart';

class NavScreen extends StatelessWidget {
  static String routeName = "/navScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Navigation'),
      ),
      // drawer: AppDrawer(),
      body: Body(),
    );
  }
}
