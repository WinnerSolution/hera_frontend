import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:getwidget/getwidget.dart';
import 'package:hera_app/app/Forms/PostForm/PostForm.dart';
import 'package:hera_app/app/Tabs/FeedPage/FeedPage.dart';
import 'package:hera_app/app/Tabs/ProfilePage/ProfilePage.dart';
import 'package:hera_app/app/Tabs/Search/search.dart';
import 'package:hera_app/app/Tabs/notification.dart';
import 'package:hera_app/controllers/AppController.dart';
import 'package:hera_app/themes/styles.dart';
import 'package:hera_core/hera_core.dart';
import 'package:softi_common/core.dart';

class HomeController extends BaseViewController with SingleGetTickerProviderMixin {
  TabController tabController;
  RxInt currentIndex = 0.obs;

  void _handleTabSelection() {
    currentIndex(0);
  }

  @override
  Future<void> onViewInit() async {
    tabController = TabController(length: 4, vsync: this, initialIndex: 0);
    tabController.addListener(_handleTabSelection);
  }

  @override
  Future<void> onViewClose() async {
    tabController.dispose();
  }

  void handleAddPostOnPressed() {
    Get.to(() => PostForm(post: TPost(createdBy: AppController.find.user().getId())));
  }
}

class Home extends BaseView<HomeController> {
  //   @override
  //   _HomeState createState() => _HomeState();
  // }

  // class _HomeState extends State<Home> with TickerProviderStateMixin {
  // @override
  // void initState() {
  //   super.initState();
  // }

  // @override
  // void dispose() {
  //   tabController.dispose();
  //   super.dispose();
  // }

  @override
  HomeController init() => HomeController();

  @override
  Widget builder(HomeController controller) {
    print(controller.currentIndex());
    return Scaffold(
      floatingActionButtonLocation: FloatingActionButtonLocation.centerDocked,
      body: Column(
        children: [
          Expanded(
            child: GFTabBarView(
              controller: controller.tabController,
              children: <Widget>[
                Container(
                  color: Colors.white,
                  child: FeedPage(),
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
                  child: ProfilePage(AppController.find.user().id),
                ),
              ],
            ),
          ),
          // Obx(
          //   () {
          //     return AnimatedContainer(
          //       duration: 2000.milliseconds,
          //       curve: Curves.ease,
          //       height: AppController.find.connectivityType() == ConnectivityType.none //
          //           ? 0
          //           : 50,
          //       child: 'Your are on line'.caption.make(),
          //     );
          //   },
          // ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        shape: StadiumBorder(),
        onPressed: controller.handleAddPostOnPressed,
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
        child: BottomAppBar(
          shape: CircularNotchedRectangle(),
          child: GFTabBar(
            // initialIndex: controller.currentIndex,
            // isScrollable: controller.currentIndex() == 0,
            length: 4,
            controller: controller.tabController,
            tabs: [
              Tab(
                child: Image.asset('assets/icons/home.png',
                    width: 28,
                    height: 28,
                    color: controller.tabController.index == 0 ? secondary : secondary.withOpacity(0.3)),
              ),
              Tab(
                child: Image.asset('assets/icons/search.png',
                    width: 28,
                    height: 28,
                    color: controller.tabController.index == 1 ? secondary : secondary.withOpacity(0.3)),
              ),
              Tab(
                child: Image.asset('assets/icons/fav.png',
                    width: 28,
                    height: 28,
                    color: controller.tabController.index == 2 ? secondary : secondary.withOpacity(0.3)),
              ),
              Tab(
                child: Image.asset('assets/icons/profile.png',
                    width: 28,
                    height: 28,
                    color: controller.tabController.index == 3 ? secondary : secondary.withOpacity(0.3)),
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
