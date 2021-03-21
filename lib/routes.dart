import 'package:flutter/widgets.dart';
import 'package:firebase/screens/complete_profile/complete_profile_screen.dart';
import 'package:firebase/screens/forgot_password/forgot_password_screen.dart';
import 'package:firebase/screens/home/home_screen.dart';
import 'package:firebase/screens/login_success/login_success_screen.dart';
import 'package:firebase/screens/otp/otp_screen.dart';
import 'package:firebase/screens/profile/profile_screen.dart';
import 'package:firebase/screens/sign_in/sing_in_screen.dart';

import 'screens/sign_up/sign_up_screen.dart';

// We use name route
// All our routes will be available here
final Map<String, WidgetBuilder> routes = {
  SignInScreen.routeName: (context) => SignInScreen(),
  ForgotPasswordScreen.routeName: (context) => ForgotPasswordScreen(),
  LoginSuccessScreen.routeName: (context) => LoginSuccessScreen(),
  SignUpScreen.routeName: (context) => SignUpScreen(),
  CompleteProfileScreen.routeName: (context) => CompleteProfileScreen(),
  OtpScreen.routeName: (context) => OtpScreen(),
  HomeScreen.routeName: (context) => HomeScreen(),
  ProfileScreen.routeName: (context) => ProfileScreen(),
};