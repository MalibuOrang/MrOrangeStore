import 'package:flutter/material.dart';
import 'package:mr_orange_store/common/widgets/products/card/add_remove_button.dart';
import 'package:mr_orange_store/common/widgets/products/card/card_items.dart';
import 'package:mr_orange_store/common/widgets/text/product_price_text.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';

class CardItems extends StatelessWidget {
  const CardItems({
    super.key,
    this.showAddRemoveButtons = true,
  });
  final bool showAddRemoveButtons;
  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      shrinkWrap: true,
      itemCount: 4,
      itemBuilder: (_, __) {
        return const SizedBox(
          height: OSizes.spaceBtwSections,
        );
      },
      separatorBuilder: (_, index) => Column(
        children: [
          const CardItem(),
          if (showAddRemoveButtons)
            const SizedBox(
              height: OSizes.spaceBtwItems,
            ),
          if (showAddRemoveButtons)
            const Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Row(
                  children: [
                    SizedBox(width: 70),
                    ProductQuantityWithAddAndRemoveButton(),
                  ],
                ),
                ProductPriceText(price: '256'),
              ],
            )
        ],
      ),
    );
  }
}
