import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mr_orange_store/common/widgets/appbar/appbar.dart';
import 'package:mr_orange_store/common/widgets/images/circular_image.dart';
import 'package:mr_orange_store/common/widgets/text/section_heading.dart';
import 'package:mr_orange_store/features/authentication/controllers/user/user_controller.dart';
import 'package:mr_orange_store/features/pesonalization/screens/profile/change_name.dart';
import 'package:mr_orange_store/utils/constants/image_strings.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';

import 'profile_menu.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = UserController.instance;
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Profile'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(OSizes.defaultSpace),
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                child: Column(
                  children: [
                    const CircularImage(
                      image: TImages.user,
                      width: 80,
                      height: 80,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: const Text(
                        'Change Profile Picture',
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: OSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: OSizes.spaceBtwItems,
              ),
              const SectionHeading(
                title: 'Profile Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: OSizes.spaceBtwItems,
              ),
              ProfileMenu(
                title: 'Name',
                value: controller.user.value.fullName,
                onPressed: () => Get.to(
                  () => const ChangeName(),
                ),
              ),
              ProfileMenu(
                title: 'Username',
                value: controller.user.value.username,
                onPressed: () {},
              ),
              const SizedBox(
                height: OSizes.spaceBtwItems / 2,
              ),
              const Divider(),
              const SizedBox(
                height: OSizes.spaceBtwItems,
              ),
              const SectionHeading(
                title: 'Personal Information',
                showActionButton: false,
              ),
              const SizedBox(
                height: OSizes.spaceBtwItems,
              ),
              ProfileMenu(
                title: 'User ID',
                value: controller.user.value.id,
                icon: Iconsax.copy,
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'E-mail',
                value: controller.user.value.email,
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'Phone',
                value: controller.user.value.phoneNumber,
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'Gender',
                value: "Male",
                onPressed: () {},
              ),
              ProfileMenu(
                title: 'Date of Bird',
                value: "10 March, 2000",
                onPressed: () {},
              ),
              const Divider(),
              const SizedBox(
                height: OSizes.spaceBtwItems,
              ),
              Center(
                child: TextButton(
                  onPressed: () => controller.deleteAccountWarningPopup(),
                  child: const Text(
                    'Close Account',
                    style: TextStyle(color: Colors.red),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
