import 'package:flutter/material.dart';
import 'package:food_app/UI/payments/pay.dart';
import 'package:food_app/UI/utilities/style.dart';

class Veg extends StatefulWidget {
  const Veg({Key? key}) : super(key: key);

  @override
  State<Veg> createState() => _VegState();
}

class _VegState extends State<Veg> {

  List dishes2 = [
    { 
      'image': 'chickpea',
      'title': 'Vegan Chickpea Curry',
      'description': 'Moong dal (split mung beans) are...',
      'price': 'Rs 150'
    },
    { 
      'image': 'cauli',
      'title': 'One-Pot Cauliflower',
      'description': "Biryani is a rice dish that’s spiced...",
      'price': 'Rs 230'
    },
  ];

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
                Image.asset(
                  'assets/images/veg2.png',
                  width: 450,
                ),
                Text(
                  'Vegan Chickpea Curry',
                  style: text27,
                ),
                SizedBox(
                  height: 5,
                ),
                Row(
                  children: [
                    stars(),
                    stars(),
                    stars(),
                    stars(),
                    Text(
                      '  4.0 (80 reviews)',
                      style: text17,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
                Text(
                  'Seller: Raj Kitchen',
                  style: text14,
                ),
                SizedBox(
                  height: 15,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        ElevatedButton(onPressed: () {}, child: Text('+', style: text17),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        SizedBox(
                          width: 40,
                          height: 45,
                          child: TextFormField(),
                        ),
                        SizedBox(
                          width: 5,
                        ),
                        ElevatedButton(onPressed: () {}, child: Text('-', style: text17,),
                        ),
                      ],
                    ),
                    ElevatedButton(
                      onPressed: () {
                        Navigator.push(
                        context, MaterialPageRoute(builder: (context) => Pay()),);
                      }, 
                      child: Text('Buy Now',
                      style: text17,
                      ),
                      
                    ),
                  ],
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Product Descriptions',
                  style: text21,
                ),
                SizedBox(
                  height: 10,
                ),
                Text(
                  "Loaded with protein, this vegan chickpea curry is mostly made with pantry staples. Throw in fresh or frozen spinach for a pop of green, and you’ve got dinner. (via Brit + Co)",
                  style: text14,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'Reviews',
                  style: text21,
                ),
                SizedBox(
                  height: 20,
                ),
                ListTile(
                  contentPadding: EdgeInsets.all(10),
                  leading: Image.asset('assets/images/fyn.png'),
                  title: Text(
                    'Rohit kumar',
                    style: text17,
                  ),
                  subtitle: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Row(
                            children: [
                              stars(),
                              stars(),
                              stars(),
                              stars(),
                            ],
                          ),
                          Text("19-mar-2020")
                        ],
                      ),
                      SizedBox(height: 20,),
                      Text("A perfect combination of mutton and rice. It's aroma and taste were fantastic. They also provided raita with it. Overall I would not recommend this restaurant"),
                    ],
                  ),
                ),
                SizedBox(height: 20,),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('Suggestion dish', style: text27,),
                    Text('See all', style: text17.copyWith(color: Colors.orange),),
                  ],
                ),
                SizedBox(height: 20,),
                ListView.builder(
                  itemCount: dishes2.length,
                  physics: NeverScrollableScrollPhysics(),
                  shrinkWrap: true,
                  itemBuilder: (BuildContext context, int index) {
                    final meal = dishes2[index];

                    return Card(
                      shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10)),
                      margin: EdgeInsets.only(bottom: 15),
                      elevation: 10,
                      child: ListTile(
                        contentPadding: EdgeInsets.all(10),
                        leading: Image.asset('assets/images/${meal['image']}.png'),
                        title: Text('${meal['title']}', style: text17),
                        subtitle: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('${meal['description']}', style: text11),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text(
                                  '${meal['price']}',
                                  style: text17,
                                ),
                                ElevatedButton(
                                  onPressed: () {},
                                  child: Text('Buy now'),
                                  style: ElevatedButton.styleFrom(
                                    padding: EdgeInsets.symmetric(
                                    horizontal: 20,
                                    vertical: 10,
                                  ),
                                  ),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    );
                  },
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }

  Icon stars() {
    return Icon(
      Icons.star,
      color: Color.fromARGB(176, 235, 220, 7),
    );
  }
}
