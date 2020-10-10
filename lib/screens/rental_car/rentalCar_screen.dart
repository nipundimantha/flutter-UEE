import 'package:flutter/material.dart';

import 'components/body.dart';

class RentalCarScreen extends StatelessWidget {
  static String routeName = "/rentalCarScreen";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
       appBar: AppBar(
        title: Text("Car"),
      ),
      body: Body(),
    );
  }
}
