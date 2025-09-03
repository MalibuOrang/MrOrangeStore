import 'package:flutter/material.dart';
import 'package:mr_orange_store/common/widgets/images/circular_image.dart';
import 'package:mr_orange_store/utils/constants/colors.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';
import 'package:mr_orange_store/utils/helpers/helper_functions.dart';

class VerticalImageText extends StatelessWidget {
  const VerticalImageText({
    super.key,
    required this.image,
    required this.title,
    this.textColor = TColors.white,
    this.isNetworkImage = true,
    this.backgroundColor,
    this.onTap,
  });
  final String image, title;
  final Color textColor;
  final Color? backgroundColor;
  final bool isNetworkImage;
  final void Function()? onTap;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Padding(
        padding: const EdgeInsets.only(
          right: OSizes.spaceBtwItems,
        ),
        child: Column(
          children: [
            CircularImage(
              image: image,
              fit: BoxFit.fitWidth,
              padding: OSizes.sm * 1.4,
              isNetworkImage: isNetworkImage,
              backgroundColor: backgroundColor,
              overlayColor: THelperFunctions.isDarkMode(context)
                  ? TColors.light
                  : TColors.dark,
            ),
            const SizedBox(
              height: OSizes.spaceBtwItems / 2,
            ),
            SizedBox(
              width: 55,
              child: Text(
                title,
                style: Theme.of(context).textTheme.labelMedium!.apply(
                      color: textColor,
                    ),
                maxLines: 1,
                overflow: TextOverflow.ellipsis,
              ),
            )
          ],
        ),
      ),
    );
  }
}
