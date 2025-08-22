import 'package:flutter/widgets.dart';
import 'package:get/get.dart';
import 'package:mr_orange_store/data/repositories/authentication/authentication_repository.dart';
import 'package:mr_orange_store/features/authentication/screens/password_configuration/reset_password.dart';
import 'package:mr_orange_store/utils/constants/image_strings.dart';
import 'package:mr_orange_store/utils/helpers/network_manager.dart';
import 'package:mr_orange_store/utils/popups/full_screen_loader.dart';
import 'package:mr_orange_store/utils/popups/loaders.dart';

class ForgetPasswordController extends GetxController {
  static ForgetPasswordController get instance => Get.find();
  final email = TextEditingController();
  GlobalKey<FormState> forgetPasswordFormKey = GlobalKey<FormState>();
  Future<void> sendPasswordResetEmail() async {
    try {
      TFullScreenLoader.openLoadingDialog(
          'Processing your request...', TImages.loading);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
      if (!forgetPasswordFormKey.currentState!.validate()) {
        TFullScreenLoader.stopLoading();
        return;
      }
      await AuthenticationRepository.instance.sendPasswordResetEmail(
        email.text.trim(),
      );
      TFullScreenLoader.stopLoading();
      TLoaders.successSnackBar(
        title: 'EmailSent',
        message: 'Email Link Sent to Reset your Password',
      );
      Get.to(
        () => ResetPassword(
          email: email.text.trim(),
        ),
      );
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }

  Future<void> resentPasswordResetEmail(String email) async {
    try {
      TFullScreenLoader.openLoadingDialog(
          'Processing your request...', TImages.loading);
      final isConnected = await NetworkManager.instance.isConnected();
      if (!isConnected) {
        TFullScreenLoader.stopLoading();
        return;
      }
      await AuthenticationRepository.instance.sendPasswordResetEmail(
        email,
      );
      TFullScreenLoader.stopLoading();
      TLoaders.successSnackBar(
        title: 'EmailSent',
        message: 'Email Link Sent to Reset your Password',
      );
    } catch (e) {
      TFullScreenLoader.stopLoading();
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    }
  }
}
