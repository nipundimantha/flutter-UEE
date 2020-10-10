import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/moneyTransaction/money_transaction.dart';
import 'package:shop_app/screens/transaction/components/TransactionsList.dart';
import 'package:shop_app/size_config.dart';

import 'moneyTrans.dart';

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
                Text("Money Transaction", style: headingStyle),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                MoneyTrans(),
                SizedBox(height: getProportionateScreenHeight(60)),
                FloatingActionButton(
                  backgroundColor: const Color(0xFFFF7643),
                  foregroundColor: Colors.white,
                  mini: false,
                  onPressed: () {
                    Navigator.pushNamed(context, MoneyTransaction.routeName);
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(height: getProportionateScreenHeight(30)),
                Text(
                  "CopyRight | 2020",
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
