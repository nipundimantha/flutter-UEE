import 'package:flutter/material.dart';

import '../../../size_config.dart';

class RentalIncome extends StatelessWidget {
  const RentalIncome({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(2)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFBB8AC),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: Colors.black),
          children: [
            TextSpan(
              text: "Total Income : Rs:23,999.99\n",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(23),
                fontWeight: FontWeight.bold,
              ),
            ),
            TextSpan(text: "\n"),
            TextSpan(text: "2020-10-10            10:10 AM\n"),
          ],
        ),
      ),
    );
  }
}
