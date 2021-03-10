import 'package:hera_admin/app/Dashbord.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hera_admin/app/Home/HomePage.dart';
import 'package:hera_admin/app/Login/LoginPage.dart';
import 'package:hera_admin/controllers/app_controller.dart';

class AuthMiddleware extends GetMiddleware {
  @override
  RouteSettings redirect(String route) {
    if (AppState.find.user == null) return RouteSettings(name: Routes.login);
    return null;
  }
}

class Routes {
  static const String start = '/';
  static const String home = '/home';
  static const String login = '/login';

  // static const String social = '/social';
  // static const String registration = '/registration';
  // static const String verification = '/verification';

  //
  // static const String orderItemAccountPage = '/order_item_account';
  // static const String locationPage = '/location_page';
  // static const String accountPage = '/account_page';
  // static const String orderPage = '/order_page';
  // static const String orderInfoPage = '/orderinfo_page';
  // static const String tncPage = '/tnc_page';
  // static const String savedAddressesPage = '/saved_addresses_page';
  // static const String supportPage = '/support_page';
  // static const String walletPage = '/wallet_page';
  // static const String loginNavigator = '/login_navigator';
  // static const String chatPage = '/chat_page';
  // static const String insightPage = '/insight_page';
  // static const String storeProfile = '/store_profile';
  // static const String addItem = '/additem';
  // static const String editItem = '/edititem';
  // static const String items = '/items';
  // static const String addToBank = '/addtobank_page';
  // static const String review = '/reviews';
  // static const String setting = '/settings_page';
  // static const String track = '/track_order';
  // static const String itemInfo = '/item_info';

  static List<GetPage> get pages => [
        //
        GetPage(
          name: start,
          page: () => Dashbord(),
          // page: () => PlatformScaffold(
          //   body: PlatformCircularProgressIndicator(),
          // ),
          // middlewares: [AuthMiddleware()],
        ),

        //
        GetPage(
          name: home,
          page: () => HomePage(),
          middlewares: [AuthMiddleware()],
        ),

        //!
        GetPage(
          name: login,
          page: () => LoginPage(),
          // middlewares: [],
        ),
      ];
}
