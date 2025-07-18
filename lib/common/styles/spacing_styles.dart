import 'package:flutter/material.dart';
import 'package:mr_orange_store/utils/constants/sizes.dart';

class TSpacingStyle {
  static const EdgeInsetsGeometry defaultPadding = EdgeInsets.only(
    top: OSizes.appBarHeight,
    left: OSizes.defaultSpace,
    bottom: OSizes.defaultSpace,
    right: OSizes.defaultSpace,
  );
  static const EdgeInsetsGeometry paddingWithAppBarHeight = EdgeInsets.only(
    top: OSizes.appBarHeight,
    left: OSizes.defaultSpace,
    bottom: OSizes.defaultSpace,
    right: OSizes.defaultSpace,
  );
}
