import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:get/get.dart';
import 'package:hera_app/app.svg/Home/Home.page.controller.dart';
import 'package:hera_app/app/Pages/profile/profile.dart';
// import 'package:hera_app/app.svg/Profile/Profile.page.dart';
import 'package:hera_app/components/extensions/string_extentions.dart';
import 'package:hera_app/controllers/app_controller.dart';
import 'package:hera_app/screens/Home/tabs/notification.dart';
import 'package:hera_app/screens/Home/tabs/search.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  get con => Get.put(HomePageController());

  final list = <Widget>[
    Container(
      color: Colors.white,
      child: HomePage(),
    ),
    Container(
      color: Colors.white,
      child: Search(),
    ),
    Container(
      color: Colors.white,
      child: NotificationPage(),
    ),
    Container(
      color: Colors.white,
      child: Profile(AppState.find.user().id),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return PlatformTabScaffold(
      tabController: con.tabController,
      appBarBuilder: (_, index) => PlatformAppBar(
        backgroundColor: Colors.black,
      ),
      bodyBuilder: (_, index) {
        if (index == 2) {
          return Padding(
            padding: EdgeInsets.all(8),
            child: Container(),
          );
        }

        return Padding(
          padding: EdgeInsets.all(8),
          child: HomeTabView(),
        );
      },
      items: [
        BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
        BottomNavigationBarItem(icon: Icon(Icons.history), label: 'History'),
        BottomNavigationBarItem(icon: Icon(Icons.people_alt), label: 'Profile'),
      ],
      itemChanged: (index) {},
    );
  }
}

class HomeTabView extends StatelessWidget {
  @override
  Widget build(context) {
    return Column(
      children: [
        'Mairie du plateau'.headline3.make(),
        Card(
          child: FlutterLogo().p8().box.size(100, 100).make().onTap(() {
            AppState.find.authApi.signOut();
          }),
        )
      ],
    );
  }
}
