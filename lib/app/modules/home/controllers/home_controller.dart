import 'package:flutter/material.dart';
import 'package:get/get.dart';

class HomeController extends GetxController {
  final List<String> gameImgUrl = [
    'assets/images/banner_1.png',
    'assets/images/banner_2.png',
    'assets/images/banner_1.png',
    'assets/images/banner_2.png'
  ];
  final List<String> nftImgUrl = [
    'assets/images/img-1.png',
    'assets/images/img.png',
    'assets/images/img-1.png',
    'assets/images/img.png',
  ];
  final gameController = PageController(viewportFraction: 0.95);
  final nftController = PageController(viewportFraction: 0.6);
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
