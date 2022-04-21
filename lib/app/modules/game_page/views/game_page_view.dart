import 'package:cloid_app/app/core/theme/theme_color.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/game_page_controller.dart';

class GamePageView extends GetView<GamePageController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut(() => GamePageController());
    final _ = Get.find<GamePageController>();
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          margin: EdgeInsets.zero,
          width: Get.width * 1,
          height: Get.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/game_bg.png'),
                  fit: BoxFit.cover)),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: Get.height * 0.08),
              Image.asset(
                'assets/images/logo_text.png',
                scale: 20,
              ),
              SizedBox(height: Get.height * 0.02),
              Text(
                ' 지금 바로 플레이!',
                style: TextStyle(
                    color: fff.withOpacity(0.8),
                    fontSize: 16,
                    fontWeight: FontWeight.w600),
              ),
              SizedBox(height: Get.height * 0.04),
              Container(
                decoration: BoxDecoration(
                    color: fff.withOpacity(0.15),
                    borderRadius: BorderRadius.circular(10)),
                child: TextField(
                  style: TextStyle(color: fff),
                  keyboardType: TextInputType.text,
                  decoration: InputDecoration(
                      contentPadding: EdgeInsets.zero,
                      hintText: '앱을 검색하세요',
                      hintStyle:
                          TextStyle(color: fff.withOpacity(0.6), fontSize: 17),
                      border: InputBorder.none,
                      icon: Padding(
                          padding: EdgeInsets.only(left: 13),
                          child: Icon(
                            Icons.search,
                            color: fff.withOpacity(0.6),
                          ))),
                ),
              ),
              SizedBox(height: Get.height * 0.04),
              Expanded(
                child: GridView.builder(
                    itemCount: _.iconImg.length,
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 4, //1 개의 행에 보여줄 item 개수
                      childAspectRatio: 1 / 1.7, //item 의 가로 1, 세로 2 의 비율
                    ),
                    itemBuilder: (BuildContext context, int index) {
                      return InkWell(
                        onTap: () {},
                        child: Column(
                          children: [
                            Image.asset(
                              _.iconImg[index],
                              scale: 7.2,
                            ),
                            Container(
                              padding: EdgeInsets.only(top: 10),
                              child: Text(
                                _.iconTitle[index],
                                textAlign: TextAlign.center,
                                style: TextStyle(color: fff, fontSize: 13),
                              ),
                            ),
                          ],
                        ),
                      );
                    }),
              )
            ],
          ),
        ),
      ),
    );
  }
}
