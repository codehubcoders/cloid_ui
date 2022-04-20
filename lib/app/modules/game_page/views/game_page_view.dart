import 'package:cloid_app/app/core/theme/theme_color.dart';
import 'package:cloid_app/app/global_widget/lang_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/game_page_controller.dart';

class GamePageView extends GetView<GamePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(left: 20, right: 20),
        margin: EdgeInsets.zero,
        width: Get.width * 1,
        height: Get.height,
        decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/game_bg.png'),
                fit: BoxFit.cover)),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: Get.height * 0.08),
            Image.asset(
              'assets/images/logo_text.png',
              scale: 15,
            ),
            SizedBox(height: Get.height * 0.02),
            Text(
              ' 지금 바로 플레이!',
              style: TextStyle(
                  color: fff.withOpacity(0.8),
                  fontSize: 18,
                  fontWeight: FontWeight.w600),
            ),
            TextField(
              keyboardType: TextInputType.text,
              decoration: InputDecoration(
                  hintText: '앱을 검색하세요',
                  border: InputBorder.none,
                  icon: Padding(
                      padding: EdgeInsets.only(left: 13),
                      child: Icon(Icons.search))),
            ),
          ],
        ),
      ),
    );
  }
}
