import 'package:flutter/material.dart';
import 'package:shop_app/size_config.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: SizeConfig.screenHeight * 0.03),
        Image.asset(
          "assets/images/logout.png",
          height: SizeConfig.screenHeight * 0.5, //40%
        ),
        SizedBox(height: SizeConfig.screenHeight * 0.08),
        Text(
          "Logout Successfully",
          style: TextStyle(
            fontSize: getProportionateScreenWidth(50),
            fontWeight: FontWeight.bold,
            color: Colors.black,
          ),
        ),
        Spacer(),
        // SizedBox(
        //   width: SizeConfig.screenWidth * 0.8,
        //   child: DefaultButton(
        //     text: "Back to home",
        //     press: () {
        //       Navigator.pushNamed(context, RentHomeScreen.routeName);
        //     },
        //   ),
        // ),
        Spacer(),
      ],
    );
  }
}
