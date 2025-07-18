import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mr_orange_store/common/widgets/appbar/appbar.dart';
import 'package:mr_orange_store/common/widgets/icons/circular_icon.dart';
import 'package:mr_orange_store/common/widgets/layouts/grid_layout.dart';
import 'package:mr_orange_store/common/widgets/products/card/product_cards/product_card_vertical.dart';
import 'package:mr_orange_store/features/shop/screens/home/home.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';

class WishlistScreen extends StatelessWidget {
  const WishlistScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        title: Text(
          'Wishlist',
          style: Theme.of(context).textTheme.headlineMedium,
        ),
        actions: [
          CustomCircularIcon(
            icon: Iconsax.add,
            onPressed: () => Get.to(const HomeScreen()),
          )
        ],
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            OSizes.defaultSpace,
          ),
          child: Column(
            children: [
              GridLayout(
                itemCount: 4,
                itemBuilder: (_, index) {
                  return const ProductCardVertical();
                },
              )
            ],
          ),
        ),
      ),
    );
  }
}
