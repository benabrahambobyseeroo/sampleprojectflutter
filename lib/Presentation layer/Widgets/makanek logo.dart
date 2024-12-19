import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

Widget curvedColumn() {
  return Container(
    width: double.infinity, // Ensure full width

    decoration: BoxDecoration(
      color: Colors.yellow, // Background color
      borderRadius: BorderRadius.only(
        bottomLeft: Radius.circular(30), // Curve bottom left
        bottomRight: Radius.circular(30), // Curve bottom right
      ),
    ),
    child: Center(
  child: Column(
    mainAxisAlignment: MainAxisAlignment.center,
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      SizedBox(height: 50,),
      Expanded(child: Image.asset("assets/images/logo.png"),flex: 1,)
      ,
      SizedBox(height: 20),
      Expanded(child:Text("MAKANK",style: TextStyle(fontSize: 25),),flex: 1)
    ],
  )

  )
  );
}