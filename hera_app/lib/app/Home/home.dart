import 'package:flutter/material.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hera_app/screens/Home/tabs/addpost/addposttab.dart';
import 'package:hera_app/screens/Home/tabs/homepage.dart';
import 'package:hera_app/screens/Home/tabs/notification.dart';
import 'package:hera_app/app/Home/tabs/profile.dart';
import 'package:hera_app/screens/Home/tabs/search.dart';
import 'package:hera_app/themes/styles.dart';

class Home extends StatefulWidget {
  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> with TickerProviderStateMixin {
  TabController tabController;

  @override
  void initState() {
    super.initState();
    tabController = TabController(length: 4, vsync: this, initialIndex: 3);
    tabController.addListener(_handleTabSelection);
  }

  void _handleTabSelection() {
    setState(() {});
  }

  @override
  void dispose() {
    tabController.dispose();
    super.dispose();
  }

  int currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: GFTabBarView(
        controller: tabController,
        children: <Widget>[
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
            child: Profile(),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(),
        onPressed: () {
          Navigator.push(
            context,
            MaterialPageRoute(builder: (context) => AddPost()),
          );
        },
        backgroundColor: Color(0xFF00BCD4),
        child: Image.asset(
          'assets/icons/addicon.png',
          color: Colors.white,
          width: 30,
          height: 28,
        ),
      ),
      bottomNavigationBar: Container(
        height: 83,
        decoration: BoxDecoration(boxShadow: [BoxShadow(color: Colors.black.withOpacity(0.29), blurRadius: 1)]),
        child: new BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: GFTabBar(
            // initialIndex: currentIndex,
            length: 4,
            controller: tabController,
            tabs: [
              Tab(
                child: Image.asset('assets/icons/home.png',
                    width: 28, height: 28, color: tabController.index == 0 ? secondary : secondary.withOpacity(0.3)),
              ),
              Tab(
                child: Image.asset('assets/icons/search.png',
                    width: 28, height: 28, color: tabController.index == 1 ? secondary : secondary.withOpacity(0.3)),
              ),
              Tab(
                child: Image.asset('assets/icons/fav.png',
                    width: 28, height: 28, color: tabController.index == 2 ? secondary : secondary.withOpacity(0.3)),
              ),
              Tab(
                child: Image.asset('assets/icons/profile.png',
                    width: 28, height: 28, color: tabController.index == 3 ? secondary : secondary.withOpacity(0.3)),
              ),
            ],
            indicatorColor: Colors.transparent,
            // labelColor: primary,
            labelPadding: EdgeInsets.all(0),
            tabBarColor: Colors.white,
            // unselectedLabelColor: Colors.white,
            labelStyle: TextStyle(color: Colors.red),

            unselectedLabelStyle: TextStyle(color: primary),
          ),
        ),
      ),
    );
  }
}
