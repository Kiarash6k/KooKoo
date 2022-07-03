import 'package:flutter/material.dart';

class BaseAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Color backgroundColor = Color.fromARGB(255, 35, 32, 38);
  
  
  final AppBar appBar;
  final List<Widget> widgets;

    

  BaseAppBar({Key key,  this.appBar, this.widgets})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    var height = size.height;
    var width = size.width;
    return AppBar(

      backgroundColor: backgroundColor,
       leading: Center(
                child: InkWell(
                  child: Image.asset("assets/images/Ham.png",color: Colors.white,scale:12,)
                ),),
      actions: <Widget>[],
    );
  }

  @override
  Size get preferredSize => new Size.fromHeight(70);
}