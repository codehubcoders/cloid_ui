import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/setting_page_controller.dart';

class SettingPageView extends GetView<SettingPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('SettingPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'SettingPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
