import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:mr_orange_store/common/styles/spacing_styles.dart';
import 'package:mr_orange_store/features/authentication/screens/widgets/form_divider.dart';
import 'package:mr_orange_store/features/authentication/screens/login/widgets/login_form.dart';
import 'package:mr_orange_store/features/authentication/screens/login/widgets/login_header.dart';
import 'package:mr_orange_store/features/authentication/screens/widgets/social_buttons.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';
import 'package:mr_orange_store/utils/constants/text_strings.dart';
import 'package:mr_orange_store/utils/helpers/helper_functions.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: TSpacingStyle.defaultPadding,
          child: Column(
            children: [
              LoginHeader(dark: dark),
              const LoginForm(),
              FormDivider(
                dividerText: TTexts.orSignInWith.capitalize!,
              ),
              const SizedBox(
                height: OSizes.spaceBtwSections,
              ),
              const SocialButtons(),
            ],
          ),
        ),
      ),
    );
  }
}
