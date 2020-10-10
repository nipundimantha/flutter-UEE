import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/components/secon_btn.dart';
import 'package:shop_app/screens/rentHome/rentHome_screen.dart';
import 'package:shop_app/screens/settings_page/settings_screen.dart';

import '../../../size_config.dart';

class ProSettingsForm extends StatefulWidget {
  @override
  _ProSettingsFormState createState() => _ProSettingsFormState();
}

class _ProSettingsFormState extends State<ProSettingsForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String price;
  String naveCost;
  String driverCost;
  String seatCost;
  String payCost;
  


  void addError({String error}) {
    if (!errors.contains(error))
      setState(() {
        errors.add(error);
      });
  }

  void removeError({String error}) {
    if (errors.contains(error))
      setState(() {
        errors.remove(error);
      });
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _formKey,
      child: Column(
        children: [
          buildPriceFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildNavCostFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildDriverCostFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildSeatCostFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPayCostFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          
          
         
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Save",
            press: () {
               Navigator.pushNamed(context, SettingsScreen.routeName);
            },
          ),
          SizedBox(height: getProportionateScreenHeight(20)),
          SecButton(
            text: "Cancel",
            press: () {
                Navigator.pushNamed(context, RentHomeScreen.routeName);
            },
          ),
        ],
      ),
    );
  }
 

  TextFormField buildPayCostFormField() {
    return TextFormField(
      onSaved: (newValue) => payCost = newValue,
      decoration: InputDecoration(
        labelText: "Special Payment COst",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Settings.svg"),
      ),
    );
  }

  TextFormField buildSeatCostFormField() {
    return TextFormField(
      onSaved: (newValue) => seatCost = newValue,
      decoration: InputDecoration(
        labelText: "Best Seat Cost",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Settings.svg"),
      ),
    );
  }

  TextFormField buildDriverCostFormField() {
    return TextFormField(
      onSaved: (newValue) => driverCost = newValue,
      decoration: InputDecoration(
        labelText: "Additional Driver Cost",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Settings.svg"),
      ),
    );
  }

  TextFormField buildNavCostFormField() {
    return TextFormField(
      onSaved: (newValue) => naveCost = newValue,
      decoration: InputDecoration(
        labelText: "Navigation Cost",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Settings.svg"),
      ),
    );
  }

  TextFormField buildPriceFormField() {
    return TextFormField(
      onSaved: (newValue) => price = newValue,
      decoration: InputDecoration(
        labelText: "Price exceed for 1 KM",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/Settings.svg"),
      ),
    );
  }

  
  
}
