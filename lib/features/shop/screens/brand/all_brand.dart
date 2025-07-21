import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_orange_store/common/widgets/appbar/appbar.dart';
import 'package:mr_orange_store/common/widgets/layouts/grid_layout.dart';
import 'package:mr_orange_store/common/widgets/products/card/brand_card.dart';
import 'package:mr_orange_store/common/widgets/text/section_heading.dart';
import 'package:mr_orange_store/features/shop/screens/brand/brand_products.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';

class AllBrandsScreen extends StatelessWidget {
  const AllBrandsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const CustomAppBar(
        title: Text('Brand'),
        showBackArrow: true,
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(OSizes.defaultSpace),
          child: Column(
            children: [
              const SectionHeading(title: 'Brands'),
              const SizedBox(
                height: OSizes.spaceBtwItems,
              ),
              GridLayout(
                itemCount: 10,
                mainAxisExtent: 80,
                itemBuilder: (context, index) => BrandCard(
                  showBorder: true,
                  onTap: () => Get.to(
                    () => const BrandProducts(),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
