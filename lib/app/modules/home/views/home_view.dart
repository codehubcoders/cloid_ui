import 'package:cloid_app/app/core/theme/theme_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  @override
  Widget build(BuildContext context) {
    final _ = Get.find<HomeController>();

    final gameImg = List.generate(
        _.gameImgUrl.length,
        ((index) => Container(
            height: 40 * 2 + 100.0,
            padding: EdgeInsets.only(left: 13),
            child: Image.asset(
              _.gameImgUrl[index],
            ))));

    final nftImg = List.generate(
        _.nftImgUrl.length,
        ((index) => Container(
              child: Container(
                padding: EdgeInsets.all(7),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      SizedBox(height: 5),
                      Center(
                        child: Image.asset(
                          _.nftImgUrl[index],
                          scale: 3,
                        ),
                      ),
                      SizedBox(height: 5),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text(
                            ' Cloaked Prayer',
                            style: TextStyle(fontWeight: FontWeight.w700),
                          ),
                          Row(
                            children: [
                              Image.asset(
                                'assets/images/logo02.png',
                                scale: 25,
                              ),
                              SizedBox(width: 5),
                              Text(
                                '150 CLD  ',
                                style:
                                    TextStyle(color: primarySub, fontSize: 12),
                              ),
                            ],
                          ),
                        ],
                      ),
                      SizedBox(height: 5),
                      Text(
                        ' Alice Phillips',
                        style: TextStyle(color: gray00, fontSize: 12),
                      ),
                    ]),
              ),
            )));
    return Scaffold(
      backgroundColor: fff,
      appBar: AppBar(
        automaticallyImplyLeading: false,
        toolbarHeight: 60,
        elevation: 0,
        backgroundColor: fff,
        title: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/logo01.png',
              width: 80,
            ),
            Row(
              children: [
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/ico_link.png',
                    width: 30,
                  ),
                ),
                SizedBox(width: 10),
                InkWell(
                  onTap: () {},
                  child: Image.asset(
                    'assets/images/ico_globe.png',
                    width: 30,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: [
            Container(
              margin: EdgeInsets.all(20),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.start,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    '12,500 CLD',
                    textScaleFactor: 2.3,
                    style: TextStyle(fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10),
                  RichText(
                      text: TextSpan(
                          style: TextStyle(
                            fontSize: 15,
                          ),
                          children: [
                        TextSpan(
                          text: '￦ 12,500,000',
                          style: TextStyle(
                              color: Color(0xFF333333),
                              fontWeight: FontWeight.w700),
                        ),
                        TextSpan(
                            text: ' (1CLD = ￦1,000)',
                            style: TextStyle(
                              color: grayColor7,
                            )),
                      ])),
                  Container(
                    margin: EdgeInsets.only(top: 20),
                    decoration: BoxDecoration(
                      color: primaryColor,
                      borderRadius: BorderRadius.circular(20),
                      boxShadow: [
                        BoxShadow(
                          color: Colors.grey.withOpacity(0.5),
                          spreadRadius: 1,
                          blurRadius: 7,
                          offset: Offset(0, 3), // changes position of shadow
                        ),
                      ],
                    ),
                    padding: EdgeInsets.fromLTRB(30, 15, 30, 15),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/ico_game_w.png',
                                  width: 40,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Game',
                                  style: TextStyle(
                                    color: fff,
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/ico_nft.png',
                                  width: 40,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'NFT',
                                  style: TextStyle(
                                    color: fff,
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/ico_metaverse.png',
                                  width: 40,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Metaverse',
                                  style: TextStyle(
                                    color: fff,
                                  ),
                                )
                              ],
                            ),
                          ),
                          InkWell(
                            onTap: () {},
                            child: Column(
                              children: [
                                Image.asset(
                                  'assets/images/ico_wallet.png',
                                  width: 40,
                                ),
                                SizedBox(height: 10),
                                Text(
                                  'Wallet',
                                  style: TextStyle(
                                    color: fff,
                                  ),
                                )
                              ],
                            ),
                          ),
                        ]),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(30, 20, 50, 10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/logo_g.png',
                              width: 15,
                            ),
                            SizedBox(width: 5),
                            Text(
                              ' 12,500 CLD',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/ico_game.png',
                              width: 33,
                            ),
                            SizedBox(width: 5),
                            Text(
                              'Game 15',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  Container(
                    margin: EdgeInsets.fromLTRB(22, 0, 50, 0),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/ico_doc.png',
                              width: 30,
                            ),
                            Text(
                              ' Collected 6',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Image.asset(
                              'assets/images/ico_game use copy.png',
                              width: 30,
                            ),
                            SizedBox(width: 5),
                            Text(
                              ' Offers 2',
                              style: TextStyle(
                                  fontSize: 16, fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
            Container(
              padding: EdgeInsets.fromLTRB(20, 35, 20, 20),
              color: grayBgF5,
              width: Get.width,
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Hot Games!',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  Container(
                    height: 150,
                    child: PageView.builder(
                      controller: _.gameController,
                      padEnds: false,
                      itemCount: gameImg.length,
                      itemBuilder: (_, index) {
                        return gameImg[index % gameImg.length];
                      },
                    ),
                  ),
                  Center(
                    child: SmoothPageIndicator(
                      controller: _.gameController,
                      count: gameImg.length,
                      effect: ExpandingDotsEffect(
                        dotHeight: 7,
                        dotWidth: 7,
                        activeDotColor: fontColor,
                      ),
                    ),
                  ),
                  SizedBox(height: 40),
                  Text(
                    'Discover and sell extraordinary NFTs',
                    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w700),
                  ),
                  SizedBox(height: 10),
                  SizedBox(
                    height: 180,
                    child: PageView.builder(
                      padEnds: false,
                      controller: _.nftController,
                      itemCount: nftImg.length,
                      itemBuilder: (_, index) {
                        return nftImg[index];
                      },
                    ),
                  ),
                  SizedBox(height: 5),
                  Center(
                    child: SmoothPageIndicator(
                      controller: _.nftController,
                      count: nftImg.length,
                      effect: ExpandingDotsEffect(
                        dotHeight: 7,
                        dotWidth: 7,
                        activeDotColor: fontColor,
                      ),
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
