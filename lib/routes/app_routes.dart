import 'package:get/get.dart';
import 'package:mr_orange_store/features/authentication/screens/login/login_screen.dart';
import 'package:mr_orange_store/features/authentication/screens/onboarding/onboarding.dart';
import 'package:mr_orange_store/features/authentication/screens/password_configuration/forget_password.dart';
import 'package:mr_orange_store/features/authentication/screens/signup/signup.dart';
import 'package:mr_orange_store/features/authentication/screens/signup/verify_email.dart';
import 'package:mr_orange_store/features/pesonalization/screens/address/address.dart';
import 'package:mr_orange_store/features/pesonalization/screens/profile/widgets/profile.dart';
import 'package:mr_orange_store/features/pesonalization/screens/settings/settings.dart';
import 'package:mr_orange_store/features/shop/order/order.dart';
import 'package:mr_orange_store/features/shop/screens/card/card.dart';
import 'package:mr_orange_store/features/shop/screens/checkout/checkout.dart';
import 'package:mr_orange_store/features/shop/screens/home/home.dart';
import 'package:mr_orange_store/features/shop/screens/product_reviews/product_reviews.dart';
import 'package:mr_orange_store/features/shop/screens/store/store.dart';
import 'package:mr_orange_store/features/shop/screens/wishlist/wishlist.dart';
import 'package:mr_orange_store/routes/routes.dart';

class AppRoutes {
  static final pages = [
    GetPage(name: Routes.home, page: () => const HomeScreen()),
    GetPage(name: Routes.store, page: () => const StoreScreen()),
    GetPage(name: Routes.favourites, page: () => const WishlistScreen()),
    GetPage(name: Routes.settings, page: () => const SettingsScreen()),
    GetPage(
        name: Routes.productReviews, page: () => const ProductReviewsScreen()),
    GetPage(name: Routes.order, page: () => const OrderScreen()),
    GetPage(name: Routes.checkout, page: () => const CheckoutScreen()),
    GetPage(name: Routes.card, page: () => const CartScreen()),
    GetPage(name: Routes.userProfile, page: () => const ProfileScreen()),
    GetPage(name: Routes.userAddress, page: () => const UserAddressScreen()),
    GetPage(name: Routes.signup, page: () => const SignupScreen()),
    GetPage(name: Routes.verifyEmail, page: () => const VerifyEmailScreen()),
    GetPage(name: Routes.signIn, page: () => const LoginScreen()),
    GetPage(name: Routes.forgetPassword, page: () => const ForgetPassword()),
    GetPage(name: Routes.onBoarding, page: () => const OnBoardingScreen()),
  ];
}
