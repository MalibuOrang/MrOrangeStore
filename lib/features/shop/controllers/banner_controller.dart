import 'package:get/get.dart';
import 'package:mr_orange_store/data/repositories/banners/banner_repository.dart';
import 'package:mr_orange_store/features/shop/controllers/home_controller.dart';
import 'package:mr_orange_store/features/shop/models/banner_model.dart';
import 'package:mr_orange_store/utils/popups/loaders.dart';

class BannerController extends GetxController {
  static HomeController get instance => Get.find();
  final RxList<BannerModel> banners = <BannerModel>[].obs;
  final isLoading = false.obs;
  final carouselCurrentIndex = 0.obs;
  void updatePageIndicator(index) {
    carouselCurrentIndex.value = index;
  }

  @override
  onInit() {
    fetchBanners();
    super.onInit();
  }

  Future<void> fetchBanners() async {
    try {
      isLoading.value = true;
      final bannerRepo = Get.put(BannerRepository());
      final banners = await bannerRepo.fetchBanners();
      this.banners.assignAll(banners);
    } catch (e) {
      TLoaders.errorSnackBar(title: 'Oh Snap!', message: e.toString());
    } finally {
      isLoading.value = false;
    }
  }
}
