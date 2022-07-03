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
        ])),
        SizedBox(height: MediaQuery.of(context).size.height/20,),
        Row(
          children: [
            Container(
              margin: EdgeInsets.only( top: MediaQuery.of(context).size.height/8, left: MediaQuery.of(context).size.width*0.07),
              width: MediaQuery.of(context).size.width/2.5,
              height: MediaQuery.of(context).size.height/6,
            child:
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height/50,),
                Icon(Icons.alarm_on_outlined,
                color: Colors.black,size: MediaQuery.of(context).size.width/12,),
                SizedBox(height: MediaQuery.of(context).size.height/95,),
                Text("0",textAlign: TextAlign.center,
                style: TextStyle(fontSize: MediaQuery.of(context).size.height/30,color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,shadows: [
                  Shadow(
                    color: Color.fromARGB(228, 0, 0, 0),
                    blurRadius: 20,
                    offset: Offset(5, 1),
                  ),
                ],),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/80,),
                Text("Total Alarms",textAlign: TextAlign.center,
                style: TextStyle(fontSize: MediaQuery.of(context).size.height/45,color: Color.fromARGB(255, 0, 0, 0)),),
                
                
              ],
            ),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                offset: Offset(0, 10),
              ),],
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255,193,222,220),
            ),
            ),
            Container(
              margin: EdgeInsets.only( top: MediaQuery.of(context).size.height/8, left: MediaQuery.of(context).size.width*0.05),
              width: MediaQuery.of(context).size.width/2.5,
              height: MediaQuery.of(context).size.height/6,
            child:Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height/50,),
                Icon(Icons.analytics,
                color: Colors.black,size: MediaQuery.of(context).size.width/12,),
                SizedBox(height: MediaQuery.of(context).size.height/95,),
                Text("LINKUSDTP",textAlign: TextAlign.center,
                style: TextStyle(fontSize: MediaQuery.of(context).size.height/40,color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,shadows: [
                  Shadow(
                    color: Color.fromARGB(228, 0, 0, 0),
                    blurRadius: 50,
                    offset: Offset(5, 1),
                  ),
                ],),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/80,),
                Text("Currency",textAlign: TextAlign.center,
                style: TextStyle(fontSize: MediaQuery.of(context).size.height/45,color: Color.fromARGB(255, 0, 0, 0)),),
                
                
              ],
            ),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                offset: Offset(0, 10),
              ),],
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255,231,222,241),
            ),
            ),
          ],
        ),
         Container(
              margin: EdgeInsets.only( top: MediaQuery.of(context).size.height*0.05, left: MediaQuery.of(context).size.width*0.07,right: MediaQuery.of(context).size.width*0.07),
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height/6,
            child:
            Column(
              children: [
                SizedBox(height: MediaQuery.of(context).size.height/70,),
                Icon(Icons.attach_money,
                color: Colors.black,size: MediaQuery.of(context).size.width/12,),
                //SizedBox(height: MediaQuery.of(context).size.height/110,),
                Text("6.226",textAlign: TextAlign.center,
                style: TextStyle(fontSize: MediaQuery.of(context).size.height/30,color: Color.fromARGB(255, 0, 0, 0),
                fontWeight: FontWeight.bold,shadows: [
                  Shadow(
                    color: Color.fromARGB(228, 0, 0, 0),
                    blurRadius: 50,
                    offset: Offset(5, 1),
                  ),
                ],),
                ),
                //SizedBox(height: MediaQuery.of(context).size.height/120,),
                Text("+18.8  +0.03%",textAlign: TextAlign.center,
                style: TextStyle(fontSize: MediaQuery.of(context).size.height/60,color: Color.fromARGB(255, 52, 131, 0),
                fontWeight: FontWeight.bold,shadows: [
                  Shadow(
                    color: Color.fromARGB(228, 0, 0, 0),
                    blurRadius: 20,
                    offset: Offset(5, 1),
                  ),
                ],),
                ),
                SizedBox(height: MediaQuery.of(context).size.height/80,),
                Text("Current Price",textAlign: TextAlign.center,
                style: TextStyle(fontSize: MediaQuery.of(context).size.height/45,color: Color.fromARGB(255, 0, 0, 0)),),
                
                
              ],
            ),
            decoration: BoxDecoration(
              boxShadow: [BoxShadow(
                color: Colors.black,
                blurRadius: 10,
                offset: Offset(0, 10),
              ),],
              borderRadius: BorderRadius.circular(20),
              color: Color.fromARGB(255,242,239,232),
            ),
            ), 
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