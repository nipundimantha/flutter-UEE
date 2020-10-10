import 'package:flutter/material.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/screens/caseProces/caseProces_screen.dart';
import 'package:shop_app/screens/cashReg/cashReg_screen.dart';
import 'package:shop_app/screens/rentalIncome/components/rentalIncome.dart';
import 'package:shop_app/screens/transaction/transaction_home_screen.dart';
import 'package:shop_app/size_config.dart';

import '../../../constants.dart';

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
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                Text(
                  "Transactions",
                  style: headingStyle,
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                RentalIncome(),
                SizedBox(height: SizeConfig.screenHeight * 0.06),
                //NewCarHomeForm(),
                // SizedBox(height: getProportionateScreenHeight(30)),

                SizedBox(height: SizeConfig.screenHeight * 0.02),
                DefaultButton(
                  text: "Money Transaction",
                  press: () {
                    // if all are valid then go to success screen
                    Navigator.pushNamed(context, TransactionScreen.routeName);
                  },
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                DefaultButton(
                  text: "Cash Register Reports",
                  press: () {
                    // if all are valid then go to success screen
                    Navigator.pushNamed(context, CashRegScreen.routeName);
                  },
                ),
                SizedBox(height: getProportionateScreenHeight(20)),
                DefaultButton(
                  text: "Case Proceses",
                  press: () {
                    // if all are valid then go to success screen
                    Navigator.pushNamed(context, CaseProcesScreen.routeName);
                  },
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
