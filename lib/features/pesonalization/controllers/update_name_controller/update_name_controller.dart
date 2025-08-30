import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_orange_store/data/repositories/user/user_repository.dart';
import 'package:mr_orange_store/features/authentication/controllers/user/user_controller.dart';
import 'package:mr_orange_store/features/pesonalization/screens/profile/widgets/profile.dart';
import 'package:mr_orange_store/utils/constants/image_strings.dart';
import 'package:mr_orange_store/utils/helpers/network_manager.dart';
import 'package:mr_orange_store/utils/popups/full_screen_loader.dart';
import 'package:mr_orange_store/utils/popups/loaders.dart';

class UpdateNameController extends GetxController {
  static UpdateNameController get to => Get.find();
  final firstName = TextEditingController();
  final lastName = TextEditingController();
  final userController = UserController.instance;
  final userRepository = UserRepository.instance;
  GlobalKey<FormState> updateUserNameFormKey = GlobalKey<FormState>();

  @override
  void onInit() {
    initializeNames();
    super.onInit();
  }

  Future<void> initializeNames() async {
    firstName.text = userController.user.value.firstName;
    lastName.text = userController.user.value.lastName;
  }

  Future<void> updateUserName() async {
    try {
      TFullScreenLoader.openLoadingDialog(
          'We are updating your information', TImages.loading);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
      if (!updateUserNameFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }
      Map<String, dynamic> name = {
        'First Name': firstName.text.trim(),
        'Last Name': lastName.text.trim()
      };
      await userRepository.updateSingleField(name);
      userController.user.value.firstName = firstName.text.trim();
      userController.user.value.lastName = lastName.text.trim();
      TFullScreenLoader.stopLoading();
      TLoaders.successSnackBar(
          title: 'Congratulations', message: 'Your Name has been updated.');
      Get.off(() => const ProfileScreen());
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
