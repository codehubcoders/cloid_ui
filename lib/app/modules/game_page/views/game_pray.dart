import 'package:cloid_app/app/modules/game_page/controllers/game_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get_state_manager/get_state_manager.dart';

class GamePrayView extends GetView<GamePageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('게임 검색')),
      body: Column(
        children: [],
      ),
    );
  }
}
