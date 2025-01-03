import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:sampleproject/presentation_layer/pages/dashboard_page.dart';
import 'package:sampleproject/presentation_layer/widgets/user_catagory_button.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(50.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top Row (Back Button)
            Row(
              children: [
                Image.asset(
                  "assets/images/back.png",
                  height: 20,
                  width: 20,
                ),
              ],
            ),
            const SizedBox(height: 50),
            // Instruction Text
            const Text(
              "Please choose a \n user category",
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 50),
            // User Category Buttons
            Column(
              children: [
                UserCategoryButton(
                    onPressed: () {
                      // Handle customer selection
                    },
                    iconPath: 'assets/images/ic_choose_company.svg',
                    label: 'Customer',
                    context: context),
                const SizedBox(height: 20),
                UserCategoryButton(
                    onPressed: () {
                      // Handle company/restaurant selection
                    },
                    iconPath: 'assets/images/ic_choose_customer.svg',
                    label: 'Company / Restaurant',
                    context: context),
              ],
            ),
          ],
        ),
      ),
    );
  }


}


