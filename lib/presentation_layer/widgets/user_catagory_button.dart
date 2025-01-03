// import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class UserCategoryButton extends StatelessWidget {
  const UserCategoryButton({
    super.key,
    required this. onPressed,
    required this. iconPath,
    required this.label ,
    required this. context
  });
  final  VoidCallback onPressed;
  final  String iconPath;
  final  String label;
  final  BuildContext context ;
  @override
  Widget build(BuildContext context) {
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