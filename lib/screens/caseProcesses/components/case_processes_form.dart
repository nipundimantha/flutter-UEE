import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/components/secon_btn.dart';
import 'package:shop_app/screens/caseProces/caseProces_screen.dart';
import 'package:shop_app/screens/rentHome/rentHome_screen.dart';

import '../../../size_config.dart';

class CaseProcessesForm extends StatefulWidget {
  @override
  _CaseProcessesFormState createState() => _CaseProcessesFormState();
}

class _CaseProcessesFormState extends State<CaseProcessesForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String accountCode;
  String date;
  String time;
  String sum;
  String explanation;
  


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
          buildAccountCodeFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildDateFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildTimeFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildSumFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildExplanationFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          
         
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Save",
            press: () {
               Navigator.pushNamed(context, CaseProcesScreen.routeName);
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
 

  TextFormField buildExplanationFormField() {
    return TextFormField(
      onSaved: (newValue) => explanation = newValue,
      decoration: InputDecoration(
        labelText: "Explanation",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/money.svg"),
      ),
    );
  }

  TextFormField buildSumFormField() {
    return TextFormField(
      onSaved: (newValue) => sum = newValue,
      decoration: InputDecoration(
        labelText: "Sum",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/money.svg"),
      ),
    );
  }

  TextFormField buildTimeFormField() {
    return TextFormField(
      onSaved: (newValue) => time = newValue,
      decoration: InputDecoration(
        labelText: "Time",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/money.svg"),
      ),
    );
  }

  TextFormField buildDateFormField() {
    return TextFormField(
      onSaved: (newValue) => date = newValue,
      decoration: InputDecoration(
        labelText: "Date",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/money.svg"),
      ),
    );
  }

  TextFormField buildAccountCodeFormField() {
    return TextFormField(
      onSaved: (newValue) => accountCode = newValue,
      decoration: InputDecoration(
        labelText: "Account Code",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/money.svg"),
      ),
    );
  }

  
}
