

import 'package:flutter/material.dart';
import 'package:food_app/UI/auth/login.dart';
import 'package:food_app/UI/unbudding1.dart';
import 'package:food_app/UI/utilities/style.dart';


class Unbudding2 extends StatelessWidget {

  const Unbudding2({ Key? key }) : super(key: key);

  
  

  /*
  class Unbudding2 extends StatefulWidget {

    const Unbudding2({ Key? key }) : super(key: key);

    @override
    State<Unbudding2> createState() => _Unbudding2State();
  }

  class _Unbudding2State extends State<Unbudding2> {
  */
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        width: double.infinity,
        color: Theme.of(context).primaryColor,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset('assets/images/ub2.png'),
            SizedBox(height: 20),
            Text(
              'Enjoy fast delivery',
              style: TextStyle(
                fontSize: 32.18,
                color: Colors.white,
                fontWeight: FontWeight.w800,)
            ),
            SizedBox(height: 20),
            Text('We offer 45 minutes delivery\ngurantee or the food will be\ndelivered for free.',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 17.5,
                color: Colors.white,
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
                            builder: (context) => Unbudding1()),);
                      }),
                      child: Text('Previous',
                      style: text14.copyWith(color: Colors.white),),
                  ),

                  GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Login()),);
                      }),
                      child: Text('Skip',
                      style: text14.copyWith(color: Colors.white),),
                  ),

                  GestureDetector(
                      onTap: (() {
                        Navigator.push(
                          context, 
                          MaterialPageRoute(
                            builder: (context) => Login()),);
                      }),
                      child: Text('Next',
                      style: text14.copyWith(color: Colors.white),),
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