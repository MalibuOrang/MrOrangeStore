import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_orange_store/common/widgets/appbar/appbar.dart';
import 'package:mr_orange_store/features/shop/screens/card/widgets/card_items.dart';
import 'package:mr_orange_store/features/shop/screens/checkout/checkout.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';

class CardScreen extends StatelessWidget {
  const CardScreen({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Card',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: const Padding(
        padding: EdgeInsets.all(
          OSizes.defaultSpace,
        ),
        child: CardItems(),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(
          OSizes.defaultSpace,
        ),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => const CheckoutScreen(),
          ),
          child: const Text(
            'Checkout \$256.0',
          ),
        ),
      ),
    );
  }
}
