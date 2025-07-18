import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mr_orange_store/common/styles/shadows.dart';
import 'package:mr_orange_store/common/widgets/containers/rounded_container.dart';
import 'package:mr_orange_store/common/widgets/icons/circular_icon.dart';
import 'package:mr_orange_store/common/widgets/images/rounded_banner.dart';
import 'package:mr_orange_store/common/widgets/text/brand_title_with_icon.dart';
import 'package:mr_orange_store/common/widgets/text/product_price_text.dart';
import 'package:mr_orange_store/common/widgets/text/product_title_text.dart';
import 'package:mr_orange_store/features/shop/screens/product_details/product_details.dart';
import 'package:mr_orange_store/utils/constants/colors.dart';
import 'package:mr_orange_store/utils/constants/image_strings.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';
import 'package:mr_orange_store/utils/helpers/helper_functions.dart';

class ProductCardVertical extends StatelessWidget {
  const ProductCardVertical({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return GestureDetector(
      onTap: () => Get.to(() => const ProductDetailsScreen()),
      child: Container(
        width: 180,
        padding: const EdgeInsets.all(1),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(OSizes.productImageRadius),
          color: dark ? TColors.darkGrey : TColors.white,
          boxShadow: [ShadowStyle.verticalProductShadow],
        ),
        child: Column(
          children: [
            RoundedContainer(
              height: 180,
              padding: const EdgeInsets.all(OSizes.sm),
              backgroundColor: dark ? TColors.darkGrey : TColors.white,
              child: Stack(
                children: [
                  const RoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),
                  Positioned(
                    top: 12,
                    child: RoundedContainer(
                      radius: OSizes.sm,
                      backgroundColor: TColors.secondary.withOpacity(0.8),
                      padding: const EdgeInsets.symmetric(
                        horizontal: OSizes.sm,
                        vertical: OSizes.xs,
                      ),
                      child: Text(
                        '25%',
                        style: Theme.of(context).textTheme.labelLarge!.apply(
                              color: TColors.black,
                            ),
                      ),
                    ),
                  ),
                  const Positioned(
                    top: 0,
                    right: 0,
                    child: CustomCircularIcon(
                      icon: Iconsax.heart5,
                      color: Colors.red,
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: OSizes.spaceBtwItems / 2,
            ),
            const Padding(
              padding: EdgeInsets.only(
                left: OSizes.sm,
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  ProductTitleText(
                    title: 'Green Nike Air Shoes',
                    smallSize: true,
                  ),
                  SizedBox(
                    height: OSizes.spaceBtwItems / 2,
                  ),
                  BrandTitleWithVerifiedIcon(title: 'Nike')
                ],
              ),
            ),
            const Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                const Padding(
                  padding: EdgeInsets.only(left: OSizes.sm),
                  child: ProductPriceText(
                    price: '35.0',
                    isLarge: true,
                  ),
                ),
                Container(
                  decoration: const BoxDecoration(
                    color: TColors.dark,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(OSizes.cardRadiusMd),
                      bottomRight: Radius.circular(
                        OSizes.productImageRadius,
                      ),
                    ),
                  ),
                  child: const SizedBox(
                    width: OSizes.iconLg * 1.2,
                    height: OSizes.iconLg * 1.2,
                    child: Center(
                      child: Icon(
                        Iconsax.add,
                        color: TColors.white,
                      ),
                    ),
                  ),
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
