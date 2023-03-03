// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/UI/auth/login.dart';
import 'package:food_app/UI/unbudding2.dart';
import 'package:food_app/UI/utilities/style.dart';


/*
class Unbudding1 extends StatefulWidget {

  const Unbudding1({ Key? key }) : super(key: key);

  @override
  State<Unbudding1> createState() => _Unbudding1State();
}

class _Unbudding1State extends State<Unbudding1> {

*/

class Unbudding1 extends StatelessWidget {

  const Unbudding1({ Key? key }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/ub1.png'),
            SizedBox(height: 20),
            Text(
              'Welcome to Bhook',
              style: TextStyle(
                fontSize: 32.18,
                color: Color.fromARGB(255, 90, 87, 87),
                fontWeight: FontWeight.w800,)
            ),
            SizedBox(height: 20),
            Text('food delivery app that helps you to\nget the best dishes quickly and in\ntime from your nearest restaurant. ',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17.5,
                color: Color.fromARGB(255, 117, 115, 115),
                fontWeight: FontWeight.w400,
              ),
            ),
            SizedBox(height: 60),
            
            Container(
              margin: EdgeInsets.only(bottom: 100.0)
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50.0,),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.end,
                // ignore: prefer_const_literals_to_create_immutables
                children: [
                  GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Login()),);
                      }),
                      child: Text('Skip',
                      style: text14.copyWith(color: Colors.orange),),
                  ),

                  GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Unbudding2()),);
                      }),
                      child: Text('Next',
                      style: text14.copyWith(color: Colors.orange),),
                  ),

                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}