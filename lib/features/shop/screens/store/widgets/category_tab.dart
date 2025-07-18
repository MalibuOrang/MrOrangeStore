import 'package:flutter/material.dart';
import 'package:mr_orange_store/common/widgets/brands/brand_card.dart';
import 'package:mr_orange_store/common/widgets/layouts/grid_layout.dart';
import 'package:mr_orange_store/common/widgets/products/card/product_cards/product_card_vertical.dart';
import 'package:mr_orange_store/common/widgets/text/section_heading.dart';
import 'package:mr_orange_store/utils/constants/image_strings.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';

class CategoryTab extends StatelessWidget {
  const CategoryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      shrinkWrap: true,
      physics: const NeverScrollableScrollPhysics(),
      children: [
        Padding(
          padding: const EdgeInsets.all(OSizes.defaultSpace),
          child: Column(
            children: [
              const BrandShowcase(images: [
                TImages.productImage3,
                TImages.productImage2,
                TImages.productImage1
              ]),
              const BrandShowcase(images: [
                TImages.productImage3,
                TImages.productImage2,
                TImages.productImage1
              ]),
              const SizedBox(
                height: OSizes.spaceBtwItems,
              ),
              SectionHeading(
                title: 'You might like',
                showActionButton: true,
                onPressed: () {},
              ),
              const SizedBox(
                height: OSizes.spaceBtwItems,
              ),
              GridLayout(
                  itemCount: 4,
                  itemBuilder: (_, index) {
                    return const ProductCardVertical();
                  }),
              const SizedBox(
                height: OSizes.spaceBtwSections,
              ),
            ],
          ),
        ),
      ],
    );
  }
}
