import 'package:flutter/material.dart';
import 'package:iconsax/iconsax.dart';
import 'package:mr_orange_store/common/widgets/icons/circular_icon.dart';
import 'package:mr_orange_store/utils/constants/colors.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';
import 'package:mr_orange_store/utils/helpers/helper_functions.dart';

class BottomAddToCardButton extends StatelessWidget {
  const BottomAddToCardButton({super.key});

  @override
  Widget build(BuildContext context) {
    final dark = THelperFunctions.isDarkMode(context);
    return Container(
      padding: const EdgeInsets.symmetric(
        horizontal: OSizes.defaultSpace,
        vertical: OSizes.defaultSpace / 2,
      ),
      decoration: BoxDecoration(
        color: dark ? TColors.darkGrey : TColors.light,
        borderRadius: const BorderRadius.only(
          topLeft: Radius.circular(OSizes.cardRadiusLg),
          topRight: Radius.circular(OSizes.cardRadiusLg),
        ),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              CustomCircularIcon(
                icon: Iconsax.minus,
                width: 40,
                height: 40,
                backgroundColor: TColors.darkGrey,
                color: TColors.white,
                onPressed: () {},
              ),
              const SizedBox(
                width: OSizes.spaceBtwItems,
              ),
              Text(
                '2',
                style: Theme.of(context).textTheme.titleSmall,
              ),
              const SizedBox(
                width: OSizes.spaceBtwItems,
              ),
              CustomCircularIcon(
                icon: Iconsax.add,
                width: 40,
                height: 40,
                backgroundColor: TColors.black,
                color: TColors.white,
                onPressed: () {},
              ),
            ],
          ),
          ElevatedButton(
            onPressed: () {},
            style: ElevatedButton.styleFrom(
              padding: const EdgeInsets.all(OSizes.md),
              backgroundColor: TColors.black,
              side: const BorderSide(
                color: TColors.black,
              ),
            ),
            child: const Text('Add to Card'),
          )
        ],
      ),
    );
  }
}
