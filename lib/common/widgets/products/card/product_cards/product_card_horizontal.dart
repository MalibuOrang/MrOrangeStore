import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mr_orange_store/common/widgets/containers/rounded_container.dart';
import 'package:mr_orange_store/common/widgets/icons/circular_icon.dart';
import 'package:mr_orange_store/common/widgets/images/rounded_banner.dart';
import 'package:mr_orange_store/common/widgets/text/brand_title_with_icon.dart';
import 'package:mr_orange_store/common/widgets/text/product_price_text.dart';
import 'package:mr_orange_store/common/widgets/text/product_title_text.dart';
import 'package:mr_orange_store/utils/constants/colors.dart';
import 'package:mr_orange_store/utils/constants/image_strings.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';
import 'package:mr_orange_store/utils/helpers/helper_functions.dart';

class ProductCardHorizontal extends StatelessWidget {
  const ProductCardHorizontal({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      width: 310,
      padding: const EdgeInsets.all(1),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(OSizes.productImageRadius),
        color: dark ? TColors.darkGrey : TColors.softGrey,
      ),
      child: Row(
        children: [
          RoundedContainer(
            height: 120,
            padding: const EdgeInsets.all(OSizes.sm),
            backgroundColor: dark ? TColors.dark : TColors.light,
            child: Stack(
              children: [
                const SizedBox(
                  height: 120,
                  width: 120,
                  child: RoundedImage(
                    imageUrl: TImages.productImage1,
                    applyImageRadius: true,
                  ),
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
          SizedBox(
            width: 172,
            child: Padding(
              padding: const EdgeInsets.only(
                top: OSizes.sm,
                left: OSizes.sm,
              ),
              child: Column(
                children: [
                  const Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      ProductTitleText(
                        title: 'Green Nike Half Sleeves Shirt',
                        smallSize: true,
                      ),
                      SizedBox(
                        height: OSizes.spaceBtwItems / 2,
                      ),
                      BrandTitleWithVerifiedIcon(title: 'Nike'),
                    ],
                  ),
                  const Spacer(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Flexible(
                        child: ProductPriceText(price: '256.0'),
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
          )
        ],
      ),
    );
  }
}
