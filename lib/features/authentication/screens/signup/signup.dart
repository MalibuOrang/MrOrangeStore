import 'package:flutter/material.dart';
import 'package:get/get_utils/get_utils.dart';
import 'package:mr_orange_store/features/authentication/screens/widgets/form_divider.dart';
import 'package:mr_orange_store/features/authentication/screens/widgets/social_buttons.dart';
import 'package:mr_orange_store/features/authentication/screens/signup/widgets/signup_form.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';
import 'package:mr_orange_store/utils/constants/text_strings.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            OSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                TTexts.signupTitle,
                style: Theme.of(context).textTheme.headlineMedium,
              ),
              const SizedBox(
                height: OSizes.spaceBtwSections,
              ),
              const SignupForm(),
              FormDivider(dividerText: TTexts.orSignUpWith.capitalize!),
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
