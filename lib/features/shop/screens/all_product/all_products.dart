import 'package:flutter/material.dart';
import 'package:mr_orange_store/common/widgets/appbar/appbar.dart';
import 'package:mr_orange_store/common/widgets/products/sortable/sortable_product.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';

class AllProducts extends StatelessWidget {
  const AllProducts({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Popular Products',
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.all(
            OSizes.defaultSpace,
          ),
          child: SortableProducts(),
        ),
      ),
    );
  }
}
