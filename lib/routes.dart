// import 'dart:js';

import 'package:flutter/widgets.dart';
import 'package:shop_app/screens/carCareHome/Carcare_home_screen.dart';
import 'package:shop_app/screens/carFines/car_fines.dart';
import 'package:shop_app/screens/carFinesHome/carFines_home_screen.dart';
import 'package:shop_app/screens/car_calander/carCalander_screen.dart';
import 'package:shop_app/screens/car_care/car_care.dart';
import 'package:shop_app/screens/cart/cart_screen.dart';
import 'package:shop_app/screens/caseProces/caseProces_screen.dart';
import 'package:shop_app/screens/caseProcesses/case_processes.dart';
import 'package:shop_app/screens/cashReg/cashReg_screen.dart';
import 'package:shop_app/screens/clientInfo/client_info_screen.dart';
import 'package:shop_app/screens/complete_profile/complete_profile_screen.dart';
import 'package:shop_app/screens/details/details_screen.dart';
import 'package:shop_app/screens/forgot_password/forgot_password_screen.dart';
import 'package:shop_app/screens/home/home_screen.dart';
import 'package:shop_app/screens/login_success/login_success_screen.dart';
import 'package:shop_app/screens/logout_success/logout_success_screen.dart';
import 'package:shop_app/screens/moneyTransaction/money_transaction.dart';
import 'package:shop_app/screens/my_car_home/mycar_home_screen.dart';
import 'package:shop_app/screens/my_cars/my_cars_screen.dart';
import 'package:shop_app/screens/nav/nav_screen.dart';
import 'package:shop_app/screens/newCar/new_car_screen1.dart';
import 'package:shop_app/screens/newCar/new_car_screen2.dart';
import 'package:shop_app/screens/newCarHome/new_car_home_screen.dart';
import 'package:shop_app/screens/newClientHome/new_clients_home_screen.dart';
import 'package:shop_app/screens/otp/otp_screen.dart';
import 'package:shop_app/screens/pro_settings/program_settings.dart';
import 'package:shop_app/screens/regUser/reg_user_screen.dart';
import 'package:shop_app/screens/register/register_screen.dart';
import 'package:shop_app/screens/rentHome/rentHome_screen.dart';
import 'package:shop_app/screens/rentalIncome/rental_income_screen.dart';
import 'package:shop_app/screens/rental_car/rentalCar_screen.dart';
import 'package:shop_app/screens/settings_page/settings_screen.dart';
import 'package:shop_app/screens/sign_in/sign_in_screen.dart';
import 'package:shop_app/screens/splash/splash_screen.dart';
import 'package:shop_app/screens/transaction/transaction_home_screen.dart';
import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here

final Map<String, WidgetBuilder> routes = {
  SplashScreen.routeName: (context) => SplashScreen(),
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  DetailsScreen.routeName: (context) => DetailsScreen(),
  CartScreen.routeName: (context) => CartScreen(),
  RegisterScreen.routeName: (context) => RegisterScreen(),
  RentHomeScreen.routeName: (context) => RentHomeScreen(),
  RegUserScreen.routeName: (context) => RegUserScreen(),
  NewCarScreen1.routeName: (context) => NewCarScreen1(),
  NewCarScreen2.routeName: (context) => NewCarScreen2(),
  MoneyTransaction.routeName: (context) => MoneyTransaction(),
  CaseProcesses.routeName: (context) => CaseProcesses(),
  CarFines.routeName: (context) => CarFines(),
  ClientInfoScreen.routeName: (context) => ClientInfoScreen(),
  ProSettings.routeName: (context) => ProSettings(),
  CarCare.routeName: (context) => CarCare(),
  SettingsScreen.routeName: (context) => SettingsScreen(),
  RentalCarScreen.routeName: (context) => RentalCarScreen(),
  NewCarHomeScreen.routeName: (context) => NewCarHomeScreen(),
  NewClientsHomeScreen.routeName: (context) => NewClientsHomeScreen(),
  CarCalanderScreen.routeName: (context) => CarCalanderScreen(),
  RentalIncomeScreen.routeName: (context) => RentalIncomeScreen(),
  TransactionScreen.routeName: (context) => TransactionScreen(),
  CashRegScreen.routeName: (context) => CashRegScreen(),
  CaseProcesScreen.routeName: (context) => CaseProcesScreen(),
  MyCarsScreen.routeName: (context) => MyCarsScreen(),
  CarFinesHomeScreen.routeName: (context) => CarFinesHomeScreen(),
  MyCarHomeScreen.routeName: (context) => MyCarHomeScreen(),
  CarCareHomeScreen.routeName: (context) => CarCareHomeScreen(),
  NavScreen.routeName: (context) => NavScreen(),
  LogoutSuccessScreen.routeName: (context) => LogoutSuccessScreen(),
};
