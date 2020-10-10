import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/caseProces/components/ProcesList.dart';
import 'package:shop_app/screens/caseProcesses/case_processes.dart';
import 'package:shop_app/screens/clientInfo/components/search_field.dart';
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
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                Text("Cash Outflow Inflow", style: headingStyle),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                SearchFieldClients(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Card(
                  child: ListTile(
                    leading: new Image.asset("assets/images/cash.png"),
                    title: Text('Account-ACC1002'),
                    subtitle: Text('Rs:2500.00'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: new Image.asset("assets/images/cash.png"),
                    title: Text('Account-ACC1003'),
                    subtitle: Text('Rs:5200.00'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(30)),
                FloatingActionButton(
                  backgroundColor: const Color(0xFFFF7643),
                  foregroundColor: Colors.white,
                  mini: false,
                  onPressed: () {
                    Navigator.pushNamed(context, CaseProcesses.routeName);
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
