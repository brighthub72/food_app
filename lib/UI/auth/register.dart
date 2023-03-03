// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/UI/auth/login.dart';
import 'package:food_app/UI/splash.dart';
import 'package:food_app/UI/utilities/style.dart';

class Register extends StatefulWidget {
  const Register({Key? key}) : super(key: key);

  @override
  State<Register> createState() => _RegisterState();
}

class _RegisterState extends State<Register> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(backgroundColor: Colors.white,
      elevation: 0,),

      body: SingleChildScrollView(

        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(

            children: [

              Center(
                child: Text("Let's get started",
                style: text32,),
              ),

              Center(
                child: Text('Create a new account',
                style: text17,),
              ),

              SizedBox(height: 30),

              TextFormField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10),
                  ),
                  focusedBorder: OutlineInputBorder(
                    borderSide: BorderSide(color: Colors.black),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  label: Text('Name')),
              ),

              SizedBox(height: 20,),

              TextFormField(
                decoration: InputDecoration(
                  label: Text('Email'),
                ),
              ),

              SizedBox(height: 20),
              
              TextFormField(
                decoration: InputDecoration(
                  label: Text('Phone no')
                ),
              ),

              SizedBox(height: 20),

              TextFormField(
                decoration: InputDecoration(
                  label: Text('Password')
                ),
              ),

              SizedBox(height: 20),

              TextFormField(
                decoration: InputDecoration(
                  label: Text('Confirm Password')
                ),
              ),

              SizedBox(height: 20),

              ElevatedButton(
                child: const Text('CREATE'),
                onPressed: () {
                  Navigator.push(
                    context, MaterialPageRoute(builder: (context) => Splash()),);
                },
              ),

              SizedBox(height: 10,),

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text('Already have an account?'),
                  GestureDetector(
                    onTap: (() {
                      Navigator.push(
                        context, 
                        MaterialPageRoute(
                          builder: (context) => Login()),);
                    }),
                    child: Text('  Login',

                    style:  text14.copyWith(color: Colors.orange)),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
