import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mr_orange_store/common/widgets/text/section_heading.dart';
import 'package:mr_orange_store/features/shop/screens/product_details/widgets/bottom_add_to_card.dart';
import 'package:mr_orange_store/features/shop/screens/product_details/widgets/product_attributes.dart';
import 'package:mr_orange_store/features/shop/screens/product_details/widgets/product_detail_image_slider.dart';
import 'package:mr_orange_store/features/shop/screens/product_details/widgets/product_meta_data.dart';
import 'package:mr_orange_store/features/shop/screens/product_details/widgets/raiting_share_widget.dart';
import 'package:mr_orange_store/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';
import 'package:readmore/readmore.dart';

class ProductDetailsScreen extends StatelessWidget {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomNavigationBar: const BottomAddToCardButton(),
      body: SingleChildScrollView(
        child: Column(
          children: [
            const ProductImageSlider(),
            Padding(
              padding: const EdgeInsets.only(
                  right: OSizes.defaultSpace,
                  left: OSizes.defaultSpace,
                  bottom: OSizes.defaultSpace),
              child: Column(
                children: [
                  const RatingAndShare(),
                  const ProductMetaData(),
                  const SizedBox(
                    height: OSizes.spaceBtwItems,
                  ),
                  const ProductAttributes(),
                  const SizedBox(
                    height: OSizes.spaceBtwSections,
                  ),
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton(
                      onPressed: () {},
                      child: const Text('Checkout'),
                    ),
                  ),
                  const SizedBox(
                    height: OSizes.spaceBtwSections,
                  ),
                  const SectionHeading(
                      title: 'Description', showActionButton: false),
                  const SizedBox(
                    height: OSizes.spaceBtwItems,
                  ),
                  const ReadMoreText(
                    'This is a product description for Blue Nike Sleeve less vest. There are more things than can be added but i am not going to add them.',
                    trimLines: 2,
                    trimMode: TrimMode.Line,
                    trimCollapsedText: ' Show more',
                    trimExpandedText: ' Less',
                    moreStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                    lessStyle:
                        TextStyle(fontSize: 14, fontWeight: FontWeight.w800),
                  ),
                  const Divider(),
                  const SizedBox(height: OSizes.spaceBtwItems),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SectionHeading(
                        title: 'Reviews(199)',
                        onPressed: () {},
                        showActionButton: false,
                      ),
                      IconButton(
                        onPressed: () =>
                            Get.to(() => const ProductReviewsScreen()),
                        icon: const Icon(
                          Iconsax.arrow_right_3,
                          size: 18,
                        ),
                      )
                    ],
                  ),
                  const SizedBox(height: OSizes.spaceBtwSections),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
