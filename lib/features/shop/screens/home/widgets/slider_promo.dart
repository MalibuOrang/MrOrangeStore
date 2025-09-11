import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_orange_store/common/widgets/containers/circular_container.dart';
import 'package:mr_orange_store/common/widgets/images/rounded_banner.dart';
import 'package:mr_orange_store/common/widgets/shimmer/shimmer.dart';
import 'package:mr_orange_store/features/shop/controllers/banner_controller.dart';
import 'package:mr_orange_store/utils/constants/colors.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';

class PromoSlider extends StatelessWidget {
  const PromoSlider({
    super.key,
  });
  @override
  Widget build(BuildContext context) {
    final controller = Get.put(BannerController());
    return Obx(
      () {
        if (controller.isLoading.value) {
          return const TShimmerEffect(
            width: double.infinity,
            height: 190,
          );
        }
        if (controller.banners.isEmpty) {
          return const Center(
            child: Text('No Data Found!'),
          );
        } else {
          return Column(
            children: [
              CarouselSlider(
                items: controller.banners
                    .map(
                      (banner) => RoundedImage(
                        imageUrl: banner.imageUrl,
                        isNetworkImage: true,
                        onPressed: () => Get.toNamed(banner.targetScreen),
                      ),
                    )
                    .toList(),
                options: CarouselOptions(
                  viewportFraction: 1,
                  onPageChanged: (index, _) =>
                      controller.updatePageIndicator(index),
                ),
              ),
              const SizedBox(
                height: OSizes.spaceBtwItems,
              ),
              Obx(
                () => Center(
                  child: Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      for (int i = 0; i < controller.banners.length; i++)
                        CircularContainer(
                          width: 20,
                          height: 4,
                          margin: const EdgeInsets.only(right: 10),
                          backgroundColor:
                              controller.carouselCurrentIndex.value == i
                                  ? TColors.primary
                                  : Colors.grey,
                        ),
                    ],
                  ),
                ),
              )
            ],
          );
        }
      },
    );
  }
}
