import 'package:flutter/material.dart';
import 'package:mr_orange_store/common/widgets/appbar/appbar.dart';
import 'package:mr_orange_store/common/widgets/products/card/brand_card.dart';
import 'package:mr_orange_store/common/widgets/products/sortable/sortable_product.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';

class BrandProducts extends StatelessWidget {
  const BrandProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        title: Text('Nike'),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(OSizes.defaultSpace),
          child: Column(
            children: [
              BrandCard(showBorder: true),
              SizedBox(
                height: OSizes.spaceBtwSections,
              ),
              SortableProducts()
            ],
          ),
        ),
      ),
    );
  }
}
