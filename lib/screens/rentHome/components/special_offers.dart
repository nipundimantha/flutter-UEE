import 'package:flutter/material.dart';
import 'package:shop_app/screens/car_calander/carCalander_screen.dart';
import 'package:shop_app/screens/my_cars/my_cars_screen.dart';
import 'package:shop_app/screens/newClientHome/new_clients_home_screen.dart';
import 'package:shop_app/screens/rentHome/components/search_field.dart';
import 'package:shop_app/screens/rentalIncome/rental_income_screen.dart';
import 'package:shop_app/screens/rental_car/rentalCar_screen.dart';
import 'package:shop_app/screens/settings_page/settings_screen.dart';

import '../../../size_config.dart';
import 'section_title.dart';

class SpecialOffers extends StatelessWidget {
  const SpecialOffers({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding:
              EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
          child: SectionTitle(
            title: "Special for you",
            press: () {},
          ),
        ),
        SizedBox(height: getProportionateScreenWidth(20)),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              SpecialOfferCard(
                image: "assets/images/6.jpg",
                category: "Car Rent",
                press: () {
                  Navigator.pushNamed(context, RentalCarScreen.routeName);
                },
              ),
              SpecialOfferCard(
                image: "assets/images/3.jpg",
                category: "Car Calendar",
                press: () {
                  Navigator.pushNamed(context, CarCalanderScreen.routeName);
                  // Navigator.pushNamed(context,HomeScreen.routeName);
                },
              ),
              SpecialOfferCard(
                image: "assets/images/4.jpg",
                category: "Clients",
                press: () {
                  Navigator.pushNamed(context, NewClientsHomeScreen.routeName);
                },
              ),
              SpecialOfferCard(
                image: "assets/images/1.jpg",
                category: "Transactions",
                press: () {
                  Navigator.pushNamed(context, RentalIncomeScreen.routeName);
                },
              ),
              SpecialOfferCard(
                image: "assets/images/5.jpg",
                category: "My Cars",
                press: () {
                  Navigator.pushNamed(context, MyCarsScreen.routeName);
                },
              ),
              SpecialOfferCard(
                image: "assets/images/2.jpg",
                category: "Settings",
                press: () {
                  Navigator.pushNamed(context, SettingsScreen.routeName);
                },
              ),
              SizedBox(width: getProportionateScreenWidth(20)),
            ],
          ),
        ),
      ],
    );
  }
}

class SpecialOfferCard extends StatelessWidget {
  const SpecialOfferCard({
    Key key,
    @required this.category,
    @required this.image,
    @required this.press,
  }) : super(key: key);

  final String category, image;
  final GestureTapCallback press;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.only(left: getProportionateScreenWidth(20)),
      child: GestureDetector(
        onTap: press,
        child: SizedBox(
          width: getProportionateScreenWidth(242),
          height: getProportionateScreenWidth(300),
          child: ClipRRect(
            borderRadius: BorderRadius.circular(20),
            child: Stack(
              children: [
                Image.asset(
                  image,
                  fit: BoxFit.cover,
                ),
                Container(
                  decoration: BoxDecoration(
                    gradient: LinearGradient(
                      begin: Alignment.topCenter,
                      end: Alignment.bottomCenter,
                      colors: [
                        Color(0xFF343434).withOpacity(0.7),
                        Color(0xFF343434).withOpacity(0.15),
                      ],
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(
                    horizontal: getProportionateScreenWidth(15.0),
                    vertical: getProportionateScreenWidth(10),
                  ),
                  child: Text.rich(
                    TextSpan(
                      style: TextStyle(color: Colors.white),
                      children: [
                        TextSpan(
                          text: "$category\n",
                          style: TextStyle(
                            fontSize: getProportionateScreenWidth(30),
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
