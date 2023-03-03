// ignore_for_file: prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:food_app/UI/utilities/style.dart';

class Otp extends StatefulWidget {
  const Otp({Key? key}) : super(key: key);

  @override
  State<Otp> createState() => _OtpState();
}

class _OtpState extends State<Otp> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            children: [
              Image.asset('assets/images/otp.png'),
              SizedBox(
                height: 20,
              ),
              Text(
                'OTP VERIFICATION',
                style: text21,
              ),
              SizedBox(
                height: 30,
              ),
              Center(
                child: Text.rich(
                  TextSpan(
                      text: 'We will send you a ',
                      style: text14.copyWith(
                          color: Color.fromARGB(255, 97, 95, 95)),
                      children: [
                        TextSpan(
                          text: 'One Time Password ',
                          style: text14.copyWith(
                              fontWeight: FontWeight.w900, color: Colors.black),
                        ),
                        TextSpan(
                            text: 'to this',
                            style: text14.copyWith(
                                color: Color.fromARGB(255, 97, 95, 95))),
                      ]),
                ),
              ),
              Text('mobile number.',
                  textAlign: TextAlign.center,
                  style:
                      text14.copyWith(color: Color.fromARGB(255, 97, 95, 95))),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  label: Text('+234 902 735 8214'),
                ),
              ),
              SizedBox(
                height: 50,
              ),
              ElevatedButton(onPressed: () {}, child: Text('GET OTP', style: text21,))
            ],
          ),
        ),
      ),
    );
  }
}
