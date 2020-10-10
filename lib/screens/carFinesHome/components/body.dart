import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/carFines/car_fines.dart';
import 'package:shop_app/screens/carFinesHome/components/CarFineList.dart';
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
                Text("Car Fines", style: headingStyle),
                SizedBox(height: SizeConfig.screenHeight * 0.01),
                SearchFieldClients(),
                SizedBox(height: SizeConfig.screenHeight * 0.04),
                Card(
                  child: ListTile(
                    leading: new Image.asset("assets/images/car.png"),
                    title: Text('BT-8987854'),
                    subtitle: Text('Rs:23,000.00'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: new Image.asset("assets/images/car.png"),
                    title: Text('NU-7859868'),
                    subtitle: Text('Rs:63,000.00'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: new Image.asset("assets/images/car.png"),
                    title: Text('PO-7452145'),
                    subtitle: Text('Rs:7,000.00'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
                SizedBox(height: getProportionateScreenHeight(30)),
                FloatingActionButton(
                  backgroundColor: const Color(0xFFFF7643),
                  foregroundColor: Colors.black,
                  mini: true,
                  onPressed: () {
                    Navigator.pushNamed(context, CarFines.routeName);
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
