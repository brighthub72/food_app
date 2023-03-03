// ignore_for_file: prefer_const_constructors

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:food_app/UI/auth/psdrest.dart';
import 'package:food_app/UI/auth/register.dart';
import 'package:food_app/UI/dashboard.dart';
import 'package:food_app/UI/delicacies/Veg.dart';
import 'package:food_app/UI/grid.dart';
import 'package:food_app/UI/home.dart';
import 'package:food_app/UI/utilities/products.dart';
import 'package:food_app/UI/utilities/style.dart';
import 'package:food_app/vm/auth_vm.dart';
import 'package:get/get.dart';
import 'package:provider/provider.dart';

class Login extends StatefulWidget {
  const Login({Key? key}) : super(key: key);

  @override
  State<Login> createState() => _LoginState();
}

class _LoginState extends State<Login> {
  final formKey = GlobalKey<FormState>();
  bool obscure = true;
  toggleObscure() {
    setState(() {
      obscure = !obscure;
    });
  }

  // AuthVm avm = AuthVm();

  @override
  Widget build(BuildContext context) {
    final avm = Provider.of<AuthVm>(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20.0),
          child: Form(
            key: formKey,
            child: Column(
              children: [
                Image.asset('assets/images/happy.png'),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Welcome back ${avm.name}!',
                  style: text32,
                ),
                Text(
                  'Login to your existant account',
                  style: text17,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == '') {
                      return 'please enter username';
                    }
                  },
                  controller: avm.username,
                  decoration: InputDecoration(label: Text('Username')),
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  validator: (value) {
                    if (value == '') {
                      return 'please enter password';
                    }
                  },
                  controller: avm.password,
                  obscureText: obscure,
                  decoration: InputDecoration(
                    label: Text('Password'),
                    suffixIcon: GestureDetector(
                      child: obscure == true
                          ? Icon(Icons.visibility_off)
                          : Icon(Icons.visibility),
                      onTap: (() => toggleObscure()),
                    ),
                  ),
                ),
                SizedBox(
                  height: 10,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.end,
                  children: [
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Psdrest()),
                        );
                      }),
                      child: Text(
                        '  Forgot Password?',
                        style: text14.copyWith(color: Colors.orange),
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 20),
                ElevatedButton(
                  child: avm.loading?
                  CircularProgressIndicator.adaptive(
                    backgroundColor: Colors.white
                  ):
                  const Text('LOGIN'),
                  onPressed: () {
                    if (!formKey.currentState!.validate()) {
                      return;
                    }

                    avm.login(context);
                    // Navigator.push(
                    //   context,
                    //   MaterialPageRoute(builder: (context) => Home()),
                    // );
                  },
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Or connect using',
                  style: text14,
                ),
                SizedBox(height: 20),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    ElevatedButton.icon(
                      onPressed: () {
                        Get.to(Products());
                      },
                      icon: Icon(Icons.whatsapp),
                      label: Text('Whatsapp'),
                    ),
                    ElevatedButton.icon(
                      onPressed: () {
                        Get.to(() => Products());
                      },
                      icon: Icon(Icons.facebook),
                      label: Text('Facebook'),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text("Don't have an account?"),
                    GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context,
                          MaterialPageRoute(builder: (context) => Register()),
                        );
                      }),
                      child: Text(
                        '  Sign Up',
                        style: text14.copyWith(color: Colors.orange),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
