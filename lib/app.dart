import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:mr_orange_store/bindings/general_bindings.dart';
import 'package:mr_orange_store/utils/constants/colors.dart';
import 'package:mr_orange_store/utils/theme/theme.dart';

class MrOrangeStore extends StatelessWidget {
  const MrOrangeStore({super.key});
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'MrOrange Store',
      themeMode: ThemeMode.system,
      theme: OAppTheme.lightTheme,
      darkTheme: OAppTheme.darkTheme,
      initialBinding: GeneralBindings(),
      home: const Scaffold(
        backgroundColor: TColors.primary,
        body: Center(
          child: CircularProgressIndicator(
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
