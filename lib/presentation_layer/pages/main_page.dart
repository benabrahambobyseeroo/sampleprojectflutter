import 'package:auto_route/auto_route.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sampleproject/l10n/lang_extensions.dart';

@RoutePage()
class TryScreen extends StatelessWidget {
   final String response;

  const TryScreen(
      {super.key,required this.response}
      );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Theme.of(context).hintColor,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Top Section
          Container(
            decoration: BoxDecoration(
              color: Theme.of(context).primaryColor,
              borderRadius: BorderRadius.vertical(
                bottom: Radius.circular(30),
              ),
            ),
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 40),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: Column(
                    children: [
                      Image.asset(
                        'assets/images/logo.png', // Replace with your logo asset
                        height: 30,
                      ),
                      const SizedBox(height: 20),
                      const Text("MAKANK"),
                    ],
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),

          // Circular Action Buttons
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
              Text(
              "access token"+response,
              maxLines: 1,
              style: TextStyle(
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

class ActionButton extends StatelessWidget {
  final String iconPath;
  final String label;

  const ActionButton({required this.iconPath, required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          padding: const EdgeInsets.all(15),
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            border: Border.all(color: Theme.of(context).primaryColor, width: 2),
          ),
          child: Image.asset(
            iconPath,
            height: 40,
            width: 40,
          ),
        ),
        const SizedBox(height: 8),
        Text(
          label,
          style: const TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
        ),
      ],
    );
  }
}

class StatusBadge extends StatelessWidget {
  final String label;

  const StatusBadge({required this.label, Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 8, vertical: 4),
      decoration: BoxDecoration(
        color: Theme.of(context).primaryColor,
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(
        label,
        style: const TextStyle(
          color: Colors.black,
          fontWeight: FontWeight.bold,
        ),
      ),
    );
  }
}

class CustomBottomNavigationBar extends StatelessWidget {
  const CustomBottomNavigationBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      decoration: BoxDecoration(
        color: Theme.of(context).hintColor,
        border: Border(
          top: BorderSide(color: Colors.grey.shade300),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          IconButton(
            icon: const Icon(Icons.home, color: Colors.grey),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.notifications, color: Colors.grey),
            onPressed: () {},
          ),
          IconButton(
            icon: const Icon(Icons.message, color: Colors.grey),
            onPressed: () {},
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20),
              ),
            ),
            child: Text(
              context.loc.menu,
              style: const TextStyle(color: Colors.black),
            ),
          ),
        ],
      ),
    );
  }
}
