import 'package:flutter/material.dart';
import 'package:mr_orange_store/common/widgets/appbar/appbar.dart';
import 'package:mr_orange_store/common/widgets/images/rounded_banner.dart';
import 'package:mr_orange_store/common/widgets/products/card/product_cards/product_card_horizontal.dart';
import 'package:mr_orange_store/common/widgets/text/section_heading.dart';
import 'package:mr_orange_store/utils/constants/image_strings.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';

class SubCategoriesSceen extends StatelessWidget {
  const SubCategoriesSceen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Sports shirts'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            OSizes.defaultSpace,
          ),
          child: Column(
            children: [
              const RoundedImage(
                width: double.infinity,
                imageUrl: TImages.promoBanner3,
                applyImageRadius: true,
              ),
              const SizedBox(
                height: OSizes.spaceBtwSections,
              ),
              Column(
                children: [
                  SectionHeading(
                    title: 'Sports shirts',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: OSizes.spaceBtwItems / 2,
                  ),
                  SizedBox(
                    height: 120,
                    child: ListView.separated(
                      itemCount: 4,
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) {
                        return const SizedBox(
                          width: OSizes.spaceBtwItems,
                        );
                      },
                      itemBuilder: (context, index) {
                        return const ProductCardHorizontal();
                      },
                    ),
                  ),
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
