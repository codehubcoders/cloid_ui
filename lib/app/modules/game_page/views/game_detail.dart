import 'package:cloid_app/app/core/theme/theme_color.dart';
import 'package:cloid_app/app/global_widget/global_button.dart';
import 'package:cloid_app/app/modules/game_page/controllers/game_page_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class GameDetailView extends GetView<GamePageController> {
  @override
  Widget build(BuildContext context) {
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
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              padding: EdgeInsets.all(15),
              child: Row(
                children: [
                  Image.asset('assets/images/img_thum.png', scale: 6),
                  SizedBox(width: 15),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding:
                            EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                        decoration: BoxDecoration(
                            color: primarySub,
                            borderRadius: BorderRadius.circular(5)),
                        child: Text(
                          'CLOID전용',
                          style: TextStyle(
                              color: fff,
                              fontWeight: FontWeight.bold,
                              fontSize: 12),
                        ),
                      ),
                      Text(
                        'Space War : 우주전쟁\n꺼지지 않는 불꽃',
                        style: TextStyle(
                            fontSize: 23, fontWeight: FontWeight.w700),
                      ),
                      SizedBox(height: 10),
                      Row(
                        children: [
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/ico_user.png',
                                scale: 10,
                              ),
                              Text(
                                ' 100,000명 이용',
                                style:
                                    TextStyle(color: grayColor7, fontSize: 13),
                              )
                            ],
                          ),
                          Container(
                            margin: EdgeInsets.symmetric(horizontal: 10),
                            height: 17,
                            decoration: BoxDecoration(
                                border: Border(
                                    right: BorderSide(color: grayColor7))),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/ico_all.png',
                                scale: 23,
                              ),
                              Text(
                                ' 전체이용가',
                                style:
                                    TextStyle(color: grayColor7, fontSize: 13),
                              )
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(
                  'assets/images/logo06.png',
                  scale: 12,
                ),
                Text(
                  ' 유료 : 500 CLD',
                  style: TextStyle(color: primarySub, fontSize: 18),
                )
              ],
            ),
            SizedBox(height: 20),
            GlobalButton(
              bgColor: primaryColor,
              fontColor: fff,
              fontSize: 17,
              onTap: () {},
              size: Size(Get.width * 0.9, 55),
              title: '게임 이용 하기',
            ),
            SizedBox(height: 20),
            Stack(
              children: [
                Image.asset(
                  'assets/images/img_thum video.png',
                  width: Get.width * 0.9,
                ),
                Positioned(
                    top: 70,
                    left: 150,
                    child: Icon(
                      Icons.play_circle_fill,
                      color: fff.withOpacity(0.7),
                      size: 60,
                    ))
              ],
            ),
            SizedBox(height: 20),
            Container(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                children: [
                  Row(
                    children: [
                      Container(
                        width: 5,
                        height: 22,
                        decoration: BoxDecoration(
                            color: primaryColor,
                            borderRadius: BorderRadius.circular(10)),
                      ),
                      SizedBox(width: 10),
                      Text('게임 소개',
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.w700)),
                    ],
                  ),
                  SizedBox(height: 10),
                  Text(
                    '아스라히 둘 별 밤이 있습니다. 별 위에 별 잔디가 까닭입니다. 노새, 이 남은 있습니다. 다하지 별 나의 봅니다. 별 위에도 별빛이 별들을 헤는 새워 자랑처럼 슬퍼하는 거외다. 이름자를 이름을 나의 풀이 노루, 어머니, 릴케 이제 듯합니다. 나의 릴케 하나에 헤일 마디씩 가을 거외다.',
                    style: TextStyle(color: grayColor7),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
