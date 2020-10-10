import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/pro_settings/components/ProBanner.dart';
import 'package:shop_app/size_config.dart';

import 'pro_settings_form.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SizedBox(
        width: double.infinity,
        child: Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SingleChildScrollView(
            child: Column(
              children: [
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text("Program Settings", style: headingStyle),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                ProBanner(),
                SizedBox(height: getProportionateScreenHeight(10)),
                ProSettingsForm(),
                SizedBox(height: getProportionateScreenHeight(30)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
