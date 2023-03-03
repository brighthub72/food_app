// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/UI/auth/login.dart';
import 'package:food_app/UI/auth/otp.dart';
import 'package:food_app/UI/auth/psdrest.dart';
import 'package:food_app/UI/auth/register.dart';
import 'package:food_app/UI/dashboard.dart';
import 'package:food_app/UI/delicacies/veg.dart';
import 'package:food_app/UI/grid.dart';
import 'package:food_app/UI/home.dart';
import 'package:food_app/UI/makeorders.dart';
import 'package:food_app/UI/payments/osum.dart';
import 'package:food_app/UI/payments/pay.dart';
import 'package:food_app/UI/payments/pay2.dart';
import 'package:food_app/UI/splash.dart';
import 'package:food_app/UI/unbudding1.dart';
import 'package:food_app/UI/unbudding2.dart';
import 'package:food_app/UI/unbudding3.dart';
import 'package:food_app/vm/auth_vm.dart';
import 'package:food_app/vm/products_vm.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

void main() {
  runApp( MultiProvider(
    providers: [
      ChangeNotifierProvider(create: (_) => AuthVm()),
      ChangeNotifierProvider(create: (_) => ProductsVm()),
    ],
    child: MyApp()));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        // This is the theme of your application.
        //
        // Try running your application with "flutter run". You'll see the
        // application has a blue toolbar. Then, without quitting the app, try
        // changing the primarySwatch below to Colors.green and then invoke
        // "hot reload" (press "r" in the console where you ran "flutter run",
        // or simply save your changes to "hot reload" in a Flutter IDE).
        // Notice that the counter didn't reset back to zero; the application
        // is not restarted.
        primarySwatch: Colors.deepOrange,
        inputDecorationTheme: InputDecorationTheme(
          border: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white, style: BorderStyle.none),
            borderRadius: BorderRadius.circular(10),
          ),
          focusedBorder: OutlineInputBorder(
            borderSide: BorderSide(color: Colors.white),
            borderRadius: BorderRadius.circular(10),
          ),
          //disabledBorder: InputBorder(borderSide: BorderSide.none),
        ),
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ElevatedButton.styleFrom(
            padding: EdgeInsets.symmetric(
              horizontal: 30,
              vertical: 15,
            ),
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(10),
            ),
          ),
        ),
      ),
      home: Login(),
    );
  }
}
