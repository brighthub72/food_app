// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/UI/utilities/style.dart';

class Psdrest extends StatefulWidget {
  const Psdrest({Key? key}) : super(key: key);

  @override
  State<Psdrest> createState() => _PsdrestState();
}

class _PsdrestState extends State<Psdrest> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            children: [
              Center(child: Image.asset('assets/images/psdrest.png')),
              SizedBox(
                height: 20,
              ),
              Center(
                child: Text(
                  'CREATE NEW PASSWORD',
                  style: text21,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                'Your new password must be different from\nprevious used password',
                textAlign: TextAlign.center,
                style: text14,
              ),
              SizedBox(
                height: 20,
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('New Password'),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Confirm Password'),
                  suffixIcon: Icon(Icons.visibility_off),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(
                child: const Text(
                  'RESET PASSWORD',
                  style: TextStyle(
                    fontSize: 21.88,
                    fontWeight: FontWeight.w700
                  ),
                ),
                onPressed: () {},
              ),
            ],
          ),
        ),
      ),
    );
  }
}
