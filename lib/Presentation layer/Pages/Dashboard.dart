import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/svg.dart';



@RoutePage()
class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Row (currently empty, you can add a back button here if needed)
            Row(
              children: [Image.asset("assets/images/back.png",height: 10,width: 10,)],
            ),
            SizedBox(height: 50),
            // Instruction text
            Row(
              children: [Text("Please choose a \n user category", style: TextStyle(fontSize: 30, fontWeight: FontWeight.bold))],
            ),
            SizedBox(height: 50),
            // Two Buttons
            Column(
              children: [
                OutlinedButton(
                  onPressed: () {
                    // Handle second category
                  },

                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    side: BorderSide(color: Colors.yellow, width: 2), // Yellow outline
                    backgroundColor: Colors.white, // White background
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex:1,
                        child: SvgPicture.asset(
                          'assets/images/ic_choose_company.svg', // Path to your SVG file
                          width: 50.0, // Set the width
                          height: 50.0, // Set the height
                        )
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        flex:3,
                        child: Text(
                          'Customer',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        flex: 1,
                        child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.identity()..scale(-1.0, 1.0),
                          child: Image.asset(
                            'assets/images/back.png',
                            width: 10,
                            height: 10,
                          ),
                        ),

                      ),
                    ],
                  ),
                ),
                SizedBox(height: 20),
                OutlinedButton(
                  onPressed: () {
                    // Handle second category
                  },
                  style: OutlinedButton.styleFrom(
                    padding: EdgeInsets.symmetric(vertical: 12, horizontal: 16),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(30),
                    ),
                    side: BorderSide(color: Colors.yellow, width: 2), // Yellow outline
                    backgroundColor: Colors.white, // White background
                  ),
                  child: Row(
                    mainAxisSize: MainAxisSize.max,
                    children: [
                      Expanded(
                        flex:1,
                        child: SvgPicture.asset(
                          'assets/images/ic_choose_customer.svg', // Path to your SVG file
                          width: 50.0, // Set the width
                          height: 50.0, // Set the height
                        )
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        flex:3,
                        child: Text(
                          'Company / Restaurent',
                          style: TextStyle(fontSize: 16),
                        ),
                      ),
                      SizedBox(width: 8),
                      Expanded(
                        flex: 1,
                        child: Transform(
                          alignment: Alignment.center,
                          transform: Matrix4.identity()..scale(-1.0, 1.0),
                          child: Image.asset(
                            'assets/images/back.png',
                            width: 10,
                            height: 10,
                          ),
                        ),

                      ),
                    ],
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}


