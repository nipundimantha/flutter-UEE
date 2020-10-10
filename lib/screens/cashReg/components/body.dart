import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/cashReg/components/ReportList.dart';
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
                Text("Cash Register Reports", style: headingStyle),
                SizedBox(height: SizeConfig.screenHeight * 0.05),

                // ReportList(),
                // ReportList(),
                // ReportList(),
                // ReportList(),
                // ReportList(),
                // ReportList(),
                // ReportList(),

                Card(
                  child: ListTile(
                    leading: new Image.asset("assets/images/report.png"),
                    title: Text('Report 1'),
                    subtitle: Text('B2345654333'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: new Image.asset("assets/images/report.png"),
                    title: Text('Report2'),
                    subtitle: Text('B7854785853'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                SizedBox(height: getProportionateScreenHeight(30)),

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
