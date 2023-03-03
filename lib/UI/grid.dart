import 'package:flutter/material.dart';
import 'package:food_app/UI/utilities/style.dart';

class Grid extends StatelessWidget {

  Grid({ Key? key }) : super(key: key);
  List items = ['Food', 'Games', 'Sports', 'Connect'];

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           appBar: AppBar(title: const Text('grid view builder'),),
           body: GridView.builder(
             gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
               crossAxisCount: 2,
               mainAxisSpacing: 10,
               crossAxisSpacing: 10,
               childAspectRatio: 5/2 //ratio of width to height
             ),
             itemCount: items.length,
              //itemBuilder same as we did for listview.builder in dashboard
             itemBuilder: (BuildContext context, int index) {
              final item = items[index];
               return Container(
                height: 60,
                color: Colors.green,
                child: Center(child: Text(
                  item,
                  style: text17Bold.copyWith(color: Colors.white),
                )),
               );
             },
           ),
       );
  }
}