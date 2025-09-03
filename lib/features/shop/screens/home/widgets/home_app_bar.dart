import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_orange_store/common/widgets/appbar/appbar.dart';
import 'package:mr_orange_store/common/widgets/products/card/cart_menu_icon.dart';
import 'package:mr_orange_store/features/authentication/controllers/user/user_controller.dart';
import 'package:mr_orange_store/common/widgets/shimmer/shimmer.dart';
import 'package:mr_orange_store/utils/constants/colors.dart';
import 'package:mr_orange_store/utils/constants/text_strings.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final controller = Get.put(UserController());
    return CustomAppBar(
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            TTexts.homeAppbarTitle,
            style: Theme.of(context).textTheme.labelMedium!.apply(
                  color: TColors.grey,
                ),
          ),
          Obx(
            () {
              if (controller.profileLoading.value) {
                return const TShimmerEffect(width: 80, height: 16);
              } else {
                return Text(
                  controller.user.value.fullName,
                  style: Theme.of(context).textTheme.headlineSmall!.apply(
                        color: TColors.white,
                      ),
                );
              }
            },
          ),
        ],
      ),
      actions: [
        CartCounterIcon(
          onPressed: () {},
          iconColor: TColors.white,
        )
      ],
    );
  }
}
