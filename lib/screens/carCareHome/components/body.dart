import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/carCareHome/components/CarCareList.dart';
import 'package:shop_app/screens/car_care/car_care.dart';
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
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                Text("Car Care", style: headingStyle),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                SearchFieldClients(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                // CarCareList(),
                // CarCareList(),
                // CarCareList(),
                // CarCareList(),
                // CarCareList(),
                // CarCareList(),
                Card(
                  child: ListTile(
                    leading: new Image.asset("assets/images/carcare.png"),
                    title: Text('BT-8987854'),
                    subtitle: Text('9-JUN-2020'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: new Image.asset("assets/images/carcare.png"),
                    title: Text('NU-7859868'),
                    subtitle: Text('4-AUG-2020'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: new Image.asset("assets/images/carcare.png"),
                    title: Text('PO-7452145'),
                    subtitle: Text('8-SEP-2020'),
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
                    Navigator.pushNamed(context, CarCare.routeName);
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
