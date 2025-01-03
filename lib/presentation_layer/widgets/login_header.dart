import 'package:flutter/cupertino.dart';
import 'package:sampleproject/l10n/lang_extensions.dart';

class LoginHeader extends StatelessWidget {
  const LoginHeader({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          context.loc.login,
          style: const TextStyle(fontSize: 25, fontWeight: FontWeight.bold),
        ),
        const SizedBox(height: 5),
        Image.asset(
          "assets/images/bar.png",
          width: 50,
          height: 10,
          fit: BoxFit.fill,
        ),
      ],
    );
  }
}