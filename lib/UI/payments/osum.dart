import 'package:flutter/material.dart';
import 'package:food_app/UI/payments/pay.dart';
import 'package:food_app/UI/payments/pay2.dart';
import 'package:food_app/UI/utilities/style.dart';

class Osum extends StatefulWidget {
  const Osum({Key? key}) : super(key: key);

  @override
  State<Osum> createState() => _OsumState();
}

class _OsumState extends State<Osum> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Order summary',
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
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
                        CircleAvatar(
                          maxRadius: 30,
                          child: Icon(
                            Icons.file_copy,
                            size: 35,
                            color: Colors.white,
                          ),
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
                        GestureDetector(
                          child: CircleAvatar(
                            maxRadius: 30,
                            backgroundColor: Color.fromARGB(255, 5, 41, 71),
                            child: Icon(
                              Icons.payment,
                              size: 35,
                              color: Colors.white,
                            ),
                          ),
                          onTap: () {
                            Navigator.push(
                            context, MaterialPageRoute(builder: (context) => Pay2()),);
                          },
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
            height: 30,
          ),
          Card(
            elevation: 10,
            child: Container(
              height: 240,
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 30, horizontal: 20),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Abhishek Kumar',
                      style: text17,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Text(
                      'Sunshine building room no. 405, Thane - 400798 Mumbai\n\n8828447664',
                      style: text14,
                    ),
                    SizedBox(
                      height: 30,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {},
                          child: Text(
                            'Change or Add address',
                            style: text17,
                          ),
                          style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                                horizontal: 60, vertical: 14),
                          ),
                        ),
                      ],
                    )
                  ]),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          Card(
            elevation: 10,
            child: ListTile(
              contentPadding: EdgeInsets.all(10),
              trailing: Positioned(
                right: 0,
                top: 60,
                child: Image.asset('assets/images/chickpea.png', 
                fit: BoxFit.cover,),
              ),
              title: Text('Vegan chickpea...', style: text17),
              subtitle: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Seller: Raj Kitchen', style: text14,),
                  SizedBox(height: 10,),
                  Text('₹200', style: text21,),
                  SizedBox(height: 10,),
                  Text('Delivery by tomorrow, Fri', style: text14,)
                ],
              ),
              
            ),
          ),
          SizedBox(
            height: 50,
          ),
          Card(
            elevation: 10,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 20),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    '₹200',
                    style: text27.copyWith(color: Colors.orange),
                  ),
                  ElevatedButton(
                      onPressed: () {},
                      child: Text(
                        'CONTINUE',
                        style: text14,
                      ))
                ],
              ),
            ),
          )
        ]),
      ),
    );
  }
}
