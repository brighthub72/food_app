// ignore_for_file: prefer_const_literals_to_create_immutables

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app/UI/home.dart';

class Unbudding3 extends StatefulWidget {

  const Unbudding3({ Key? key }) : super(key: key);

  @override
  State<Unbudding3> createState() => _Unbudding3State();
}

class _Unbudding3State extends State<Unbudding3> {
  
 

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Colors.white,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/coolicon.png'),
            SizedBox(height: 30,),
            Text(
              'Your order has been placed, check your\nprofile to track your order.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17.5,
                color: Color.fromARGB(255, 114, 111, 111),
                fontWeight: FontWeight.w800
              ),
            )
          ],
        ),
      ),
    );
  }
}
  // @override
  // void initState() async {
  //   // TODO: implement initState
  //   super.initState();
  //   await Future.delayed(Duration(seconds: 5));
  //   Navigator.of(context).pushReplacement(
  //     MaterialPageRoute(builder: (BuildContext context) => Home()),
  //   );
  // }