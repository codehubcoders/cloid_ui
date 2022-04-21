import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GamePageController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final List<String> iconImg = [
    "assets/images/icon.png",
    "assets/images/icon1.png",
    "assets/images/icon2.png",
    "assets/images/icon3.png",
    "assets/images/icon4.png",
    "assets/images/icon5.png",
    "assets/images/icon6.png",
    "assets/images/icon7.png",
  ];
  final List<String> iconTitle = [
    "Splinterlands",
    "Alien Worlds",
    "Elfin Kingdom",
    "Farmers World",
    "Crazy Defense Heroes",
    "Crypto Blades",
    "Dragon Valley",
    "Tiny World",
  ];
  final List<String> gameBanner = [
    "assets/images/banner_3.png",
    "assets/images/banner_3.png",
  ];
  final List<String> gameIconPrice = [
    "500 CLD",
    "120 CLD",
    "120 CLD",
    "120 CLD",
    "120 CLD",
    "500 CLD",
    "240 CLD",
    "500 CLD",
  ];
  TabController? gameTabController;
  final iconPageCtr = PageController(viewportFraction: 0.95);
  @override
  void onInit() {
    super.onInit();
    gameTabController = TabController(length: 5, vsync: this);
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
