import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:mr_orange_store/common/widgets/image_text_widget/vertical_image_text.dart';
import 'package:mr_orange_store/features/shop/screens/sub_category/sub_categories.dart';
import 'package:mr_orange_store/utils/constants/image_strings.dart';

class HomeCategories extends StatelessWidget {
  const HomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 80,
      child: ListView.builder(
        shrinkWrap: true,
        itemCount: 6,
        scrollDirection: Axis.horizontal,
        itemBuilder: (context, index) {
          return VerticalImageText(
            image: TImages.shoeIcon,
            title: 'Shoes',
            onTap: () => Get.to(
              () => const SubCategoriesSceen(),
            ),
          );
        },
      ),
    );
  }
}
