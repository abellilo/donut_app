import 'package:donut_app_ui/util/my_tab.dart';
import 'package:flutter/material.dart';

import '../tab/burger_tab.dart';
import '../tab/donut_tab.dart';
import '../tab/pancake_tab.dart';
import '../tab/pizza_tab.dart';
import '../tab/smoothie_tab.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  //my tabs
  List<Widget> myTabs = [
    //donut tab
    MyTab(iconPath: 'lib/icons/donut icon.png'),
    //burger tab
    MyTab(iconPath: 'lib/icons/burger.png'),
    //smoothie tab
    MyTab(iconPath: 'lib/icons/smoothie.png'),
    // pancake tab
    MyTab(iconPath: 'lib/icons/pancakes.png'),
    // pizza tab
    MyTab(iconPath: 'lib/icons/pizza.png'),
  ];

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: myTabs.length,
      child: Scaffold(
        appBar: AppBar(
          elevation: 0,
          backgroundColor: Colors.transparent,
          leading: Padding(
            padding: const EdgeInsets.only(left: 24.0),
            child: IconButton(
                icon: Icon(Icons.menu,
                  color: Colors.grey[800],
                  size: 36,
                ),
              onPressed: (){
                  //open drawer
              },
            ),
          ),
          actions: [
            Padding(
              padding: const EdgeInsets.only(right: 24.0),
              child: IconButton(
                icon: Icon(Icons.person,
                  color: Colors.grey[800],
                  size: 36,
                ),
                onPressed: (){
                  //account button tapped
                },
              ),
            ),
          ],
        ),
        body: Column(
          children: [
            //I want to eat
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 36.0, vertical: 10),
              child: Row(
                children: [
                  Text("I want to eat",style: TextStyle(
                    fontSize: 24
                  ),),
                  Text("EAT",style: TextStyle(
                      fontSize: 32,
                    fontWeight: FontWeight.bold
                  ),),
                ],
              ),
            ),

            const SizedBox(height: 24,),

            //tab bar
            TabBar(tabs: myTabs),

            //tab view
            Expanded(child: TabBarView(
              children: [
                //donut page
                DonutTab(),

                //burger page
                BurgerTab(),

                //smoothie page
                SmoothieTab(),

                //pancake page
                PancakeTab(),

                //pizza page
                PizzaTab()
              ],
            ))
          ],
        ),
      ),
    );
  }
}
