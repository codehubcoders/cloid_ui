import 'package:cloid_app/app/core/theme/theme_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../global_widget/global_button.dart';
import '../controllers/sing_in_controller.dart';

class SingInView extends GetView<SingInController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      bottomSheet: Container(
        margin: EdgeInsets.only(
            left: Get.width * 0.07, right: Get.width * 0.07, bottom: 30),
        child: GlobalButton(
          bgColor: primaryColor,
          onTap: () {
            Get.toNamed('/home');
          },
          size: Size(Get.width / 1, 50),
          title: 'Connect Wallet',
          fontColor: fff,
          fontSize: 18,
        ),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset(
              'assets/images/logo.png',
              width: 100,
            ),
            SizedBox(height: 30),
            Text(
              '지갑을 연결해 가입할 수 있습니다',
              style: TextStyle(fontSize: 17, color: grayColor7),
            ),
          ],
        ),
      ),
    );
  }
}
