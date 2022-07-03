import 'package:flutter/material.dart';
import 'package:diamond_bottom_bar/diamond_bottom_bar.dart';
import 'package:kookoo/Diamond.dart';
import 'AppBar.dart';
import 'LocationScreen.dart';

class HomeScreeen extends StatefulWidget {

  @override
  State<HomeScreeen> createState() => _HomeScreeenState();
}

class _HomeScreeenState extends State<HomeScreeen> {
   int _selectedIndex = 0;
   Widget _selectedWidget;

  @override
  void initState() {
    _selectedWidget =  HomeScreeen();
    super.initState();
  }
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: new ThemeData(
            primaryColor:
                Color.fromARGB(255, 40, 90, 82), // Your app THEME-COLOR
          ),
      home:Scaffold(
        bottomNavigationBar: Diamond(
          selectedColor: Color.fromARGB(255, 218, 218, 219),
          selectedLightColor: Color.fromARGB(255, 218, 218, 219),
          itemIcons: const [
            Icons.home,
            Icons.notifications,
            Icons.message,
            Icons.account_box,
          ],
          centerIcon: Image.asset("assets/images/kookoo.png"),
          selectedIndex: _selectedIndex,
          onItemPressed: onPressed,
        ),
      backgroundColor:Color.fromARGB(255, 35, 32, 38),
      //appBar: BaseAppBar(),
      body: Column(
        
        
        children: [
          Padding(padding: EdgeInsets.fromLTRB(20, 50, 0, 0),
          child: Row(children: [
          Image.asset("assets/images/Ham.png",color: Colors.white,scale:15,),
          Padding(padding: EdgeInsets.only(left: MediaQuery.of(context).size.width*.75),
          child:Image.asset("assets/images/kookoo.png",color: Colors.white,scale:10,))
        ]))
       
      ]),
    ),);
  }

void onPressed(index) {
    setState(() {
      _selectedIndex = index;
      if (index == 0) {
        _selectedWidget =  HomeScreeen();
      }else if (index == 1) {
        _selectedWidget =  LocationScreen();
      }else if (index == 2) {
        _selectedWidget =  LocationScreen();
      }else if (index == 3) {
        _selectedWidget =  LocationScreen();
      }else if (index == 4) {
        _selectedWidget =  LocationScreen();
      }
    });
  }
}