import 'package:flutter/material.dart';
import 'package:mr_orange_store/common/widgets/appbar/appbar.dart';
import 'package:mr_orange_store/common/widgets/products/rating/rating_indicator.dart';
import 'package:mr_orange_store/features/shop/screens/product_reviews/widgets/rating_progress_indicator.dart';
import 'package:mr_orange_store/features/shop/screens/product_reviews/widgets/user_review_card.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';

class ProductReviewsScreen extends StatelessWidget {
  const ProductReviewsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Product & Ratings',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            OSizes.defaultSpace,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                'Ratings and reviews are verified and are from people who use the same type of device that you use.',
              ),
              const SizedBox(
                height: OSizes.spaceBtwItems,
              ),
              const OverallProductRating(),
              const CustomRatingBarIndicator(
                rating: 3.5,
              ),
              Text(
                '122,611',
                style: Theme.of(context).textTheme.bodySmall,
              ),
              const SizedBox(
                height: OSizes.spaceBtwSections,
              ),
              const UserReviewCard(),
              const UserReviewCard()
            ],
          ),
        ),
      ),
    );
  }
}
