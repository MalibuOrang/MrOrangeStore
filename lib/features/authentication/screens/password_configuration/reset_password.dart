import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/get_core.dart';
import 'package:get/get_navigation/get_navigation.dart';
import 'package:mr_orange_store/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:mr_orange_store/features/authentication/screens/login/login_screen.dart';
import 'package:mr_orange_store/utils/constants/image_strings.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';
import 'package:mr_orange_store/utils/constants/text_strings.dart';
import 'package:mr_orange_store/utils/helpers/helper_functions.dart';

class ResetPassword extends StatelessWidget {
  const ResetPassword({
    super.key,
    required this.email,
  });
  final String email;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        automaticallyImplyLeading: false,
        actions: [
          IconButton(
            onPressed: () => Get.back(),
            icon: const Icon(
              CupertinoIcons.clear,
            ),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            OSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Image(
                image: const AssetImage(
                  TImages.deliveredEmailIllustration,
                ),
                width: THelperFunctions.screenWidth() * 0.6,
              ),
              const SizedBox(
                height: OSizes.spaceBtwSections,
              ),
              Text(
                email,
                style: Theme.of(context).textTheme.bodyMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: OSizes.spaceBtwItems,
              ),
              Text(
                TTexts.changeYourPasswordTitle,
                style: Theme.of(context).textTheme.headlineMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: OSizes.spaceBtwItems,
              ),
              Text(
                TTexts.changeYourPasswordSubTitle,
                style: Theme.of(context).textTheme.labelMedium,
                textAlign: TextAlign.center,
              ),
              const SizedBox(
                height: OSizes.spaceBtwSections,
              ),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () => Get.offAll(() => const LoginScreen()),
                  child: const Text(
                    TTexts.done,
                  ),
                ),
              ),
              const SizedBox(
                height: OSizes.spaceBtwItems,
              ),
              TextButton(
                onPressed: () => ForgetPasswordController.instance
                    .resentPasswordResetEmail(email),
                child: const Text(
                  TTexts.resendEmail,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
