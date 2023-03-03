import 'package:flutter/material.dart';
import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';
import 'package:food_app/UI/dashboard.dart';
import 'package:food_app/UI/grid.dart';


class Home extends StatefulWidget {

  const Home({ Key? key }) : super(key: key);

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _selectedItemPosition = 0;
  List children = [
    //with this, we can call all our created pages like for instance, Dashboard() will take us to the dashboard screen
    Dashboard(),
    Text('Home'),
    Text('Podcast'),
    Text('Search'),
    //Dashboard()
  ];

   @override
   Widget build(BuildContext context) {
       return Scaffold(
           body: children[_selectedItemPosition],
           bottomNavigationBar: SnakeNavigationBar.color(
        behaviour: SnakeBarBehaviour.floating,
        snakeShape: SnakeShape.circle,
        height: 50,
        //shape: bottomBarShape,
        padding: EdgeInsets.all(10),

        ///configuration for SnakeNavigationBar.color
        snakeViewColor: Colors.red,
        //selectedItemColor: snakeShape == SnakeShape.indicator ? selectedColor : null,
        unselectedItemColor: Colors.blueGrey,

        ///configuration for SnakeNavigationBar.gradient
        //snakeViewGradient: selectedGradient,
        //selectedItemGradient: snakeShape == SnakeShape.indicator ? selectedGradient : null,
        //unselectedItemGradient: unselectedGradient,

        showUnselectedLabels: true,
        showSelectedLabels: true,

        currentIndex: _selectedItemPosition,
        onTap: (index) => setState(() => _selectedItemPosition = index),
        items: [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'home'),
          BottomNavigationBarItem(icon: Icon(Icons.favorite), label: 'favorite'),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: 'search'),
          BottomNavigationBarItem(icon: Icon(Icons.contacts), label: 'people'),
        ],
      ),
       );
  }
}