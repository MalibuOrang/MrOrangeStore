import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';
import 'package:mr_orange_store/data/repositories/user/user_repository.dart';
import 'package:mr_orange_store/features/authentication/models/user_model.dart';
import 'package:mr_orange_store/utils/popups/loaders.dart';

class UserController extends GetxController {
  static UserController get instance => Get.find();
  final userRepository = Get.put(UserRepository());
  Future<void> saveUserRecord(UserCredential? userCredential) async {
    try {
      if (userCredential != null) {
        final nameParts =
            UserModel.nameParts(userCredential.user!.displayName ?? '');
        final username =
            UserModel.generateUsername(userCredential.user!.displayName ?? '');
        final user = UserModel(
            id: userCredential.user!.uid,
            firstName: nameParts[0],
            lastName:
                nameParts.length > 1 ? nameParts.sublist(1).join(' ') : '',
            username: username,
            email: userCredential.user!.email ?? '',
            phoneNumber: userCredential.user!.phoneNumber ?? '',
            profilePicture: userCredential.user!.photoURL ?? '');
        await userRepository.saveUserRecord(user);
      }
    } catch (e) {
      TLoaders.warningSnackBar(
          title: 'Data not saved',
          message:
              'Something went wrong while saving your information. You can re-save your data in your Profile.');
    }
  }
}
