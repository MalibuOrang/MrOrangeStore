import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:mr_orange_store/features/shop/models/banner_model.dart';
import 'package:mr_orange_store/utils/exceptions/firebase_auth_exceptions.dart';
import 'package:mr_orange_store/utils/exceptions/firebase_exceptions.dart';
import 'package:mr_orange_store/utils/exceptions/platform_exceptions.dart';

class BannerRepository extends GetxController {
  static BannerRepository get instance => Get.find();
  final _db = FirebaseFirestore.instance;
  Future<List<BannerModel>> fetchBanners() async {
    try {
      final result = await _db
          .collection('Banners')
          .where('active', isEqualTo: true)
          .get();
      return result.docs
          .map(
              (documentSnapshot) => BannerModel.fromSnapshoot(documentSnapshot))
          .toList();
    } on TFirebaseException catch (e) {
      throw TFirebaseAuthException(e.code).message;
    } on PlatformException catch (e) {
      throw TPlatformException(e.code).message;
    } catch (e) {
      throw 'Something went wrong. Please try again';
    }
  }
}
