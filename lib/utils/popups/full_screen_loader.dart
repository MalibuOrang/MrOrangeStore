import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constants/colors.dart';
import '../helpers/helper_functions.dart';
import '../loaders/animation_loader.dart';

class TFullScreenLoader {
  static void openLoadingDialog(String text, String animation) {
    showDialog(
      context: Get.overlayContext!,
      barrierDismissible: false,
      builder: (_) => WillPopScope(
        onWillPop: () async => false,
        child: Container(
          color: THelperFunctions.isDarkMode(Get.context!)
              ? TColors.dark
              : TColors.white,
          width: double.infinity,
          height: double.infinity,
          child: Center(
            child: SingleChildScrollView(
                child:
                    TAnimationLoaderWidget(text: text, animation: animation)),
          ),
        ),
      ),
    );
  }

  /// Stop the currently open loading dialog.
  /// This method doesn't return anything.
  static stopLoading() {
    Navigator.of(Get.overlayContext!)
        .pop(); // Close the dialog using the Navigator
  }
}
