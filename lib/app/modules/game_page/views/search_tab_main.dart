import 'package:cloid_app/app/modules/game_page/views/game_detail.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../../core/theme/theme_color.dart';
import '../controllers/game_page_controller.dart';

class SearchBarMain extends GetView {
  @override
  Widget build(BuildContext context) {
    final _ = Get.find<GamePageController>();
    final iconList = List.generate(
        _.gameBanner.length,
        ((index) => Container(
            padding: EdgeInsets.only(left: 13),
            child: Image.asset(
              _.gameBanner[index],
            ))));
    return SingleChildScrollView(
      child: Column(children: [
        Container(
            padding: EdgeInsets.fromLTRB(0, 20, 0, 0),
            width: Get.width,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  height: 100,
                  child: PageView.builder(
                    controller: _.iconPageCtr,
                    padEnds: false,
                    itemCount: iconList.length,
                    itemBuilder: (_, index) {
                      return iconList[index % iconList.length];
                    },
                  ),
                ),
                Center(
                  child: SmoothPageIndicator(
                    controller: _.iconPageCtr,
                    count: iconList.length,
                    effect: ExpandingDotsEffect(
                      dotHeight: 7,
                      dotWidth: 7,
                      activeDotColor: fontColor,
                    ),
                  ),
                ),
                SizedBox(height: 40),
              ],
            )),
        Container(
          padding: EdgeInsets.only(left: 20, right: 20),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                width: 5,
                height: 22,
                decoration: BoxDecoration(
                    color: primaryColor,
                    borderRadius: BorderRadius.circular(10)),
              ),
              SizedBox(width: 10),
              Text('최근 신규 추천 게임',
                  style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700)),
            ],
          ),
        ),
        Container(
          padding: EdgeInsets.only(left: 10, right: 10, top: 20),
          child: GridView.builder(
              itemCount: _.iconImg.length,
              physics: NeverScrollableScrollPhysics(),
              shrinkWrap: true,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 3, //1 개의 행에 보여줄 item 개수
                childAspectRatio: 1 / 1.6, //item 의 가로 1, 세로 2 의 비율
              ),
              itemBuilder: (BuildContext context, int index) {
                return InkWell(
                  onTap: () {
                    Get.to(GameDetailView());
                  },
                  child: Column(
                    children: [
                      Image.asset(
                        _.iconImg[index],
                        scale: 5,
                      ),
                      Container(
                        alignment: Alignment.centerLeft,
                        padding: EdgeInsets.only(top: 7, left: 10),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              _.iconTitle[index],
                              textAlign: TextAlign.left,
                              style: TextStyle(fontSize: 13),
                            ),
                            SizedBox(height: 5),
                            Row(
                              children: [
                                Image.asset('assets/images/logo06.png',
                                    scale: 15),
                                SizedBox(width: 3),
                                Text(
                                  _.gameIconPrice[index],
                                  textAlign: TextAlign.left,
                                  style: TextStyle(
                                      fontSize: 15, color: primarySub),
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ],
                  ),
                );
              }),
        ),
      ]),
    );
  }
}
