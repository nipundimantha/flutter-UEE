import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/my_car_home/components/TransactionsList.dart';
import 'package:shop_app/screens/my_car_home/components/carsTab.dart';
import 'package:shop_app/screens/newCar/new_car_screen1.dart';
import 'package:shop_app/screens/settings_page/components/categories3.dart';
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
                Text("My Cars", style: headingStyle),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                CarTab(),
                SizedBox(height: getProportionateScreenHeight(60)),
                FloatingActionButton(
                  backgroundColor: const Color(0xFFFF7643),
                  foregroundColor: Colors.white,
                  mini: false,
                  onPressed: () {
                    Navigator.pushNamed(context, NewCarScreen1.routeName);
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(height: getProportionateScreenHeight(30)),
                Text(
                  "Copyright@Rent4U | AllRightsReserved2020",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
