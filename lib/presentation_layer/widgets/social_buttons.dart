import 'package:flutter/cupertino.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sampleproject/presentation_layer/bloc/locale_bloc/locale_bloc.dart';
import 'package:sampleproject/presentation_layer/widgets/social_button.dart';

class SocialButtons extends StatelessWidget {
  const SocialButtons({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        SocialButton(assetPath: "assets/images/facebook.png", onPressed: () {
          // Provider.of<LocaleProvider>(context,listen: false).changeLocale(const Locale("es"));

          // Handle Facebook login action
        }),
        const SizedBox(width: 10),
        SocialButton(assetPath: "assets/images/google.png", onPressed: () {
          // Handle Google login action
          context.read<LocaleBloc>().add(
            const LocaleEvent.changeLocale(Locale('en')),  // Change to French
          );
          // context.read<LocaleProvider>().changeLocale(const Locale("en"));
        }),
      ],
    );
  }
}