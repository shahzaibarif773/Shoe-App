import 'package:api_practise1/Screens/Details.dart';
import 'package:api_practise1/Screens/Home.dart';
import 'package:flutter/material.dart';

import '../Screens/Login.dart';
import '../Screens/SignUp.dart';

class Routes{
  static final Map<String, WidgetBuilder> routes ={
  '/Login' : (ctx) => const Login(),
  '/SignUp' : (ctx) => const Signup(),
  '/Home' : (ctx) => const Home(),
  '/Details' : (ctx) => const Details(),
  };
}