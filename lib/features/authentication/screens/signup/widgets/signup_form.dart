import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mr_orange_store/features/authentication/controllers/signup/signup_controller.dart';
import 'package:mr_orange_store/features/authentication/screens/signup/widgets/term_and_conditions.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';
import 'package:mr_orange_store/utils/constants/text_strings.dart';
import 'package:mr_orange_store/utils/validators/validation.dart';

class SignupForm extends StatelessWidget {
  const SignupForm({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(SignupController());
    return Form(
      key: controller.signupFormKey,
      child: Column(
        children: [
          Row(
            children: [
              Expanded(
                child: TextFormField(
                  controller: controller.firstName,
                  validator: (value) {
                    return TValidator.validateEmptyText('First name', value);
                  },
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.firstName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
              const SizedBox(
                width: OSizes.spaceBtwInputFields,
              ),
              Expanded(
                child: TextFormField(
                  controller: controller.lastName,
                  validator: (value) {
                    return TValidator.validateEmptyText('Last name', value);
                  },
                  expands: false,
                  decoration: const InputDecoration(
                    labelText: TTexts.lastName,
                    prefixIcon: Icon(Iconsax.user),
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: OSizes.spaceBtwItems,
          ),
          TextFormField(
            controller: controller.username,
            validator: (value) {
              return TValidator.validateEmptyText('Username', value);
            },
            decoration: const InputDecoration(
              labelText: TTexts.username,
              prefixIcon: Icon(Iconsax.user_edit),
            ),
          ),
          const SizedBox(
            height: OSizes.spaceBtwItems,
          ),
          TextFormField(
            controller: controller.email,
            validator: (value) {
              return TValidator.validateEmail(value);
            },
            decoration: const InputDecoration(
              labelText: TTexts.email,
              prefixIcon: Icon(Iconsax.direct),
            ),
          ),
          const SizedBox(
            height: OSizes.spaceBtwItems,
          ),
          TextFormField(
            controller: controller.phoneNumber,
            validator: (value) {
              return TValidator.validatePhoneNumber(value);
            },
            decoration: const InputDecoration(
              labelText: TTexts.phoneNo,
              prefixIcon: Icon(Iconsax.call),
            ),
          ),
          const SizedBox(
            height: OSizes.spaceBtwItems,
          ),
          Obx(
            () => TextFormField(
              controller: controller.password,
              validator: (value) {
                return TValidator.validatePassword(value);
              },
              obscureText: controller.hidePassword.value,
              decoration: InputDecoration(
                labelText: TTexts.password,
                prefixIcon: const Icon(Iconsax.password_check),
                suffixIcon: IconButton(
                  icon: Icon(
                    controller.hidePassword.value
                        ? Iconsax.eye_slash
                        : Iconsax.eye,
                  ),
                  onPressed: () => controller.hidePassword.value =
                      !controller.hidePassword.value,
                ),
              ),
            ),
          ),
          const SizedBox(
            height: OSizes.spaceBtwItems,
          ),
          const TermsAndConditionCheckbox(),
          const SizedBox(
            height: OSizes.spaceBtwItems,
          ),
          SizedBox(
            width: double.infinity,
            child: ElevatedButton(
              onPressed: () => controller.signup(),
              child: const Text(
                TTexts.createAccount,
              ),
            ),
          ),
          const SizedBox(
            height: OSizes.spaceBtwItems,
          ),
        ],
      ),
    );
  }
}
