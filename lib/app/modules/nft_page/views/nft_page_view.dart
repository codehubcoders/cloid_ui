import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/nft_page_controller.dart';

class NftPageView extends GetView<NftPageController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('NftPageView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'NftPageView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
