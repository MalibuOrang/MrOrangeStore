import 'package:get/get.dart';
import 'package:mr_orange_store/data/repositories/categories/categories_repository.dart';
import 'package:mr_orange_store/features/shop/models/category_model.dart';
import 'package:mr_orange_store/utils/popups/loaders.dart';

class CategoryController extends GetxController {
  static CategoryController get instance => Get.find();
  final isLoading = false.obs;
  final _categoryRepository = Get.put(CategoryRepository());
  final RxList<CategoryModel> allCategories = <CategoryModel>[].obs;
  final RxList<CategoryModel> featuredCategories = <CategoryModel>[].obs;

  @override
  void onInit() {
    fetchCategory();
    super.onInit();
  }

  Future<void> fetchCategory() async {
    try {
      isLoading.value = true;
      final categories = await _categoryRepository.getAllCategories();
      allCategories.assignAll(categories);
      featuredCategories.assignAll(
        allCategories
            .where((categories) =>
                categories.isFeatured && categories.parentId.isEmpty)
            .take(8)
            .toList(),
      );
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
