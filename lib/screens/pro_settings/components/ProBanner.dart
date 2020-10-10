import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ProBanner extends StatelessWidget {
  const ProBanner({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(20)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(20),
        vertical: getProportionateScreenWidth(15),
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFF7643),
        borderRadius: BorderRadius.circular(10),
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: Colors.white),
          children: [
            TextSpan(text: "02-03 KM : Rs. 250.00\n"),
            TextSpan(text: "04-10 KM : Rs. 350.00\n"),
            TextSpan(text: "10-20 KM : Rs. 450.00\n"),
            TextSpan(text: "20-30 KM : Rs. 550.00"),
 
          ],
        ),
      ),
    );
  }
}
