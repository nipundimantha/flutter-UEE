import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/size_config.dart';

import 'case_processes_form.dart';


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
                Text("New Case Processes", style: headingStyle),
                
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                CaseProcessesForm(),
                SizedBox(height: getProportionateScreenHeight(30)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
