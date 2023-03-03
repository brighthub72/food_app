// ignore_for_file: prefer_const_constructors

import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:food_app/UI/delicacies/veg.dart';
import 'package:food_app/UI/utilities/style.dart';
import 'package:http/http.dart' as http;

class Dashboard extends StatefulWidget {
  const Dashboard({Key? key}) : super(key: key);

  @override
  State<Dashboard> createState() => _DashboardState();
}

class _DashboardState extends State<Dashboard> {
  List dishes = [
    {
      'title': 'Hot Ofada Sauce',
      'description': 'Enjoy with your loved ones',
      'price': 'Rs 40'
    },
    {
      'title': 'Yummy Banga Soup',
      'description': 'A taste of home',
      'price': 'Rs 50'
    },
    {
      'title': 'Hot Peppered Chicken',
      'description': 'Hot as you like',
      'price': 'Rs 90'
    },
    {
      'title': 'Chicken pie',
      'description': 'Yummy creamy taste',
      'price': 'Rs 60'
    },
  ];

  List dishes1 = [
    {
      'title': 'Vegan Chickpea Curry',
      'description': 'Loaded with protein',
      'price': 'Rs 60'
    },
    {
      'title': 'Hot Peppered Chicken',
      'description': 'Hot as you like',
      'price': 'Rs 90'
    },
    {
      'title': 'Hot Ofada Sauce',
      'description': 'Enjoy with your loved ones',
      'price': 'Rs 40'
    },
    {
      'title': 'Yummy Banga Soup',
      'description': 'A taste of home',
      'price': 'Rs 50'
    },
  ];

  Future getCategories() async {
    var url = Uri.parse("https://dummyjson.com/products/categories");
    final res = await http.get(url);
    List data = json.decode(res.body);
    return data;
  }

  Future getProducts() async {
    var url = Uri.parse("https://dummyjson.com/products");
    final res = await http.get(url);
    final data1 = json.decode(res.body);
    return data1['products'];
  }

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getCategories();
    getProducts();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.all(20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Hello,\nAbel.',
                  style: text36,
                ),
                SizedBox(
                  height: 20,
                ),
                TextFormField(
                  decoration: InputDecoration(
                    prefixIcon: Icon(Icons.search),
                    hintText: 'Search',
                    filled: true,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                FutureBuilder(
                    future: getCategories(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        );
                      }
                      List categories = snapshot.data;
                      return SizedBox(
                        height: 140,
                        child: ListView.separated(
                          itemCount: categories.length,
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) => SizedBox(
                            width: 10,
                          ),
                          itemBuilder: (BuildContext context, int index) {
                            return buildCategory(categories[index], 'pizza');
                          },
                        ),
                      );

                      // return SizedBox(
                      //   height: 140,
                      //   child: ListView(
                      //     scrollDirection: Axis.horizontal,
                      //     children: [
                      //       buildCategory('Dinner', 'pizza'),

                      //     ],
                      //   ),
                      // );
                    }),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      "Today's special",
                      style: text27,
                    ),
                    Text(
                      'see all',
                      style: text17.copyWith(color: Colors.orange),
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),

                //My design on Sunday
                SizedBox(
                    height: 210,
                    child: ListView.builder(
                        itemCount: dishes1.length,
                        scrollDirection: Axis.horizontal,
                        itemBuilder: (BuildContext context, index) {
                          final food = dishes1[index];
                          return GestureDetector(
                            onTap: (() {
                              Navigator.push(
                                context,
                                MaterialPageRoute(builder: (context) => Veg()),
                              );
                            }),
                            child: Container(
                              margin: EdgeInsets.only(right: 15, bottom: 5),
                              height: 195,
                              width: 240,
                              padding: EdgeInsets.only(top: 100),
                              decoration: BoxDecoration(
                                image: DecorationImage(
                                    image:
                                        AssetImage('assets/images/vegan.png'),
                                    fit: BoxFit.cover),
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Card(
                                shape: RoundedRectangleBorder(
                                    borderRadius: BorderRadius.circular(10)),
                                elevation: 10,
                                margin: EdgeInsets.all(0),
                                child: Column(
                                  children: [
                                    SizedBox(height: 5),
                                    Text('${food['title']}', style: text17),
                                    SizedBox(height: 5),
                                    Text('${food['description']}',
                                        style: text11),
                                    SizedBox(height: 10),
                                    Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 10),
                                      child: Row(
                                        mainAxisAlignment:
                                            MainAxisAlignment.spaceBetween,
                                        children: [
                                          Text('${food['price']}',
                                              style: text14),
                                          ElevatedButton(
                                              onPressed: () {},
                                              child: Text(
                                                '5 left',
                                                style: text12,
                                              ))
                                        ],
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ),
                          );
                        })),
                SizedBox(
                  height: 40,
                ),

                Container(
                  height: 300,
                  padding: EdgeInsets.only(top: 175),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    image: DecorationImage(
                      image: AssetImage('assets/images/vegan.png'),
                      fit: BoxFit.cover,
                    ),
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 10,
                    margin: EdgeInsets.all(0),
                    child: Column(
                      children: [
                        SizedBox(height: 10),
                        Text('Egusi Soup and Cowhead', style: text17),
                        SizedBox(height: 10),
                        Text('Loaded with Obstacles', style: text11),
                        SizedBox(height: 15),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Rs 300', style: text14),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    '7 left',
                                    style: text12,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Container(
                  height: 205,
                  width: 240,
                  padding: EdgeInsets.only(top: 100),
                  decoration: BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage('assets/images/vegan.png'),
                        fit: BoxFit.cover),
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: Card(
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                    elevation: 10,
                    margin: EdgeInsets.all(0),
                    child: Column(
                      children: [
                        SizedBox(height: 5),
                        Text('Egusi Soup and Cowhead', style: text17),
                        SizedBox(height: 5),
                        Text('Loaded with Obstacles', style: text11),
                        SizedBox(height: 8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 10),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              Text('Rs 300', style: text14),
                              ElevatedButton(
                                  onPressed: () {},
                                  child: Text(
                                    '7 left',
                                    style: text12,
                                  ))
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(
                  height: 20,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      'Popular dish',
                      style: text27,
                    ),
                    Text(
                      'see all',
                      style: text17.copyWith(color: Colors.orange),
                    )
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                FutureBuilder(
                    future: getProducts(),
                    builder: (context, AsyncSnapshot snapshot) {
                      if (snapshot.connectionState == ConnectionState.waiting) {
                        return const Center(
                          child: Padding(
                            padding: EdgeInsets.all(20.0),
                            child: CircularProgressIndicator.adaptive(),
                          ),
                        );
                      }
                      final products = snapshot.data;

                      return ListView.builder(
                        itemCount: products.length,
                        physics: NeverScrollableScrollPhysics(),
                        shrinkWrap: true,
                        itemBuilder: (BuildContext context, int index) {
                          final prod = products[index];

                          return Card(
                            shape: RoundedRectangleBorder(
                                borderRadius: BorderRadius.circular(10)),
                            margin: EdgeInsets.only(bottom: 15),
                            elevation: 10,
                            child: ListTile(
                              contentPadding: EdgeInsets.all(10),
                              leading: Image.asset('assets/images/vegan.png'),
                              title: Text('${prod['title']}', style: text17),
                              subtitle: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text('${prod['description']}', style: text11),
                                  Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceBetween,
                                    children: [
                                      Text(
                                        'N${prod['price']}',
                                        style: text17,
                                      ),
                                      ElevatedButton(
                                        onPressed: () {},
                                        child: Text('Buy now'),
                                      ),
                                    ],
                                  )
                                ],
                              ),
                            ),
                          );
                        },
                      );
                    }),
                SizedBox(
                  height: 20,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  //method for inputing the values of the image and title of the items after the search bar
  Column buildCategory(title, image) {
    return Column(
      children: [
        Image.asset('assets/images/$image.png'),
        SizedBox(
          height: 5,
        ),
        Text(
          '$title',
          style: text17,
        )
      ],
    );
  }
}
