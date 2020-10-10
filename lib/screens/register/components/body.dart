import 'package:flutter/material.dart';
import 'package:shop_app/screens/regUser/reg_user_screen.dart';
import '../../../components/default_button.dart';
import '../../../size_config.dart';
import '../../login_success/login_success_screen.dart';
import '../../sign_up/sign_up_screen.dart';

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
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Text(
                  "New Register",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "Choose registration option from below",
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                SizedBox(height: getProportionateScreenHeight(15)),
                DefaultButton(
                  text: "Create a new Company",
                  press: () {
                    Navigator.pushNamed(context, SignUpScreen.routeName);
                  },
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SizedBox(height: getProportionateScreenHeight(1)),
                DefaultButton(
                  text: "Add new User ",
                  press: () {
                    Navigator.pushNamed(context, RegUserScreen.routeName);
                  },
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SizedBox(height: getProportionateScreenHeight(1)),
                DefaultButton(
                  text: "(Indifferent) Use as Demo",
                  press: () {
                    Navigator.pushNamed(context, LoginSuccessScreen.routeName);
                  },
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SizedBox(height: getProportionateScreenHeight(40)),
                
                Text(
                  "By continuing you already confirm that you are agree with our Terms and conditions",
                  textAlign: TextAlign.center,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
