import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_orange_store/common/widgets/appbar/appbar.dart';
import 'package:mr_orange_store/common/widgets/containers/rounded_container.dart';
import 'package:mr_orange_store/common/widgets/products/card/coupon_widget.dart';
import 'package:mr_orange_store/common/widgets/success_screen/success_screen.dart';
import 'package:mr_orange_store/features/shop/screens/card/widgets/card_items.dart';
import 'package:mr_orange_store/features/shop/screens/checkout/widgets/billing_address_section.dart';
import 'package:mr_orange_store/features/shop/screens/checkout/widgets/billing_amount_section.dart';
import 'package:mr_orange_store/features/shop/screens/checkout/widgets/billing_payment_section.dart';
import 'package:mr_orange_store/navigation_menu.dart';
import 'package:mr_orange_store/utils/constants/colors.dart';
import 'package:mr_orange_store/utils/constants/image_strings.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';
import 'package:mr_orange_store/utils/helpers/helper_functions.dart';

class CheckoutScreen extends StatelessWidget {
  const CheckoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Scaffold(
      appBar: CustomAppBar(
        showBackArrow: true,
        title: Text(
          'Order Review',
          style: Theme.of(context).textTheme.headlineSmall,
        ),
      ),
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(
            OSizes.defaultSpace,
          ),
          child: Column(
            children: [
              const CardItems(
                showAddRemoveButtons: false,
              ),
              const SizedBox(
                height: OSizes.spaceBtwSections,
              ),
              const CouponCode(),
              const SizedBox(
                height: OSizes.spaceBtwSections,
              ),
              RoundedContainer(
                showBorder: true,
                padding: const EdgeInsets.all(OSizes.md),
                backgroundColor: dark ? TColors.black : TColors.white,
                child: const Column(
                  children: [
                    BillingAmountSection(),
                    SizedBox(
                      height: OSizes.spaceBtwItems,
                    ),
                    Divider(),
                    SizedBox(
                      height: OSizes.spaceBtwItems,
                    ),
                    BillingPaymentSection(),
                    SizedBox(
                      height: OSizes.spaceBtwItems,
                    ),
                    BillingAddressSection(),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.all(
          OSizes.defaultSpace,
        ),
        child: ElevatedButton(
          onPressed: () => Get.to(
            () => SuccessScreen(
              image: TImages.successfulPaymentIcon,
              title: 'Payment Success!',
              subTitle: 'Your item will be shipped soon!',
              onPressed: () => Get.offAll(
                () => const NavigationMenu(),
              ),
            ),
          ),
          child: const Text(
            'Checkout \$256.0',
          ),
        ),
      ),
    );
  }
}
