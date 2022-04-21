import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/metaverse_page_controller.dart';

class MetaversePageView extends GetView<MetaversePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'MetaversePageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
