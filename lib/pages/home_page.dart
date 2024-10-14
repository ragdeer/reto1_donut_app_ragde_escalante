import 'package:flutter/material.dart';
import '../utils/my_tab.dart';
import '../tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  List<Widget> myTabs = [
      //Donut tab
      const MyTab(iconPath: 'lib/icons/donut.png',),
      //Burger tab
      const MyTab(iconPath: 'lib/icons/burger.png',),
      //smoothie tab
      const MyTab(iconPath: 'lib/icons/smoothie.png',),
      //pancake tab
      const MyTab(iconPath: 'lib/icons/pancakes.png',),
      //pizza tab
      const MyTab(iconPath: 'lib/icons/pizza.png',),
    ];
  
 @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left:24.0),
            child: IconButton(icon: Icon(Icons.menu, color: Colors.grey[800], size: 36), onPressed: () { print('Boton oh si cedro'); },
            ),
          ),
          actions: [Padding(
            padding: const EdgeInsets.only(right:24.0),
            child: IconButton(icon: Icon(Icons.person, color:Colors.grey[800],size: 36), onPressed: () { print('Oh si ulises'); },),
          )],
          ),
          body: Column(children: [
           const Padding(
              padding: EdgeInsets.all(24.0),
              child: Row(
                children: [
                  Text('I want to ', style: TextStyle(fontSize: 32),),
                  Text('Eat', style: TextStyle(fontSize: 32, fontWeight:FontWeight.bold, decoration: TextDecoration.underline), 
                  ),
                ],
              ),
            ),
            //TAB BAR
            TabBar(tabs: myTabs),
            //TAB BAR VIEW 
              Expanded(child: TabBarView(children: [
              //Donut
              DonutTab(),
              //Burger
              BurgerTab(),
              //Smoothie
              SmoothieTab(),
              //Pancakes
              PancakeTab(),
              //Pizza
              PizzaTab(),
            ]),)
            //Carrito
          ]),
      ),
    );
  }
}
