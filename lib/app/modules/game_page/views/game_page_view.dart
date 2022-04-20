import 'package:cloid_app/app/core/theme/theme_color.dart';
import 'package:cloid_app/app/global_widget/lang_bottom_sheet.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/game_page_controller.dart';

class GamePageView extends GetView<GamePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Text(
          'GamePageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
