import 'package:flutter/material.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/logout_success/logout_success_screen.dart';
import 'package:shop_app/screens/nav/nav_screen.dart';

import '../../../size_config.dart';
import 'icon_btn_with_counter.dart';

class HomeHeader extends StatelessWidget {
  const HomeHeader({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:
          EdgeInsets.symmetric(horizontal: getProportionateScreenWidth(20)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconBtnWithCounter(
            svgSrc: "assets/icons/menu.svg",
            press: () => Navigator.pushNamed(context, NavScreen.routeName),
            // press: () {},
          ),
          Text(
            'RENT4U',
            style: TextStyle(fontSize: 40, color: Colors.deepOrange),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/notification-bell.svg",
            press: () => Navigator.pushNamed(context, CartScreen.routeName),
          ),
          IconBtnWithCounter(
            svgSrc: "assets/icons/logout.svg",
            press: () =>
                Navigator.pushNamed(context, LogoutSuccessScreen.routeName),
          ),
        ],
      ),
    );
  }
}
