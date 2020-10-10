import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/rental_car/components/rentTab.dart';
import 'package:shop_app/size_config.dart';

import 'popular_product.dart';

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
                Text("Rental Car", style: headingStyle),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                RentTab(),
                SizedBox(height: getProportionateScreenHeight(30)),
                FloatingActionButton(
                  backgroundColor: const Color(0xFFFF7643),
                  foregroundColor: Colors.white,
                  mini: false,
                  onPressed: () {},
                  child: Icon(Icons.add),
                ),
                SizedBox(height: getProportionateScreenHeight(30)),
                Text(
                  "Copyright@Rent4U | AllRightsReserved2020",
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
