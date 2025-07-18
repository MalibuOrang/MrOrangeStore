import 'package:flutter/material.dart';
import 'package:mr_orange_store/common/widgets/containers/primary_header_container.dart';
import 'package:mr_orange_store/common/widgets/containers/search_container.dart';
import 'package:mr_orange_store/common/widgets/layouts/grid_layout.dart';
import 'package:mr_orange_store/common/widgets/products/card/product_cards/product_card_vertical.dart';
import 'package:mr_orange_store/common/widgets/text/section_heading.dart';
import 'package:mr_orange_store/features/shop/screens/home/widgets/home_app_bar.dart';
import 'package:mr_orange_store/features/shop/screens/home/widgets/home_categories.dart';
import 'package:mr_orange_store/features/shop/screens/home/widgets/slider_promo.dart';
import 'package:mr_orange_store/utils/constants/colors.dart';
import 'package:mr_orange_store/utils/constants/image_strings.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            const PrimaryHeaderContainer(
              child: Column(
                children: [
                  HomeAppBar(),
                  SizedBox(
                    height: OSizes.spaceBtwSections,
                  ),
                  SearchContainer(
                    text: "Search in Store",
                  ),
                  SizedBox(
                    height: OSizes.spaceBtwSections,
                  ),
                  Padding(
                    padding: EdgeInsets.only(left: OSizes.defaultSpace),
                    child: Column(
                      children: [
                        SectionHeading(
                          title: 'Popular Categories',
                          showActionButton: false,
                          color: TColors.white,
                        ),
                        SizedBox(
                          height: OSizes.spaceBtwItems,
                        ),
                        HomeCategories()
                      ],
                    ),
                  ),
                  SizedBox(
                    height: OSizes.spaceBtwSections,
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(OSizes.defaultSpace),
              child: Column(
                children: [
                  const PromoSlider(
                    banners: [
                      TImages.promoBanner1,
                      TImages.promoBanner2,
                      TImages.promoBanner3,
                    ],
                  ),
                  const SizedBox(
                    height: OSizes.spaceBtwSections,
                  ),
                  SectionHeading(
                    title: 'Popular Products',
                    onPressed: () {},
                  ),
                  const SizedBox(
                    height: OSizes.spaceBtwItems,
                  ),
                  GridLayout(
                    itemCount: 2,
                    itemBuilder: (_, index) {
                      return const ProductCardVertical();
                    },
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
