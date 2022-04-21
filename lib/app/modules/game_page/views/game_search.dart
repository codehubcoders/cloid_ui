import 'package:cloid_app/app/modules/game_page/controllers/game_page_controller.dart';
import 'package:cloid_app/app/modules/game_page/views/search_tab_main.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../core/theme/theme_color.dart';

class GameSearchView extends GetView<GamePageController> {
  @override
  Widget build(BuildContext context) {
    final _ = Get.find<GamePageController>();
    return Scaffold(
      appBar: AppBar(
          elevation: 0,
          backgroundColor: fff,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back_ios,
              color: fontColor,
            ),
            onPressed: () {
              Get.back();
            },
          ),
          title: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(
                '게임 검색',
                style: TextStyle(color: fontColor, fontWeight: FontWeight.w700),
              ),
              Row(
                children: [
                  Image.asset(
                    'assets/images/logo_coin.png',
                    scale: 11,
                  ),
                  Text(
                    ' 12,500 CLD',
                    style: TextStyle(color: fontColor, fontSize: 15),
                  )
                ],
              )
            ],
          )),
      backgroundColor: fff,
      body: SafeArea(
        child: DefaultTabController(
          length: 5,
          initialIndex: 0,
          child: Column(
            children: [
              SizedBox(height: Get.height * 0.02),
              Container(
                margin: EdgeInsets.only(left: 20, right: 20),
                decoration: BoxDecoration(
                    color: grayBgF5, borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: '앱을 검색하세요',
                      hintStyle: TextStyle(color: gray00, fontSize: 17),
                      border: InputBorder.none,
                      icon: Padding(
                          padding: EdgeInsets.only(left: 13),
                          child: Icon(
                            Icons.search,
                            color: gray00,
                          ))),
                ),
              ),
              SizedBox(height: Get.height * 0.01),
              Material(
                color: fff,
                child: TabBar(
                  controller: _.gameTabController,
                  indicatorSize: TabBarIndicatorSize.label,
                  indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(color: primaryColor, width: 3.0),
                  ),
                  tabs: [
                    Tab(text: '  추천  '),
                    Tab(text: '  인기  '),
                    Tab(text: '  신규  '),
                    Tab(text: '  유료  '),
                    Tab(text: '  마켓  '),
                  ],
                  labelColor: primaryColor,
                  labelStyle:
                      TextStyle(fontWeight: FontWeight.w600, fontSize: 16),
                  unselectedLabelColor: grayColor7,
                ),
              ),
              Expanded(
                  child: TabBarView(
                controller: _.gameTabController,
                children: [
                  SearchBarMain(),
                  SearchBarMain(),
                  SearchBarMain(),
                  SearchBarMain(),
                  SearchBarMain(),
                ],
              ))
            ],
          ),
        ),
      ),
    );
  }
}
