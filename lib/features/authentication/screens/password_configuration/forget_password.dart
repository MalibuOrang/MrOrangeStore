import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mr_orange_store/features/authentication/controllers/forget_password/forget_password_controller.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';
import 'package:mr_orange_store/utils/constants/text_strings.dart';
import 'package:mr_orange_store/utils/validators/validation.dart';

class ForgetPassword extends StatelessWidget {
  const ForgetPassword({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(ForgetPasswordController());
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(
          OSizes.defaultSpace,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              TTexts.forgetPasswordTitle,
              style: Theme.of(context).textTheme.headlineMedium,
            ),
            const SizedBox(
              height: OSizes.spaceBtwItems,
            ),
            Text(
              TTexts.forgetPasswordSubTitle,
              style: Theme.of(context).textTheme.labelMedium,
            ),
            const SizedBox(
              height: OSizes.spaceBtwSections * 2,
            ),
            Form(
              key: controller.forgetPasswordFormKey,
              child: TextFormField(
                controller: controller.email,
                validator: TValidator.validateEmail,
                decoration: const InputDecoration(
                  labelText: TTexts.email,
                  prefixIcon: Icon(
                    Iconsax.direct_right,
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: OSizes.spaceBtwSections,
            ),
            SizedBox(
              width: double.infinity,
              child: ElevatedButton(
                onPressed: () => controller.sendPasswordResetEmail(),
                child: const Text(TTexts.submit),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
