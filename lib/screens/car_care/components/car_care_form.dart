import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/components/secon_btn.dart';
import 'package:shop_app/screens/carCareHome/Carcare_home_screen.dart';
import 'package:shop_app/screens/rentHome/rentHome_screen.dart';

import '../../../size_config.dart';

class CarCareForm extends StatefulWidget {
  @override
  _CarCareFormState createState() => _CarCareFormState();
}

class _CarCareFormState extends State<CarCareForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String carCode;
  String careDate;
  String notes;
  String situation;
  
  


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
          buildCarCodeFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildCareDateFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildNotesFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildSituationFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          
          
         
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Save",
            press: () {
               Navigator.pushNamed(context, CarCareHomeScreen.routeName);
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
 

  TextFormField buildSituationFormField() {
    return TextFormField(
      onSaved: (newValue) => situation = newValue,
      decoration: InputDecoration(
        labelText: "Situation",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/car.svg"),
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

  TextFormField buildCareDateFormField() {
    return TextFormField(
      onSaved: (newValue) => careDate = newValue,
      decoration: InputDecoration(
        labelText: "Care Date",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/car.svg"),
      ),
    );
  }

  TextFormField buildCarCodeFormField() {
    return TextFormField(
      onSaved: (newValue) => carCode = newValue,
      decoration: InputDecoration(
        labelText: "Car COde",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/car.svg"),
      ),
    );
  }

  

  
}
