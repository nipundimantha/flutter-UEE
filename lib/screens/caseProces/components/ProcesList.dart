import 'package:flutter/material.dart';

import '../../../size_config.dart';

class ProcesList extends StatelessWidget {
  const ProcesList({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      
      width: double.infinity,
      margin: EdgeInsets.all(getProportionateScreenWidth(6)),
      padding: EdgeInsets.symmetric(
        horizontal: getProportionateScreenWidth(30),
        vertical: getProportionateScreenWidth(10),
      ),
      decoration: BoxDecoration(
        color: Color(0xFFFEDBD0),
        borderRadius: BorderRadius.circular(15),
      ),
      child: Text.rich(
        TextSpan(
          style: TextStyle(color: Color(0xFFFF7643)),
          children: [
            TextSpan(
              text: "case Process",
              style: TextStyle(
                fontSize: getProportionateScreenWidth(20),
                fontWeight: FontWeight.bold,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
