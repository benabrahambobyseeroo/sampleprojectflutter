import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

@RoutePage()
class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

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
                _buildUserCategoryButton(
                    onPressed: () {
                      // Handle customer selection
                    },
                    iconPath: 'assets/images/ic_choose_company.svg',
                    label: 'Customer',
                    context: context),
                const SizedBox(height: 20),
                _buildUserCategoryButton(
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

  Widget _buildUserCategoryButton(
      {required VoidCallback onPressed,
      required String iconPath,
      required String label,
      required BuildContext context}) {
    return OutlinedButton(
      onPressed: onPressed,
      style: OutlinedButton.styleFrom(
        padding: const EdgeInsets.symmetric(vertical: 12, horizontal: 16),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(30),
        ),
        side: BorderSide(color: Theme.of(context).primaryColor, width: 2),
        backgroundColor: Theme.of(context).hintColor,
      ),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        children: [
          // Left Icon (SVG)
          Expanded(
            flex: 1,
            child: SvgPicture.asset(
              iconPath,
              width: 50.0,
              height: 50.0,
            ),
          ),
          const SizedBox(width: 8),
          // Label Text
          Expanded(
            flex: 3,
            child: Text(
              label,
              style: const TextStyle(fontSize: 16),
            ),
          ),
          const SizedBox(width: 8),
          // Right Icon (Reversed Arrow)
          Expanded(
            flex: 1,
            child: Transform(
              alignment: Alignment.center,
              transform: Matrix4.identity()..scale(-1.0, 1.0),
              child: Image.asset(
                'assets/images/back.png',
                width: 20,
                height: 20,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
