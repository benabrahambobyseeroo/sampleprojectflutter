
import 'package:flutter/material.dart';

Widget curvedColumn() {
  return Container(
    width: double.infinity, // Ensure full width

    decoration: const BoxDecoration(
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
      const SizedBox(height: 50,),
      Expanded(flex: 1,child: Image.asset("assets/images/logo.png"))
      ,
      const SizedBox(height: 20),
      const Expanded(flex: 1,child:Text("MAKANK",style: TextStyle(fontSize: 25),))
    ],
  )

  )
  );
}