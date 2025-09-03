import 'package:flutter/material.dart';
import 'package:mr_orange_store/common/widgets/shimmer/shimmer.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';

class CategoryShimmer extends StatelessWidget {
  const CategoryShimmer({
    super.key,
    this.itemCount = 6,
  });
  final int itemCount;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.separated(
          shrinkWrap: true,
          scrollDirection: Axis.horizontal,
          itemBuilder: (_, __) {
            return const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                TShimmerEffect(
                  width: 55,
                  height: 55,
                  radius: 55,
                ),
                SizedBox(
                  height: OSizes.spaceBtwItems / 2,
                ),
                TShimmerEffect(width: 55, height: 8),
              ],
            );
          },
          separatorBuilder: (_, __) {
            return const SizedBox(
              width: OSizes.spaceBtwItems,
            );
          },
          itemCount: itemCount),
    );
  }
}
