import 'package:flutter/material.dart';
import 'package:shop_app/screens/carCareHome/Carcare_home_screen.dart';
import 'package:shop_app/screens/carFinesHome/carFines_home_screen.dart';
import 'package:shop_app/screens/my_car_home/mycar_home_screen.dart';
import '../../../components/default_button.dart';
import '../../../size_config.dart';

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
                  "My Cars",
                  style: TextStyle(
                    color: Colors.black,
                    fontSize: getProportionateScreenWidth(28),
                    fontWeight: FontWeight.bold,
                  ),
                ),
                
                SizedBox(height: SizeConfig.screenHeight * 0.1),
                SizedBox(height: getProportionateScreenHeight(15)),
                DefaultButton(
                  text: "Cars",
                  press: () {
                    Navigator.pushNamed(context, MyCarHomeScreen.routeName);
                  },
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SizedBox(height: getProportionateScreenHeight(1)),
                DefaultButton(
                  text: "Car care",
                  press: () {
                    Navigator.pushNamed(context, CarCareHomeScreen.routeName);
                  },
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.08),
                SizedBox(height: getProportionateScreenHeight(1)),
                DefaultButton(
                  text: "Car fines",
                  press: () {
                    Navigator.pushNamed(context, CarFinesHomeScreen.routeName);
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
