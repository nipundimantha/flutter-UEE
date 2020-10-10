import 'package:flutter/material.dart';
import 'package:shop_app/components/custom_surfix_icon.dart';
import 'package:shop_app/components/default_button.dart';
import 'package:shop_app/components/form_error.dart';
import 'package:shop_app/components/secon_btn.dart';
import 'package:shop_app/screens/newClientHome/new_clients_home_screen.dart';
import 'package:shop_app/screens/rentHome/rentHome_screen.dart';

import '../../../size_config.dart';

class ClientInfoForm extends StatefulWidget {
  @override
  _ClientInfoFormState createState() => _ClientInfoFormState();
}

class _ClientInfoFormState extends State<ClientInfoForm> {
  final _formKey = GlobalKey<FormState>();
  final List<String> errors = [];
  String userName;
  String clientCode;
  String idNo;
  String phone;
  String email;
  String address;
  String driverLic;


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
          buildUserNameFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildClientCodeFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildIdNoFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildPhoneFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildEmailFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildAddressFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          buildDriverLicFormField(),
          SizedBox(height: getProportionateScreenHeight(30)),
          FormError(errors: errors),
          SizedBox(height: getProportionateScreenHeight(40)),
          DefaultButton(
            text: "Save",
            press: () {
                Navigator.pushNamed(context, NewClientsHomeScreen.routeName);
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

  

  

  TextFormField buildDriverLicFormField() {
    return TextFormField(
      onSaved: (newValue) => driverLic = newValue,
      decoration: InputDecoration(
        labelText: "Driver License",
        hintText: "Enter your driver license",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildAddressFormField() {
    return TextFormField(
      onSaved: (newValue) => address = newValue,
      decoration: InputDecoration(
        labelText: "Address",
        hintText: "Enter your address",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildEmailFormField() {
    return TextFormField(
      onSaved: (newValue) => email = newValue,
      decoration: InputDecoration(
        labelText: "Email",
        hintText: "Enter your email",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildPhoneFormField() {
    return TextFormField(
      onSaved: (newValue) => phone = newValue,
      decoration: InputDecoration(
        labelText: "Phone",
        hintText: "Enter your phone number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildIdNoFormField() {
    return TextFormField(
      onSaved: (newValue) => idNo = newValue,
      decoration: InputDecoration(
        labelText: "Id Number",
        hintText: "Enter your ID number",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildClientCodeFormField() {
    return TextFormField(
      onSaved: (newValue) => clientCode = newValue,
      decoration: InputDecoration(
        labelText: "Client Code",
        hintText: "Enter your client code",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  TextFormField buildUserNameFormField() {
    return TextFormField(
      onSaved: (newValue) => userName = newValue,
      decoration: InputDecoration(
        labelText: "User Name",
        hintText: "Enter your name",
        floatingLabelBehavior: FloatingLabelBehavior.always,
        suffixIcon: CustomSurffixIcon(svgIcon: "assets/icons/User.svg"),
      ),
    );
  }

  
}
