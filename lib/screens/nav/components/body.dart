import 'package:flutter/material.dart';
import 'package:shop_app/components/greayDefault_Button.dart';
import 'package:shop_app/components/navDefaultBtn.dart';
import 'package:shop_app/components/underConstruction.dart';
import 'package:shop_app/screens/carFinesHome/carFines_home_screen.dart';
import 'package:shop_app/screens/car_calander/carCalander_screen.dart';
import 'package:shop_app/screens/carsHome/new_clients_home_screen.dart';
import 'package:shop_app/screens/clientInfo/client_info_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/rentHome/rentHome_screen.dart';
import 'package:shop_app/screens/rental_car/rentalCar_screen.dart';
import 'package:shop_app/screens/settings_page/settings_screen.dart';
import 'package:shop_app/screens/transaction/transaction_home_screen.dart';
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
                Card(
                  elevation: 6,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: new BorderSide(color: Colors.deepOrange, width: 2.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                      ),
                      ListTile(
                        leading: new Image.asset(
                          "assets/images/car-rental.png",
                        ),
                        title: const Text(
                          'Car Rent',
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.normal),
                        ),
                        subtitle: Text(
                          'Getting your car and free offers',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                      ),
                      NavDefaultButton(
                        text: "GO",
                        press: () {
                          Navigator.pushNamed(
                              context, RentalCarScreen.routeName);
                          // }
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 6,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: new BorderSide(color: Colors.blueGrey, width: 2.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                      ),
                      ListTile(
                        leading: new Image.asset(
                          "assets/images/cal.png",
                          scale: 1,
                        ),
                        title: const Text(
                          'Car Calendar',
                          style: TextStyle(
                              fontSize: 22.0, fontWeight: FontWeight.normal),
                        ),
                        subtitle: Text(
                          'Booking Fast & Trust',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                      ),
                      GreyDefaultButton(
                        text: "GO",
                        press: () {
                          Navigator.pushNamed(
                              context, CarCalanderScreen.routeName);
                          // }
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 6,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: new BorderSide(color: Colors.deepOrange, width: 2.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                      ),
                      ListTile(
                        leading: new Image.asset(
                          "assets/images/client.png",
                          scale: 1,
                        ),
                        title: const Text(
                          'Clients',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.normal),
                        ),
                        subtitle: Text(
                          'View All Clients for Knowing',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                      ),
                      NavDefaultButton(
                        text: "GO",
                        press: () {
                          Navigator.pushNamed(
                              context, NewClientsHomeScreen.routeName);
                          // }
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 6,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: new BorderSide(color: Colors.blueGrey, width: 2.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                      ),
                      ListTile(
                        leading: new Image.asset(
                          "assets/images/transaction.png",
                          scale: 1,
                        ),
                        title: const Text(
                          'Transactions',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.normal),
                        ),
                        subtitle: Text(
                          'Exchange your Transaction with us',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                      ),
                      GreyDefaultButton(
                        text: "GO",
                        press: () {
                          Navigator.pushNamed(
                              context, TransactionScreen.routeName);
                          // }
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 6,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: new BorderSide(color: Colors.deepOrange, width: 2.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                      ),
                      ListTile(
                        leading: new Image.asset(
                          "assets/images/setting.png",
                          scale: 1,
                        ),
                        title: const Text(
                          'Settings',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.normal),
                        ),
                        subtitle: Text(
                          'Setup with your own vision',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                      ),
                      NavDefaultButton(
                        text: "GO",
                        press: () {
                          Navigator.pushNamed(
                              context, SettingsScreen.routeName);
                          // }
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                      ),
                    ],
                  ),
                ),
                Card(
                  elevation: 6,
                  margin: EdgeInsets.fromLTRB(0.0, 0.0, 0.0, 16.0),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                    side: new BorderSide(color: Colors.blueGrey, width: 2.0),
                  ),
                  clipBehavior: Clip.antiAlias,
                  color: Colors.white,
                  child: Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                      ),
                      ListTile(
                        leading: new Image.asset(
                          "assets/images/profile.png",
                          scale: 1,
                        ),
                        title: const Text(
                          'Profile',
                          style: TextStyle(
                              fontSize: 25.0, fontWeight: FontWeight.normal),
                        ),
                        subtitle: Text(
                          'Keep your Profile Secure',
                          style: TextStyle(
                              color: Colors.black.withOpacity(0.6),
                              fontSize: 18.0,
                              fontWeight: FontWeight.normal),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.all(2.0),
                      ),
                      GreyDefaultButton(
                        text: "GO",
                        press: () {
                          Navigator.pushNamed(
                              context, SettingsScreen.routeName);
                          // }
                        },
                      ),
                      Padding(
                        padding: const EdgeInsets.all(5.0),
                      ),
                    ],
                  ),
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
