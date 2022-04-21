import 'package:cloid_app/app/core/theme/theme_color.dart';
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
      body: Column(
        children: [
          Row(
            children: [
              Image.asset('assets/images/img_thum.png', scale: 6),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 2, horizontal: 5),
                    decoration: BoxDecoration(
                        color: primarySub,
                        borderRadius: BorderRadius.circular(5)),
                    child: Text(
                      'CLOID전용',
                      style: TextStyle(color: fff, fontWeight: FontWeight.bold),
                    ),
                  ),
                  Text(
                    'Space War:우주전쟁\n꺼지지 않는 불꽃',
                    style: TextStyle(fontSize: 25, fontWeight: FontWeight.w700),
                  ),
                  Row(
                    children: [
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/ico_user.png',
                            scale: 9,
                          ),
                          Text(
                            ' 100,000명 이용',
                            style: TextStyle(color: grayColor7),
                          )
                        ],
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 5),
                        height: 17,
                        decoration: BoxDecoration(
                            border:
                                Border(right: BorderSide(color: grayColor7))),
                      ),
                      Row(
                        children: [
                          Image.asset(
                            'assets/images/ico_all.png',
                            scale: 9,
                          ),
                          Text(
                            ' 전체이용가',
                            style: TextStyle(color: grayColor7),
                          )
                        ],
                      ),
                    ],
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }
}
