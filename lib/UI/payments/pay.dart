import 'package:flutter/material.dart';
import 'package:food_app/UI/payments/osum.dart';
import 'package:food_app/UI/payments/pay2.dart';
import 'package:food_app/UI/utilities/style.dart';

class Pay extends StatefulWidget {
  const Pay({Key? key}) : super(key: key);

  @override
  State<Pay> createState() => _PayState();
}

class _PayState extends State<Pay> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'Add delivery address',
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
        child: Padding(
          padding: const EdgeInsets.all(20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                      children: [
                        CircleAvatar(
                          maxRadius: 30,
                          child: Icon(
                            Icons.location_on,
                            size: 35,
                            color: Colors.white,
                          ),
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
              SizedBox(
                height: 35,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Name*',
                  filled: true,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Phone Number*',
                  filled: true,
                ),
              ),
              SizedBox(
                height: 20,
              ),
              Text(
                '+Add Alternate Phone Number',
                style: text14.copyWith(color: Colors.deepOrange),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150,
                    child: TextFormField(
                      decoration: InputDecoration(
                          hintText: 'Pincode*',
                          filled: true,
                          hintStyle: text17),
                    ),
                  ),
                  ElevatedButton.icon(
                    onPressed: () {},
                    icon: Icon(Icons.location_on),
                    label: Text(
                      'Use my location',
                      style: text14,
                    ),
                    style: ElevatedButton.styleFrom(
                      padding: EdgeInsets.symmetric(
                        horizontal: 13,
                        vertical: 15,
                      ),
                    
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  SizedBox(
                    width: 150,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'State*',
                        filled: true,
                        hintStyle: text17,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 150,
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'City*',
                        filled: true,
                        hintStyle: text17,
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'House No. Building Name (Required)*',
                  filled: true,
                  hintStyle: text17,
                ),
              ),
              SizedBox(
                height: 30,
              ),
              TextFormField(
                decoration: InputDecoration(
                  hintText: 'Road name, Area, colony*',
                  filled: true,
                  hintStyle: text17,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
