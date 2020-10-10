import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/components/secon_btn.dart';
import 'package:shop_app/screens/rentHome/rentHome_screen.dart';

import '../../../size_config.dart';

class NewCarForm2 extends StatefulWidget {
  @override
  _NewCarForm2State createState() => _NewCarForm2State();
}

class _NewCarForm2State extends State<NewCarForm2> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String rentPerDay;
  String rentCost;
  String rentForDays;
  String boot;
  String consumption;

  String description;
  String notes;


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
          buildRentPerDayFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildRentCostFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildRentForDaysFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildBootFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildConsumptionFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildDescriptionFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildNotesFormField(),
          SizedBox(height: getProportionateScreenHeight(50)),
          
         
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Save",
            press: () {
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
 

  TextFormField buildNotesFormField() {
    return TextFormField(
      onSaved: (newValue) => notes = newValue,
      decoration: InputDecoration(
        labelText: "Notes",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/car.svg"),
      ),
    );
  }

  TextFormField buildDescriptionFormField() {
    return TextFormField(
      onSaved: (newValue) => description = newValue,
      decoration: InputDecoration(
        labelText: "Description",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/car.svg"),
      ),
    );
  }

  TextFormField buildConsumptionFormField() {
    return TextFormField(
      onSaved: (newValue) => consumption = newValue,
      decoration: InputDecoration(
        labelText: "Consumption",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/car.svg"),
      ),
    );
  }

  TextFormField buildBootFormField() {
    return TextFormField(
      onSaved: (newValue) => boot = newValue,
      decoration: InputDecoration(
        labelText: "Boot",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/car.svg"),
      ),
    );
  }

  TextFormField buildRentForDaysFormField() {
    return TextFormField(
      onSaved: (newValue) => rentForDays = newValue,
      decoration: InputDecoration(
        labelText: "Rent for Days",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/car.svg"),
      ),
    );
  }

  TextFormField buildRentCostFormField() {
    return TextFormField(
      onSaved: (newValue) => rentCost = newValue,
      decoration: InputDecoration(
        labelText: "Rent Cost",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/car.svg"),
      ),
    );
  }

  TextFormField buildRentPerDayFormField() {
    return TextFormField(
      onSaved: (newValue) => rentPerDay = newValue,
      decoration: InputDecoration(
        labelText: "Rent per Day",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/car.svg"),
      ),
    );
  }

  

}
