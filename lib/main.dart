import 'package:cloid_app/app/core/theme/theme_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import 'app/routes/app_pages.dart';

void main() {
  runApp(
    GetMaterialApp(
      title: "Cloid",
      initialRoute: AppPages.INITIAL,
      getPages: AppPages.routes,
      theme: ThemeData(
        fontFamily: primaryFont,
        primaryColor: Color(0xFF333333),
      ),
    ),
  );
}
