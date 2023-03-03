// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app/UI/unbudding1.dart';

class Splash extends StatefulWidget {
  const Splash({Key? key}) : super(key: key);

  @override
  State<Splash> createState() => _SplashState();
}

class _SplashState extends State<Splash> {

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    Timer(
      Duration(seconds: 5),
      (() => Navigator.of(context).pushReplacement(
            MaterialPageRoute(builder: (BuildContext context) => Unbudding1()),
          )),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/logo.png'),
            SizedBox(height: 20),
            Text(
              'Welcome to Bhook',
              style: TextStyle(
                fontSize: 32.18,
                color: Colors.white,
                fontWeight: FontWeight.w800,)
            ),
            SizedBox(height: 20),
            Text(
              'Eat. Drink. Love.',
              style: TextStyle(
                  fontSize: 17.5,
                  color: Colors.white,
                  fontWeight: FontWeight.w400)
            ),
          ],
        ),
      ),
    );
  }
}
