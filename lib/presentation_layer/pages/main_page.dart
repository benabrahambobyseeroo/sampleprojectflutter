import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:sampleproject/l10n/lang_extensions.dart';
import 'package:sampleproject/presentation_layer/pages/main_page.dart';
import 'package:sampleproject/presentation_layer/widgets/action_button.dart';
import 'package:sampleproject/presentation_layer/widgets/custom_bottom_navigation_bar.dart';
import 'package:sampleproject/presentation_layer/widgets/makanek_logo.dart';
import 'package:sampleproject/presentation_layer/widgets/status_badge.dart';

@RoutePage()
class TryScreen extends StatelessWidget {
   final String response;

  const TryScreen(
      {super.key,required this.response}
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).primaryColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Section
          const Expanded(flex: 1, child: CurvedColumn()),
          const SizedBox(height: 20),

          // Circular Action Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Container(
              decoration: const BoxDecoration(
                  borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(30), // Curve bottom left
                      topRight: Radius.circular(30), // Curve bottom right
                    )
                ) ,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                Text(
                "access token $response",
                maxLines: 1,
                style: const TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
                  const SizedBox(height: 8),
                  Text(
                    context.loc.whatWouldYouLikeToDo,
                    style: const TextStyle(
                      fontSize: 16,
                      color: Colors.grey,
                    ),
                  ),
                  const SizedBox(height: 20),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ActionButton(
                        iconPath: 'assets/images/google.png', // Replace with send icon
                        label:context.loc.send,
                      ),
                      ActionButton(
                        iconPath: 'assets/images/facebook.png', // Replace with fetch icon
                        label: context.loc.fetch,
                      ),
                      ActionButton(
                        iconPath: 'assets/images/google.png', // Replace with sell icon
                        label: context.loc.sell,
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
          const SizedBox(height: 30),

          // History Section
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Text(
    context.loc.history,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          const SizedBox(height: 10),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Card(
              color: Theme.of(context).hintColor,
              elevation: 2,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(15),
              ),
              child: Column(
                children: [
                  ListTile(
                    leading: Icon(Icons.location_on, color: Theme.of(context).primaryColor,),
                    title: const Text("Bin Rasheed Building"),
                    subtitle: const Text("Dubai Investments Park"),
                    trailing: StatusBadge(label: context.loc.delivered,),
                  ),
                  const Divider(),
                  Padding(
                    padding: const EdgeInsets.all(12.0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text(
                          context.loc.trackDelivery,
                          style: const TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Icon(Icons.arrow_forward_ios, size: 16),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),

          const Spacer(),

          // Bottom Navigation Bar
          const CustomBottomNavigationBar(),
        ],
      ),
    );
  }
}





