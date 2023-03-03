// ignore_for_file: avoid_unnecessary_containers, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/UI/auth/login.dart';
import 'package:food_app/UI/utilities/style.dart';

class Makeorders extends StatefulWidget {
  const Makeorders({Key? key}) : super(key: key);

  @override
  State<Makeorders> createState() => _MakeordersState();
}

class _MakeordersState extends State<Makeorders> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/makeorders.png'),
            SizedBox(
              height: 20,
            ),
            Text(
              'Order best dishes',
              style: text32,
            ),
            SizedBox(
              height: 20,
            ),
            Text(
              'Your order will be immediately\ncollected and sent by our courier',
              style: text17,
              textAlign: TextAlign.center,
            ),
            SizedBox(
              height: 60,
            ),
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context, MaterialPageRoute(builder: (context) => Login()),);
              },
              child: Text(
                'CONTINUE',
                style: text21,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
