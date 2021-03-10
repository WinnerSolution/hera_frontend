import 'package:hera_admin/components/extensions/string_extentions.dart';
import 'package:flutter/material.dart';
import 'package:flutter_platform_widgets/flutter_platform_widgets.dart';
import 'package:velocity_x/velocity_x.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return PlatformTabScaffold(
      tabController: PlatformTabController(),
      appBarBuilder: (_, index) => PlatformAppBar(),
      bodyBuilder: (_, index) {
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
          child: FlutterLogo().p8().box.size(100, 100).make(),
        )
      ],
    );
  }
}
