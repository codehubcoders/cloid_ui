import 'package:cloid_app/app/core/theme/theme_color.dart';
import 'package:cloid_app/app/global_widget/lang_bottom_sheet.dart';
import 'package:cloid_app/app/modules/game_page/views/game_page_view.dart';
import 'package:cloid_app/app/modules/home/views/home_view.dart';
import 'package:cloid_app/app/modules/metaverse_page/views/metaverse_page_view.dart';
import 'package:cloid_app/app/modules/nft_page/views/nft_page_view.dart';
import 'package:cloid_app/app/modules/wallet_page/views/wallet_page_view.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/bottom_navi_controller.dart';

class BottomNaviView extends GetView<BottomNaviController> {
  @override
  Widget build(BuildContext context) {
    Get.lazyPut<BottomNaviController>(() => BottomNaviController());
    return GetBuilder<BottomNaviController>(
      builder: (controller) {
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
                        'assets/images/ICO_SETTING.png',
                        width: 28,
                      ),
                    ),
                    SizedBox(width: 10),
                    InkWell(
                      onTap: () {
                        openBottomSheet();
                      },
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
          body: SafeArea(
            child: IndexedStack(
              index: controller.tabIndex,
              children: [
                HomeView(),
                GamePageView(),
                NftPageView(),
                MetaversePageView(),
                WalletPageView()
              ],
            ),
          ),
          bottomNavigationBar: SizedBox(
            height: 60,
            child: BottomNavigationBar(
              unselectedItemColor: grayColor7,
              selectedItemColor: primaryColor,
              selectedFontSize: 12,
              unselectedLabelStyle: TextStyle(color: grayColor7),
              unselectedFontSize: 12,
              onTap: controller.changeTabIndex,
              currentIndex: controller.tabIndex,
              showSelectedLabels: true,
              showUnselectedLabels: true,
              type: BottomNavigationBarType.fixed,
              backgroundColor: Colors.white,
              elevation: 5,
              items: [
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/ico_home_s.png',
                    width: 30,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/ico_home_s-1.png',
                    width: 30,
                  ),
                  label: 'Home',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/ico_game_g.png',
                    width: 30,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/ico_game_B.png',
                    width: 30,
                  ),
                  label: 'Game',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/ico_nft_g.png',
                    width: 30,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/ico_nft_b.png',
                    width: 30,
                  ),
                  label: 'NFT',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/ico_metaverse_g.png',
                    width: 30,
                  ),
                  activeIcon: Image.asset('assets/images/ico_metaverse_B.png',
                      width: 30),
                  label: 'Metaverse',
                ),
                BottomNavigationBarItem(
                  icon: Image.asset(
                    'assets/images/ico_wallet_g.png',
                    width: 30,
                  ),
                  activeIcon: Image.asset(
                    'assets/images/ico_wallet_B.png',
                    width: 30,
                  ),
                  label: 'Wallet',
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
