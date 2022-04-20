import 'package:get/get.dart';

import '../modules/bottom_navi/bindings/bottom_navi_binding.dart';
import '../modules/bottom_navi/views/bottom_navi_view.dart';
import '../modules/game_page/bindings/game_page_binding.dart';
import '../modules/game_page/views/game_page_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/metaverse_page/bindings/metaverse_page_binding.dart';
import '../modules/metaverse_page/views/metaverse_page_view.dart';
import '../modules/nft_page/bindings/nft_page_binding.dart';
import '../modules/nft_page/views/nft_page_view.dart';
import '../modules/setting_page/bindings/setting_page_binding.dart';
import '../modules/setting_page/views/setting_page_view.dart';
import '../modules/sing_in/bindings/sing_in_binding.dart';
import '../modules/sing_in/views/sing_in_view.dart';
import '../modules/wallet_page/bindings/wallet_page_binding.dart';
import '../modules/wallet_page/views/wallet_page_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SING_IN;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.SING_IN,
      page: () => SingInView(),
      binding: SingInBinding(),
    ),
    GetPage(
      name: _Paths.GAME_PAGE,
      page: () => GamePageView(),
      binding: GamePageBinding(),
    ),
    GetPage(
      name: _Paths.BOTTOM_NAVI,
      page: () => BottomNaviView(),
      binding: BottomNaviBinding(),
    ),
    GetPage(
      name: _Paths.NFT_PAGE,
      page: () => NftPageView(),
      binding: NftPageBinding(),
    ),
    GetPage(
      name: _Paths.METAVERSE_PAGE,
      page: () => MetaversePageView(),
      binding: MetaversePageBinding(),
    ),
    GetPage(
      name: _Paths.WALLET_PAGE,
      page: () => WalletPageView(),
      binding: WalletPageBinding(),
    ),
    GetPage(
      name: _Paths.SETTING_PAGE,
      page: () => SettingPageView(),
      binding: SettingPageBinding(),
    ),
  ];
}
