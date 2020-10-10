import 'package:flutter/material.dart';
// import 'package:shop_app/components/scrollable_footer.dart';
import 'package:shop_app/screens/rentHome/components/search_field.dart';
import '../../../size_config.dart';
import 'home_header.dart';
import 'special_offers.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: getProportionateScreenHeight(30)),
            HomeHeader(),
            SizedBox(height: getProportionateScreenHeight(30)),
            SearchField(),
            // Text("Welcome", style: headingStyle),
            // Text("We pride our selves on our car hire fleet ",
            //     textAlign: TextAlign.center),
            SizedBox(height: getProportionateScreenHeight(40)),
            SizedBox(height: getProportionateScreenWidth(10)),
            SpecialOffers(),
            SizedBox(height: getProportionateScreenWidth(70)),
            // Text("", textAlign: TextAlign.center),
            // SizedBox(height: getProportionateScreenWidth(30)),
            // ScrollableFooter(),
            Container(
              width: 900,
              color: Colors.deepOrange,
              height: 30,
              child: Text(
                'Powered by 2020-JUN-WE-05',
                textAlign: TextAlign.center,
                style: TextStyle(
                  // fontSize: ,
                  color: Colors.white,
                  letterSpacing: 1,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
