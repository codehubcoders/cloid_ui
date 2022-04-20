import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/wallet_page_controller.dart';

class WalletPageView extends GetView<WalletPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('WalletPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'WalletPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
