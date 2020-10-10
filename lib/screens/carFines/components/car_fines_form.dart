import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/components/secon_btn.dart';
import 'package:shop_app/screens/carFinesHome/carFines_home_screen.dart';
import 'package:shop_app/screens/rentHome/rentHome_screen.dart';

import '../../../size_config.dart';

class CarFinesForm extends StatefulWidget {
  @override
  _CarFinesFormState createState() => _CarFinesFormState();
}

class _CarFinesFormState extends State<CarFinesForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String fineDate;
  String carCode;
  String clientAccount;
  String fineAmount;
  String notes;
  String paymentType;
  String collection;

  


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
          buildFineDateFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildCarCodeFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildClientAccountFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildFineAmountFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildNotesFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPaymentTypeFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildCollectionFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          
         
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Save",
            press: () {
              Navigator.pushNamed(context, CarFinesHomeScreen.routeName);
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
 

  TextFormField buildCollectionFormField() {
    return TextFormField(
      onSaved: (newValue) => collection = newValue,
      decoration: InputDecoration(
        labelText: "Collection",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/car.svg"),
      ),
    );
  }

  TextFormField buildPaymentTypeFormField() {
    return TextFormField(
      onSaved: (newValue) => paymentType = newValue,
      decoration: InputDecoration(
        labelText: "Payment Type",
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

  TextFormField buildFineAmountFormField() {
    return TextFormField(
      onSaved: (newValue) => fineAmount = newValue,
      decoration: InputDecoration(
        labelText: "Fine Amount",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/car.svg"),
      ),
    );
  }

  TextFormField buildClientAccountFormField() {
    return TextFormField(
      onSaved: (newValue) => clientAccount = newValue,
      decoration: InputDecoration(
        labelText: "Client Account",
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
        labelText: "Car Code",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/car.svg"),
      ),
    );
  }

  TextFormField buildFineDateFormField() {
    return TextFormField(
      onSaved: (newValue) => fineDate = newValue,
      decoration: InputDecoration(
        labelText: "Fine Date",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/car.svg"),
      ),
    );
  }

  
}
