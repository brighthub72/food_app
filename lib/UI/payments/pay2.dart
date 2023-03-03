import 'package:flutter/material.dart';
import 'package:food_app/UI/payments/Osum.dart';
import 'package:food_app/UI/payments/pay.dart';
import 'package:food_app/UI/unbudding3.dart';
import 'package:food_app/UI/utilities/style.dart';

class Pay2 extends StatefulWidget {
  const Pay2({Key? key}) : super(key: key);

  @override
  State<Pay2> createState() => _Pay2State();
}

class _Pay2State extends State<Pay2> {
  List dots = [
    {'option': 'UPI', 'ico': Icons.golf_course},
    {'option': 'Wallets', 'ico': null},
    {'option': 'Credit / Debit / ATM Card', 'ico': null},
    {'option': 'Net Banking', 'ico': Icons.paypal},
    {'option': 'Cash on Delivery ( COD )', 'ico': null}
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Payment',
          style: TextStyle(
              fontSize: 21.5, fontWeight: FontWeight.w800, color: Colors.black),
        ),
        leading: Builder(
          builder: (BuildContext context) {
            return IconButton(
              icon: const Icon(Icons.arrow_back),
              onPressed: () {},
              color: Colors.black,
            );
          },
        ),
        backgroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Card(
              elevation: 10,
              child: Container(
                height: 135,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 20, horizontal: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      children: [
                        GestureDetector(
                          child: CircleAvatar(
                            maxRadius: 30,
                            backgroundColor: Color.fromARGB(255, 5, 41, 71),
                            child: Icon(
                              Icons.location_on,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Pay()),);
                          },
                        ),
                        SizedBox(
                          height: 15,
                        ),
                        Text(
                          'Address',
                          style: text14,
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.red,
                      thickness: 10,
                      height: 10,
                    ),
                    Column(
                      children: [
                        GestureDetector(
                          child: CircleAvatar(
                            maxRadius: 30,
                            backgroundColor: Color.fromARGB(255, 5, 41, 71),
                            child: Icon(
                              Icons.file_copy,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Osum()),);
                          },
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Order summary',
                          style: text14,
                        )
                      ],
                    ),
                    Divider(
                      color: Colors.blueGrey,
                    ),
                    Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 30,
                          child: Icon(
                            Icons.payment,
                            size: 35,
                          ),
                        ),
                        SizedBox(height: 15),
                        Text(
                          'Payment',
                          style: text14,
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 70,
            ),
            Card(
              elevation: 10,
              child: Container(
                height: 300,
                width: double.infinity,
                padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
                child: (Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'All other options',
                        style: text17,
                      ),
                      SizedBox(height: 20),
                      ListView.separated(
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        separatorBuilder: (context, index) {
                          return Divider(
                            color: Colors.black,
                            thickness: 1,
                          );
                        },
                        itemCount: dots.length,
                        itemBuilder: (context, index) {
                          final texts = dots[index];

                          return Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Icon(Icons.radio_button_off),
                              SizedBox(
                                width: 10,
                              ),
                              Text(
                                "${texts['option']}",
                                style: text21.copyWith(
                                    fontWeight: FontWeight.w400),
                              ),
                              SizedBox(
                                width: 60,
                              ),
                              if (texts['ico'] != null) Icon(
                                      texts['ico'],
                                    ) else SizedBox(),
                            ],
                          );
                        },
                      ),
                    ])),
              ),
            ),

            SizedBox(
              height: 80,
            ),
            Card(
              elevation: 10,
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '₹200',
                      style: text27.copyWith(color: Colors.orange),
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Unbudding3()),);
                      },
                      child: Text(
                        'CONTINUE',
                        style: text14,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 10,
            )
            // Container(
            //   height: 500,
            //   width: double.infinity,
            //   child: ListView.separated(
            //     itemCount: dots.length,
            //     itemBuilder: (context, index) {
            //       final texts = dots[index];

            //       return Card(
            //         child: Padding(
            //           child: Row(
            //             mainAxisAlignment: MainAxisAlignment.start,
            //             children: [
            //               Icon(Icons.circle_outlined),
            //               Text('${texts[index]}')
            //             ],
            //           ),
            //           padding: EdgeInsets.all(20)),
            //       );
            //     },
            //     separatorBuilder: (context, index) {
            //       return Divider(
            //         color: Colors.black,
            //         thickness: 1,
            //       );
            //     },
            //     ),
            // )
          ],
        ),
      ),
    );
  }
}
