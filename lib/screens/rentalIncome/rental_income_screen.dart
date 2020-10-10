import 'package:flutter/material.dart';

import 'components/body.dart';

class RentalIncomeScreen extends StatelessWidget {
  static String routeName = "/rental_income";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Rental Income'),
      ),
      body: Body(),
    );
  }
}
