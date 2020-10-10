import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/components/secon_btn.dart';
import 'package:shop_app/screens/rentHome/rentHome_screen.dart';
import 'package:shop_app/screens/transaction/transaction_home_screen.dart';

import '../../../size_config.dart';

class MoneyTransactionForm extends StatefulWidget {
  @override
  _MoneyTransactionFormState createState() => _MoneyTransactionFormState();
}

class _MoneyTransactionFormState extends State<MoneyTransactionForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String clientAccount;
  String sum;
  String processDate;
  String payDate;
  String accountants;
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
          buildClientAccountFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildSumFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildProcessingDateFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPaymentDateFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAccountantsFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildExplanationFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          
         
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(30)),
          DefaultButton(
            text: "Save",
            press: () {
               Navigator.pushNamed(context, TransactionScreen.routeName);
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

  TextFormField buildAccountantsFormField() {
    return TextFormField(
      onSaved: (newValue) => accountants = newValue,
      decoration: InputDecoration(
        labelText: "Accountants",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/money.svg"),
      ),
    );
  }

  TextFormField buildPaymentDateFormField() {
    return TextFormField(
      onSaved: (newValue) => payDate = newValue,
      decoration: InputDecoration(
        labelText: "Payment Date",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/money.svg"),
      ),
    );
  }

  TextFormField buildProcessingDateFormField() {
    return TextFormField(
      onSaved: (newValue) => processDate = newValue,
      decoration: InputDecoration(
        labelText: "Processing Date",
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

  TextFormField buildClientAccountFormField() {
    return TextFormField(
      onSaved: (newValue) => clientAccount = newValue,
      decoration: InputDecoration(
        labelText: "Client Account",
        hintText: "",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/money.svg"),
      ),
    );
  }

  
}
