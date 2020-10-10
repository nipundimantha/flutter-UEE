import 'package:flutter/material.dart';

import '../constants.dart';
import '../size_config.dart';

class NavDefaultButton extends StatelessWidget {
  const NavDefaultButton({
    Key key,
    this.text,
    this.press,
    int width,
  }) : super(key: key);
  final String text;
  final Function press;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: getProportionateScreenWidth(150),
      height: getProportionateScreenHeight(50),
      child: FlatButton(
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
        color: kPrimaryColor,
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: getProportionateScreenWidth(18),
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
