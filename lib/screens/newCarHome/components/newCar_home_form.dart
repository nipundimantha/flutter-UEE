import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';

import '../../../size_config.dart';

class NewCarHomeForm extends StatefulWidget {
  @override
  _NewCarHomeFormState createState() => _NewCarHomeFormState();
}

class _NewCarHomeFormState extends State<NewCarHomeForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String carCode;
  String brand;
  String plate;
  String carType;
  String tire;
  String km;
  String persons;
  String model;


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
          buildBrandFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPlateFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildCarTypeFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildTireFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildKmFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPersonsFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildModelFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
         
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Next",
            press: () {
            },
          ),
        ],
      ),
    );
  }
 

  TextFormField buildModelFormField() {
    return TextFormField(
      onSaved: (newValue) => model = newValue,
      decoration: InputDecoration(
        labelText: "Model",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildPersonsFormField() {
    return TextFormField(
      onSaved: (newValue) => persons = newValue,
      decoration: InputDecoration(
        labelText: "Persons",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildKmFormField() {
    return TextFormField(
      onSaved: (newValue) => km = newValue,
      decoration: InputDecoration(
        labelText: "Km",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildTireFormField() {
    return TextFormField(
      onSaved: (newValue) => tire = newValue,
      decoration: InputDecoration(
        labelText: "Tire/Up keep",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildCarTypeFormField() {
    return TextFormField(
      onSaved: (newValue) => carType = newValue,
      decoration: InputDecoration(
        labelText: "Car Type",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildPlateFormField() {
    return TextFormField(
      onSaved: (newValue) => plate = newValue,
      decoration: InputDecoration(
        labelText: "Plate",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildBrandFormField() {
    return TextFormField(
      onSaved: (newValue) => brand = newValue,
      decoration: InputDecoration(
        labelText: "Brand",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
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
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

}
