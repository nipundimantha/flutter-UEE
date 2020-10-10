import 'package:flutter/material.dart';
import 'package:shop_app/constants.dart';
import 'package:shop_app/screens/clientInfo/client_info_screen.dart';
import 'package:shop_app/screens/clientInfo/components/search_field.dart';
import 'package:shop_app/screens/newClientHome/components/ClientsList.dart';
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
                SizedBox(height: SizeConfig.screenHeight * 0.02),
                Text("Client List", style: headingStyle),
                SizedBox(height: SizeConfig.screenHeight * 0.03),
                SearchFieldClients(),
                SizedBox(height: SizeConfig.screenHeight * 0.05),
                Card(
                  child: ListTile(
                    leading: new Image.asset("assets/images/client.png"),
                    title: Text('Tiny Ekanayake'),
                    subtitle: Text('Driving LIC - B2345654333'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: new Image.asset("assets/images/client.png"),
                    title: Text('Telli Anderson'),
                    subtitle: Text('Driving LIC - B7854785853'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: new Image.asset("assets/images/client.png"),
                    title: Text('Solarie Dore'),
                    subtitle: Text('Driving LIC - B745814383'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
                Card(
                  child: ListTile(
                    leading: new Image.asset("assets/images/client.png"),
                    title: Text('Michal Perterson'),
                    subtitle: Text('Driving LIC - B7859634385'),
                    trailing: Icon(Icons.more_vert),
                    isThreeLine: true,
                  ),
                ),
                // ClientsList(),
                // ClientsList(),
                // ClientsList(),
                // ClientsList(),
                // ClientsList(),
                // ClientsList(),
                // ListView(
                //   children: <Widget>[
                //     Card(
                //       child: ListTile(
                //         leading: FlutterLogo(size: 72.0),
                //         title: Text('Three-line ListTile'),
                //         subtitle: Text(
                //             'A sufficiently long subtitle warrants three lines.'),
                //         trailing: Icon(Icons.more_vert),
                //         isThreeLine: true,
                //       ),
                //     ),
                //   ],
                // ),
                SizedBox(height: getProportionateScreenHeight(30)),
                FloatingActionButton(
                  backgroundColor: const Color(0xFFFF7643),
                  foregroundColor: Colors.white,
                  mini: false,
                  onPressed: () {
                    Navigator.pushNamed(context, ClientInfoScreen.routeName);
                  },
                  child: Icon(Icons.add),
                ),
                SizedBox(height: getProportionateScreenHeight(30)),
                Text(
                  "Copyright@Rent4U | AllRightsReserved2020",
                  textAlign: TextAlign.center,
                  style: Theme.of(context).textTheme.caption,
                ),
                Text(
                  "\n",
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
