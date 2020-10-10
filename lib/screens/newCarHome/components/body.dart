import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/newCar/new_car_screen1.dart';
import 'package:shop_app/size_config.dart';



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
                Text("New Car", style: headingStyle),
                
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                //NewCarHomeForm(),
                SizedBox(height: getProportionateScreenHeight(30)),
                FloatingActionButton(
                  backgroundColor: const Color(0xFFFF7643),
                  foregroundColor: Colors.black,
                  mini: true,
                  onPressed: () {
                      Navigator.pushNamed(context,NewCarScreen1.routeName);
                    },
                  child: Icon(Icons.add),
                    ),
                Text(
                  "By continuing your confirm that you agree \nwith our Term and Condition",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
                 SizedBox(height: getProportionateScreenHeight(30)),

              ],
            ),
          ),
        ),
      ),
    );
  }
}
